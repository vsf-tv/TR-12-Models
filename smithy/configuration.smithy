$version: "2"

namespace com.cdd.configuration
use com.cdd.common#ChannelState
use com.cdd.common#Health
use com.cdd.common#IdAndValueList
use com.cdd.common#StringList

structure DeviceConfiguration {
    @required
    @length(max: 80)
    configurationId: String
    @required
    channels: ChannelConfigurationList
    standardSettings: IdAndValueList
    health: Health
}

list ChannelConfigurationList {
    member: ChannelConfiguration
}

structure ChannelConfiguration {
    @required
    id: String
    @required
    @length(max: 80)
    configurationId: String
    @required
    state: ChannelState
    settings: SettingsChoice
    connection: Connection
    health: Health
    /// Device-side only. Set by the application to indicate the local filesystem
    /// path to the thumbnail image for this channel. The host shall not set this
    /// field in desired configuration. The SDK reads this to resolve thumbnail
    /// subscriptions keyed by channelId.
    thumbnailLocalPath: String
}

union SettingsChoice {
    standardSettings: IdAndValueList
    profile: ChannelProfile
}

structure ChannelProfile {
    @required
    id: String
}

structure Connection {
    transportProtocol: TransportProtocol
}

@sensitive
@length(min: 32, max: 32)
@pattern("^[a-fA-F0-9]+$")
@documentation("A 32-character hexadecimal string.")
string Hex32

@sensitive
@length(min: 64, max: 64)
@pattern("^[a-fA-F0-9]+$")
@documentation("A 64-character hexadecimal string.")
string Hex64

structure EncryptionAes128 {
    @required
    passphrase: Hex32
}

structure EncryptionAes256 {
    @required
    passphrase: Hex64
}

union EncryptionAes {
    aes128: EncryptionAes128
    aes256: EncryptionAes256
}

union TransportProtocol {
    srtListener: SrtListenerTransportProtocol
    srtCaller: SrtCallerTransportProtocol
    ristSimpleListener: RistSimpleListenerTransportProtocol
    ristSimpleCaller: RistSimpleCallerTransportProtocol
    zixiPush: ZixiPushTransportProtocol
    zixiPull: ZixiPullTransportProtocol
    rtp: RtpTransportProtocol
}

structure SrtListenerTransportProtocol {
    streamId: String
    // 1024 is the floor — ports 0–1023 are well-known/system ports that require
    // root/admin privileges to bind on Linux/macOS. Device firmware typically runs
    // as a non-privileged user and cannot bind below 1024.
    @required
    @range(min: 1024, max: 65535)
    port: Integer
    @default(1000)
    minimumLatencyMilliseconds: Integer
    encryption: EncryptionAes
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
    encryption: EncryptionAes
}

// RIST Simple Profile (VSF TR-06-1) listener — binds a local UDP port and waits for the sender.
// Stream identification uses the RTP SSRC embedded in the packet header;
// no external streamId configuration is needed or supported in Simple Profile.
structure RistSimpleListenerTransportProtocol {
    // 1024 is the floor — ports 0–1023 require root/admin to bind locally.
    @required
    @range(min: 1024, max: 65535)
    port: Integer
    @default(1000)
    minimumLatencyMilliseconds: Integer
    encryption: EncryptionAes
    interface: String
}

// RIST Simple Profile (VSF TR-06-1) caller — initiates connection to a remote listener.
// Stream identification uses the RTP SSRC embedded in the packet header;
// no external streamId configuration is needed or supported in Simple Profile.
structure RistSimpleCallerTransportProtocol {
    @required
    address: String
    // No lower bound restriction — connecting to a remote port, not binding locally.
    @required
    @range(min: 1, max: 65535)
    port: Integer
    @default(1000)
    minimumLatencyMilliseconds: Integer
    encryption: EncryptionAes
}

// Zixi Push — sender initiates connection to the receiver's address:port.
// streamId identifies the stream on the receiver; optional if receiver accepts any stream.
// Default port 2088 is the Zixi industry standard used by AWS MediaConnect and all major Zixi deployments.
structure ZixiPushTransportProtocol {
    streamId: String
    @required
    address: String
    // No lower bound restriction — connecting to a remote receiver, not binding locally.
    @default(2088)
    @range(min: 1, max: 65535)
    port: Integer
    @default(1000)
    minimumLatencyMilliseconds: Integer
    encryption: EncryptionAes
}

// Zixi Pull — receiver initiates connection to pull from the sender's address:port.
// streamId selects a specific stream from the sender; optional if sender has only one.
// Default port 2088 is the Zixi industry standard used by AWS MediaConnect and all major Zixi deployments.
structure ZixiPullTransportProtocol {
    streamId: String
    @required
    address: String
    // 1024 is the floor — the receiving device binds a local port for incoming media,
    // which requires root/admin for ports below 1024.
    // This prevents a cloud user from prescribing ports the 
    @default(2088)
    @range(min: 1024, max: 65535)
    port: Integer
    @default(1000)
    minimumLatencyMilliseconds: Integer
    encryption: EncryptionAes
}

// RTP transport — covers unicast and multicast RTP streams including
// SMPTE ST 2022 multicast with optional SMPTE ST 2022-5 FEC.
structure RtpTransportProtocol {
    // Maps to the SDP 'c=' line (Connection Data) — unicast or multicast IP/address
    @required
    address: String
    // Maps to the SDP 'm=' line (Media Description) port.
    // 1024 is the floor — the device binds this port locally to receive incoming media,
    // which requires root/admin for ports below 1024.
    @required
    @range(min: 1024, max: 65535)
    port: Integer
    // Maps to 'a=source-filter' (IGMPv3 SSM source-specific multicast)
    sourceAddressFilter: String
    // Maps to the RTP/AVP payload type value in the SDP 'm=' line
    rtpPayloadType: Integer
    // Optional SMPTE ST 2022-5 FEC configuration
    fecConfig: RtpFecConfiguration
}

// SMPTE ST 2022-5 FEC stream descriptor.
structure RtpFecStreamConfig {
    // Multicast address for the out-of-band FEC stream
    address: String
    // UDP port for the out-of-band FEC stream.
    // 1024 is the floor — device binds this port locally to receive FEC packets.
    @range(min: 1024, max: 65535)
    port: Integer
    // RTP payload type for this FEC stream
    rtpPayloadType: Integer
}

// SMPTE ST 2022-5 FEC configuration.
structure RtpFecConfiguration {
    // 1D column FEC stream (always present when FEC is enabled)
    @required
    columnFec: RtpFecStreamConfig
    // 2D row FEC stream (optional — only used with row+column FEC)
    rowFec: RtpFecStreamConfig
    // FEC matrix column dimension (L)
    matrixColumns: Integer
    // FEC matrix row dimension (D)
    matrixRows: Integer
}
