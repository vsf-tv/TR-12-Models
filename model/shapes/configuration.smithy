$version: "2"

namespace com.tr12.configuration
use com.tr12.common#ChannelState
use com.tr12.common#IdAndValueList
use com.tr12.common#IdString

/// Desired device configuration — sent from host to device.
structure DesiredDeviceConfiguration {
    @required
    @length(max: 80)
    version: String
    @required
    channels: DesiredChannelConfigurationList
    // A device can only expose standardSettings.
    standardSettings: IdAndValueList
}

/// Actual device configuration — reported by device to host.
/// Extends desired fields with device-only reporting fields.
structure ActualDeviceConfiguration {
    @required
    @length(max: 80)
    version: String
    @required
    channels: ActualChannelConfigurationList
    // A device can only expose standardSettings.
    standardSettings: IdAndValueList
}

/// See limits.smithy: MAX_CHANNELS
@length(max: 50)
list DesiredChannelConfigurationList {
    member: DesiredChannelConfiguration
}

/// See limits.smithy: MAX_CHANNELS
@length(max: 50)
list ActualChannelConfigurationList {
    member: ActualChannelConfiguration
}

/// Desired channel configuration — sent from host to device.
structure DesiredChannelConfiguration {
    @required
    id: IdString
    @required
    @length(max: 80)
    version: String
    @required
    state: ChannelState
    // A channel can expose standardSettings and profiles
    channelSettings: ChannelSettings
    protocol: TransportProtocol
}

/// Actual channel configuration — reported by device to host.
/// Extends desired fields with device-only reporting fields.
structure ActualChannelConfiguration {
    @required
    id: IdString
    @required
    @length(max: 80)
    version: String
    @required
    state: ChannelState
    // A channel can expose standardSettings and profiles
    channelSettings: ChannelSettings
    protocol: TransportProtocol
    /// Local filesystem path to the channel's current thumbnail image.
    thumbnailLocalPath: String
}

union ChannelSettings {
    standardSettings: IdAndValueList
    profile: ChannelProfile
}

structure ChannelProfile {
    @required
    id: IdString
}

// ─── Encryption ─────────────────────────────────────────────────────────────
//
// SRT, RIST, and Zixi use a plain-text passphrase (not a raw AES key).
// The key length (AES-128/192/256) is a separate configuration that controls
// the strength of the encryption, independent of passphrase length.

@sensitive
@length(min: 1, max: 80)
string Passphrase

/// SRT encryption passphrase. 10-80 characters per the SRT protocol specification.
@sensitive
@length(min: 10, max: 80)
string SrtPassphrase

/// SRT encryption configuration.
structure SrtEncryption {
    @required
    passphrase: SrtPassphrase

    /// Optional. If omitted, the device determines the key length.
    keyLength: SrtEncryptionKeyLength
}

enum SrtEncryptionKeyLength {
    AES_128
    AES_192
    AES_256
}

/// Zixi encryption configuration.
structure ZixiEncryption {
    @required
    passphrase: Passphrase

    /// Optional. If omitted, the device uses its own default.
    keyLength: ZixiEncryptionKeyLength
}

enum ZixiEncryptionKeyLength {
    AES_128
    AES_192
    AES_256
}

/// Available transport protocol configurations for a channel.
union TransportProtocol {
    srtListener: SrtListenerTransportProtocol
    srtCaller: SrtCallerTransportProtocol
    ristSimpleReceiver: RistSimpleReceiverTransportProtocol
    ristSimpleSender: RistSimpleSenderTransportProtocol
    /// Zixi Push Sender: device is the sender, initiates connection to the receiver.
    zixiPushSender: ZixiPushSenderTransportProtocol
    /// Zixi Push Receiver: device is the receiver, initiates connection to the sender.
    zixiPushReceiver: ZixiPushReceiverTransportProtocol
    /// Zixi Pull Sender: device is the sender, listens for incoming pull requests.
    zixiPullSender: ZixiPullSenderTransportProtocol
    /// Zixi Pull Receiver: device is the receiver, initiates connection to pull from sender.
    zixiPullReceiver: ZixiPullReceiverTransportProtocol
    rtp: RtpTransportProtocol
}

