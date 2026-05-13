$version: "2"

namespace com.cdd.internal

use aws.protocols#restJson1
use com.cdd.common#HostSettings
use com.cdd.common#CreatePairingCodeRequest
use com.cdd.common#CreatePairingCodeResponse
use com.cdd.common#AuthenticatePairingCodeRequest
use com.cdd.common#AuthenticatePairingCodeResponse
use com.cdd.common#RotateCertificatesRequest
use com.cdd.common#DeprovisionRequest
use com.cdd.common#ThumbnailSubscription
use com.cdd.common#LogRequest
use com.cdd.common#HostConfig
use com.cdd.common#VersionResponse

@restJson1
service HostServiceApi {
    version: "1.0"
    operations: [
        // HTTP endpoints
        CreatePairingCode,
        AuthenticatePairingCode,
        // MQTT: host → device (device subscribes)
        DeviceSubscribesToDesiredConfiguration,
        DeviceSubscribesToThumbnailSubscription,
        DeviceSubscribesToCertificateRotation,
        DeviceSubscribesToDeprovision,
        DeviceSubscribesToLogSubscription,
        // MQTT: device → host (device publishes)
        DevicePublishesRegistration,
        DevicePublishesStatus,
        DevicePublishesActualConfiguration,
        DevicePublishesDeprovisionAcknowledgement,
        // Internal
        GetHostConfig,
        GetVersion
    ]
}

@http(method: "POST", uri: "/pair")
operation CreatePairingCode {
    input: CreatePairingCodeRequest
    output: CreatePairingCodeResponse
}

@http(method: "POST", uri: "/authenticate")
operation AuthenticatePairingCode {
    input: AuthenticatePairingCodeRequest
    output: AuthenticatePairingCodeResponse
}

// -----------------------------------------------------------------------
// MQTT: host → device (device subscribes)
// @http is required by @restJson1 for the openapi plugin to traverse these
// shapes. The /mqtt/ prefix signals these are not real REST endpoints.
// -----------------------------------------------------------------------

/// Host publishes desired configuration to the device.
/// Topic: deviceSubscribesToDesiredConfigurationTopic
/// Payload shape: DeviceConfiguration (see cdd_sdk smithy)
@http(method: "POST", uri: "/mqtt/host-to-device/desired-configuration")
operation DeviceSubscribesToDesiredConfiguration {
    input: OpaquePayload
}

/// Host publishes thumbnail subscription requests to the device.
/// Topic: deviceSubscribesToThumbnailSubscriptionTopic
@http(method: "POST", uri: "/mqtt/host-to-device/thumbnail-subscription")
operation DeviceSubscribesToThumbnailSubscription {
    input: ThumbnailSubscription
}

/// Host publishes new certificates to the device.
/// Topic: deviceSubscribesToCertificateRotationTopic
@http(method: "POST", uri: "/mqtt/host-to-device/certificate-rotation")
operation DeviceSubscribesToCertificateRotation {
    input: RotateCertificatesRequest
}

/// Host publishes deprovision command to the device.
/// Topic: deviceSubscribesToDeprovisionTopic
@http(method: "POST", uri: "/mqtt/host-to-device/deprovision")
operation DeviceSubscribesToDeprovision {
    input: DeprovisionRequest
}

/// Host publishes log upload request to the device.
/// Topic: deviceSubscribesToLogSubscriptionTopic
@http(method: "POST", uri: "/mqtt/host-to-device/log-subscription")
operation DeviceSubscribesToLogSubscription {
    input: LogRequest
}

// -----------------------------------------------------------------------
// MQTT: device → host (device publishes)
// -----------------------------------------------------------------------

/// Device publishes its registration on connect.
/// Topic: devicePublishesRegistrationTopic
/// Payload shape: DeviceRegistration (see cdd_sdk smithy)
@http(method: "POST", uri: "/mqtt/device-to-host/registration")
operation DevicePublishesRegistration {
    input: OpaquePayload
}

/// Device publishes its current status.
/// Topic: devicePublishesStatusTopic
/// Payload shape: DeviceStatus (see cdd_sdk smithy)
@http(method: "POST", uri: "/mqtt/device-to-host/status")
operation DevicePublishesStatus {
    input: OpaquePayload
}

/// Device publishes its actual applied configuration.
/// Topic: devicePublishesActualConfigurationTopic
/// Payload shape: DeviceConfiguration (see cdd_sdk smithy)
@http(method: "POST", uri: "/mqtt/device-to-host/actual-configuration")
operation DevicePublishesActualConfiguration {
    input: OpaquePayload
}

/// Device acknowledges deprovision by publishing to this topic.
/// Topic: devicePublishesDeprovisionAcknowledgementTopic
@http(method: "POST", uri: "/mqtt/device-to-host/deprovision-acknowledgement")
operation DevicePublishesDeprovisionAcknowledgement {
    input: DeprovisionRequest
}

/// Opaque MQTT payload — shape defined in cdd_sdk smithy.
structure OpaquePayload {
    payload: Document
}

// -----------------------------------------------------------------------
// Internal / informational
// -----------------------------------------------------------------------

/// Host publishes host configuration to device on connect.
@http(method: "GET", uri: "/internal/host-config")
operation GetHostConfig {
    output: HostConfig
}

/// Host publishes protocol version to device.
@http(method: "GET", uri: "/internal/version")
operation GetVersion {
    output: VersionResponse
}
