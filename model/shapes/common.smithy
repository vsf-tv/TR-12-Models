$version: "2"

namespace com.tr12.common

// Protocol version follows semantic versioning (MAJOR.MINOR.PATCH):
//   MAJOR — breaking change: removed/renamed field, type change, removed enum value,
//            new required field, handshake change. Old clients/servers will fail.
//   MINOR — additive, backwards compatible: new optional field, new enum value,
//            new operation, new transport protocol variant. Old code ignores unknowns.
//   PATCH — no wire format change: documentation, comments, shape renames only.
//
// The host rejects pairing if the device MAJOR or MINOR version exceeds the host's.
// Locking the model at Final is the most important compatibility gate — every change
// after that must be evaluated against the above rules before bumping the version.
structure ProtocolVersion {
    @default("8.0.0")
    version: String
}

enum ChannelState {
    ACTIVE
    IDLE
}

enum ChannelType {
    SOURCE
    DESTINATION
}

enum DeviceType {
    SOURCE
    DESTINATION
    BOTH
}

list DeviceTypeList {
    member: DeviceType
}

enum PairingCodeAuthorizedStatus {
    STANDBY
    CLAIMED
}

enum TransportProtocolName {
    SRT_LISTENER
    SRT_CALLER
    ZIXI_PUSH_SENDER
    ZIXI_PULL_SENDER
    ZIXI_PUSH_RECEIVER
    ZIXI_PULL_RECEIVER
    RIST_SIMPLE_SENDER
    RIST_SIMPLE_RECEIVER
    RTP
}

structure IdAndValue {
    @required
    id: IdString
    @required
    value: String
}

/// See limits.smithy: MAX_SETTINGS_PER_SCOPE
@length(max: 50)
list IdAndValueList {
    member: IdAndValue
}

// These will likely be exposed in the TR12 host's UI as a pull-down
@length(max: 15)
list EnumValuesStringList {
    member: String
}

@sensitive
string SensitiveString

/// A PEM-encoded certificate signing request. Treated as sensitive.
@sensitive
string SensitiveCsr

// The TLS ALPN (Application Layer Protocol Negotiation) protocol name the device sends
// in the TLS ClientHello when connecting to the MQTT broker on port 443. The host sets
// this field and the device passes it through verbatim — the device has no knowledge of
// the broker implementation.
//
// Different brokers have different requirements:
//   "x-amzn-mqtt-ca" — Required by AWS IoT Core to select MQTT with X.509 cert auth on
//                      port 443. IoT Core uses ALPN to disambiguate multiple auth modes
//                      on the same port. Also accepted by other brokers (e.g. Mochi MQTT)
//                      that don't enforce ALPN but tolerate any value.
//   "mqtt"           — Standard ALPN name used by HiveMQ, EMQX, VerneMQ and other brokers
//                      for MQTT over port 443.
//   (broker-specific) — Azure IoT Hub and others may require their own ALPN strings.
//
// For connections on port 8883, no ALPN extension is needed and this field is ignored.

structure HostSettings {
    @required
    mqttAlpnProtocol: String
    @required
    pairingTimeoutSeconds: Integer
    @required
    minimumIntervalPublishSeconds: Integer
    @required
    mqttKeepaliveSeconds: Integer
    /// Device subscribes — host publishes desired configuration to this topic.
    @required
    deviceSubscribesToDesiredConfigurationTopic: String
    /// Device subscribes — host publishes thumbnail subscription requests to this topic.
    @required
    deviceSubscribesToThumbnailSubscriptionTopic: String
    /// Device publishes — device reports its registration to this topic on connect.
    @required
    devicePublishesRegistrationTopic: String
    /// Device publishes — device reports its current status to this topic.
    @required
    devicePublishesStatusTopic: String
    /// Device publishes — device reports its actual applied configuration to this topic.
    @required
    devicePublishesActualConfigurationTopic: String
    /// Device subscribes — host publishes new certificates to this topic.
    @required
    deviceSubscribesToCertificateRotationTopic: String
    /// Device publishes — device acknowledges deprovision by publishing to this topic.
    @required
    devicePublishesDeprovisionAcknowledgementTopic: String
    /// Device subscribes — host publishes deprovision command to this topic.
    @required
    deviceSubscribesToDeprovisionTopic: String
    /// Device subscribes — host publishes log upload requests to this topic.
    @required
    deviceSubscribesToLogSubscriptionTopic: String
}