structure SrtListenerTransportProtocol {
    streamId: String
    // Ports 0-1023 are reserved system ports requiring elevated privileges to bind.
    @required
    @range(min: 1024, max: 65535)
    port: Integer
    @default(1000)
    minimumLatencyMilliseconds: Integer
    encryption: SrtEncryption
    interface: String
}

structure SrtCallerTransportProtocol {
    streamId: String
    @required
    address: String
    // No lower bound restriction — the caller connects to a remote port, not binding locally.
    // Well-known ports (e.g. 443, 80) are valid targets for firewall traversal.
    @required
    @range(min: 1, max: 65535)
    port: Integer
    @default(1000)
    minimumLatencyMilliseconds: Integer
    encryption: SrtEncryption
}

/// RIST Simple Profile (VSF TR-06-1) receiver — binds a local UDP port and waits for the sender.
structure RistSimpleReceiverTransportProtocol {
    @required
    @range(min: 1024, max: 65535)
    port: Integer
    @default(1000)
    minimumLatencyMilliseconds: Integer
    interface: String
}

/// RIST Simple Profile (VSF TR-06-1) sender — initiates connection to a remote receiver.
structure RistSimpleSenderTransportProtocol {
    @required
    address: String
    @required
    @range(min: 1, max: 65535)
    port: Integer
    @default(1000)
    minimumLatencyMilliseconds: Integer
}

// ─── Zixi Transport Protocol ────────────────────────────────────────────────
//
// Zixi has two independent axes:
//   1. Media direction: Sender (has content) vs Receiver (wants content)
//   2. Connection direction: Push (I connect to you) vs Pull (you connect to me)
//
// This yields 4 combinations. Fields differ by connection direction:
//   - Push (caller): needs remote address:port, streamId optional
//   - Pull sender (listener): needs listen port + streamId to identify served stream
//   - Pull receiver (caller): needs remote address:port + streamId to request stream

@mixin
structure ZixiCommonFields {
    @default(1000)
    maximumLatencyMilliseconds: Integer
    encryption: ZixiEncryption
}

/// Zixi Push Sender — device has content and connects OUT to deliver it.
/// Push = sender initiates connection. Device needs remote address:port.
structure ZixiPushSenderTransportProtocol with [ZixiCommonFields] {
    streamId: String
    @required
    address: String
    @default(2088)
    @range(min: 1, max: 65535)
    port: Integer
}

/// Zixi Push Receiver — device wants content and listens for the sender to connect IN.
/// Push = sender initiates connection. Device listens on a local port.
structure ZixiPushReceiverTransportProtocol with [ZixiCommonFields] {
    streamId: String
    @required
    @range(min: 1024, max: 65535)
    port: Integer
    interface: String
}

/// Zixi Pull Sender — device has content and listens for receivers to connect IN and pull.
/// Pull = receiver initiates connection. Device listens on a local port.
structure ZixiPullSenderTransportProtocol with [ZixiCommonFields] {
    @required
    streamId: String
    @required
    @range(min: 1024, max: 65535)
    port: Integer
    interface: String
}

/// Zixi Pull Receiver — device wants content and connects OUT to pull from the sender.
/// Pull = receiver initiates connection. Device needs remote address:port.
structure ZixiPullReceiverTransportProtocol with [ZixiCommonFields] {
    @required
    streamId: String
    @required
    address: String
    @default(2088)
    @range(min: 1, max: 65535)
    port: Integer
}

/// RTP transport — unicast and multicast RTP streams including SMPTE ST 2022.
structure RtpTransportProtocol {
    /// Unicast or multicast IP address. Maps to the SDP 'c=' line (Connection Data).
    @required
    address: String
    /// UDP port. Maps to the SDP 'm=' line (Media Description) port.
    /// 1024 is the floor — device binds this port locally to receive incoming media.
    @required
    @range(min: 1024, max: 65535)
    port: Integer
    /// IGMPv3 SSM source-specific multicast filter. Maps to SDP 'a=source-filter'.
    sourceAddressFilter: String
}
