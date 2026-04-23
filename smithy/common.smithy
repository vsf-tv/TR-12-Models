$version: "2"

namespace com.cdd.common

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
    @default("2.0.1")
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
    ZIXI_PUSH
    ZIXI_PULL
    RIST_CALLER
    RIST_LISTENER
    RTP
}

structure IdAndValue {
    @required
    key: String
    @required
    value: String
}

list IdAndValueList {
    member: IdAndValue
}

list StringList {
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
    @required
    subUpdateTopic: String
    @required
    subUpdateThumbnailSubscriptionTopic: String
    @required
    publishReportSchemaTopic: String
    @required
    publishReportRegistrationTopic: String
    @required
    publishReportStatusTopic: String
    @required
    publishReportActualConfigurationTopic: String
    @required
    subUpdateCertsTopic: String
    @required
    publishDeprovisionTopic: String
    @required
    subDeprovisionTopic: String
    @required
    subUpdateLogSubscriptionTopic: String
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

union CreatePairingCodeResult {
    success: CreatePairingCodeSuccessData
    failure: CreatePairingCodeFailureData
}

structure CreatePairingCodeSuccessData {
    @required
    deviceId: String
    @required
    pairingCode: SensitiveString
    @required
    accessCode: SensitiveString
    @required
    pairingTimeoutSeconds: Integer
}

structure CreatePairingCodeFailureData {
    @required
    reason: CreatePairingCodeFailureReason
}

structure CreatePairingCodeResponse {
    @required
    result: CreatePairingCodeResult
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

structure RotateCertificatesRequest {
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

structure DeprovisionRequest {
    reason: DeprovisionReason
    @required
    @timestampFormat("date-time")
    timestamp: Timestamp
}

structure ThumbnailRequest {
    periodSeconds: Integer
    @timestampFormat("date-time")
    expiresAt: Timestamp
    maxSizeKB: Integer
    localPath: String
    remotePath: String
    headers: StringMap
}

map StringMap {
    key: String
    value: String
}

structure ThumbnailSubscription {
    @required
    requests: ThumbnailRequestMap
}

map ThumbnailRequestMap {
    key: String
    value: ThumbnailRequest
}

// All fields are optional — a partial LogRequest instructs the device to upload
// any available logs to the provided remotePath before expiresAt.
structure LogRequest {
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
    degraded: UnhealthyStateDescription
    critical: UnhealthyStateDescription
}

/// Healthy state — no additional fields needed.
structure Healthy {}

/// Shared description for degraded and critical states.
structure UnhealthyStateDescription {
    @required
    messages: StringList
    @required
    @timestampFormat("date-time")
    timestamp: Timestamp
    @required
    componentName: String
}

structure VersionResponse {
    @required
    version: ProtocolVersion
}
