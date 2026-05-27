$version: "2"

namespace com.tr12.internal

use aws.protocols#restJson1
use com.tr12.common#HostSettings
use com.tr12.common#CreatePairingCodeRequest
use com.tr12.common#CreatePairingCodeResponse
use com.tr12.common#CreatePairingCodeException
use com.tr12.common#AuthenticatePairingCodeRequest
use com.tr12.common#AuthenticatePairingCodeResponse
use com.tr12.common#HostConfig
use com.tr12.common#VersionResponse
use com.tr12.registration#DeviceRegistration
use com.tr12.status#DeviceStatus
use com.tr12.configuration#DesiredDeviceConfiguration
use com.tr12.configuration#ActualDeviceConfiguration
use com.tr12.common#CertificateRotationPayload
use com.tr12.common#DeprovisionPayload
use com.tr12.common#ThumbnailSubscriptionPayload
use com.tr12.common#LogSubscriptionPayload

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
    errors: [CreatePairingCodeException]
}

@http(method: "POST", uri: "/authenticate")
operation AuthenticatePairingCode {
    input: AuthenticatePairingCodeRequest
    output: AuthenticatePairingCodeResponse
}

// -----------------------------------------------------------------------
// MQTT: host → device (device subscribes)
// Each operation input is an envelope that wraps the actual payload,
// allowing additional fields (e.g. metadata, sequence numbers) to be
// added in future minor versions without breaking existing consumers.
// @http is required by @restJson1 for the openapi plugin to traverse these
// shapes. The /mqtt/ prefix signals these are not real REST endpoints.
// -----------------------------------------------------------------------

/// Host publishes desired configuration to the device.
/// Topic: deviceSubscribesToDesiredConfigurationTopic
@http(method: "POST", uri: "/mqtt/host-to-device/desired-configuration")
operation DeviceSubscribesToDesiredConfiguration {
    output: DesiredConfigurationPayload
}

/// Host publishes thumbnail subscription requests to the device.
/// Topic: deviceSubscribesToThumbnailSubscriptionTopic
@http(method: "POST", uri: "/mqtt/host-to-device/thumbnail-subscription")
operation DeviceSubscribesToThumbnailSubscription {
    output: ThumbnailSubscriptionPayload
}

/// Host publishes new certificates to the device.
/// Topic: deviceSubscribesToCertificateRotationTopic
@http(method: "POST", uri: "/mqtt/host-to-device/certificate-rotation")
operation DeviceSubscribesToCertificateRotation {
    output: CertificateRotationPayload
}

/// Host publishes deprovision command to the device.
/// Topic: deviceSubscribesToDeprovisionTopic
@http(method: "POST", uri: "/mqtt/host-to-device/deprovision")
operation DeviceSubscribesToDeprovision {
    output: DeprovisionPayload
}

/// Host publishes log upload request to the device.
/// Topic: deviceSubscribesToLogSubscriptionTopic
@http(method: "POST", uri: "/mqtt/host-to-device/log-subscription")
operation DeviceSubscribesToLogSubscription {
    output: LogSubscriptionPayload
}

// -----------------------------------------------------------------------
// MQTT: device → host (device publishes)
// Same envelope pattern — each payload wraps the actual content.
// -----------------------------------------------------------------------

/// Device publishes its registration on connect.
/// Topic: devicePublishesRegistrationTopic
@http(method: "POST", uri: "/mqtt/device-to-host/registration")
operation DevicePublishesRegistration {
    input: RegistrationPayload
}

/// Device publishes its current status.
/// Topic: devicePublishesStatusTopic
@http(method: "POST", uri: "/mqtt/device-to-host/status")
operation DevicePublishesStatus {
    input: StatusPayload
}

/// Device publishes its actual applied configuration.
/// Topic: devicePublishesActualConfigurationTopic
@http(method: "POST", uri: "/mqtt/device-to-host/actual-configuration")
operation DevicePublishesActualConfiguration {
    input: ActualConfigurationPayload
}

/// Device acknowledges deprovision by publishing to this topic.
/// Topic: devicePublishesDeprovisionAcknowledgementTopic
@http(method: "POST", uri: "/mqtt/device-to-host/deprovision-acknowledgement")
operation DevicePublishesDeprovisionAcknowledgement {
    input: DeprovisionPayload
}

// -----------------------------------------------------------------------
// MQTT payload envelope structures — host → device
// -----------------------------------------------------------------------

structure DesiredConfigurationPayload {
    @required
    desiredDeviceConfiguration: DesiredDeviceConfiguration
}

// -----------------------------------------------------------------------
// MQTT payload envelope structures — device → host
// -----------------------------------------------------------------------

structure RegistrationPayload {
    @required
    deviceRegistration: DeviceRegistration
}

structure StatusPayload {
    @required
    deviceStatus: DeviceStatus
}

structure ActualConfigurationPayload {
    @required
    actualDeviceConfiguration: ActualDeviceConfiguration
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