structure CreatePairingCodeRequest {
    @required
    deviceType: DeviceType
    @required
    hostId: String
    @required
    certificateSigningRequest: SensitiveCsr
    @required
    version: ProtocolVersion
}

enum CreatePairingCodeFailureReason {
    HOST_ID_MISMATCH
    VERSION_NOT_SUPPORTED
    DEVICE_TYPE_NOT_SUPPORTED
}

/// Returned as HTTP 400 when CreatePairingCode is rejected.
/// The reason field identifies the specific failure — the client
/// should log a descriptive message based on the reason value.
@error("client")
@httpError(400)
structure CreatePairingCodeException {
    @required
    reason: CreatePairingCodeFailureReason
}

structure CreatePairingCodeResponse {
    @required
    deviceId: String
    @required
    pairingCode: SensitiveString
    @required
    accessCode: SensitiveString
    @required
    pairingTimeoutSeconds: Integer
}

structure AuthenticatePairingCodeRequest {
    @required
    deviceId: String
    @required
    pairingCode: SensitiveString
    @required
    accessCode: SensitiveString
}

structure AuthenticatePairingCodeResponse {
    @required
    status: PairingCodeAuthorizedStatus
    caCertificate: SensitiveString
    deviceCertificate: SensitiveString
    mqttUri: String
    regionName: String
    hostSettings: HostSettings
}

structure CertificateRotationPayload {
    @required
    mqttUri: String
    @required
    deviceCertificate: SensitiveString
    regionName: String
}

enum DeprovisionReason {
    DEPROVISIONED
    EXPIRED
    UNKNOWN
}

structure DeprovisionPayload {
    reason: DeprovisionReason
    @required
    @timestampFormat("date-time")
    timestamp: Timestamp
}

structure ThumbnailSubscription {
    periodSeconds: Integer
    @timestampFormat("date-time")
    expiresAt: Timestamp
    maxSizeKB: Integer
    remotePath: String
    headers: StringMap
}

map StringMap {
    key: String
    value: String
}

structure ThumbnailSubscriptionPayload {
    @required
    requests: ThumbnailSubscriptionMap
}

/// An identifier string: 1–12 alphanumeric characters (letters and digits only, no special characters).
/// Used for channelId, templateId, setting id, profile id, and channel status id.
/// See limits.smithy: MAX_ID_LENGTH
@length(min: 1, max: 12)
@pattern("^[a-zA-Z0-9]+$")
string IdString

/// Channel identifier (e.g. "CH01", "CH02"). Follows IdString constraints: 1–12 alphanumeric characters.
@length(min: 1, max: 12)
@pattern("^[a-zA-Z0-9]+$")
string ChannelId

/// Map of channelId to ThumbnailRequest. The host subscribes by channel.
/// The SDK resolves the channel's thumbnail local path from ActualConfiguration.
map ThumbnailSubscriptionMap {
    key: ChannelId
    value: ThumbnailSubscription
}

structure LogSubscriptionPayload {
    @timestampFormat("date-time")
    expiresAt: Timestamp
    remotePath: String
}

structure HostConfig {
    @required
    serviceId: String
    @required
    serviceName: String
    @required
    deviceTypes: DeviceTypeList
    @required
    thumbnailMaximumSizeKB: Integer
    @required
    logFileMaximumSizeKB: Integer
    @required
    createPairingCodeUrl: String
    @required
    authenticatePairingCodeUrl: String
}

union Health {
    healthy: Healthy
    degraded: HealthError
    critical: HealthError
}

/// Healthy state — no additional fields needed.
structure Healthy {}

/// Maximum 128 characters. Messages exceeding this limit are truncated before transmission
/// to prevent MQTT payload bloat on devices with many channels.
structure HealthError {
    @required
    @length(max: 128)
    message: String
    @required
    @timestampFormat("date-time")
    timestamp: Timestamp
}

structure VersionResponse {
    @required
    version: ProtocolVersion
}
