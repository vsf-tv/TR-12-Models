$version: "2"

namespace com.example.cdd.internal

use aws.protocols#restJson1
use com.example.cdd.common#HostSettings
use com.example.cdd.common#CreatePairingCodeRequest
use com.example.cdd.common#CreatePairingCodeResponse
use com.example.cdd.common#AuthenticatePairingCodeRequest
use com.example.cdd.common#AuthenticatePairingCodeResponse
use com.example.cdd.common#RotateCertificatesRequest
use com.example.cdd.common#DeprovisionRequest
use com.example.cdd.common#ThumbnailSubscription
use com.example.cdd.common#LogRequest
use com.example.cdd.common#HostConfig
use com.example.cdd.common#VersionResponse

@restJson1
service HostServiceApi {
    version: "1.0"
    operations: [
        CreatePairingCode,
        AuthenticatePairingCode,
        // MQTT payload operations — included for codegen shape reachability only, not HTTP endpoints
        RotateCertificates,
        DeprovisionDevice,
        RequestThumbnail,
        RequestLog,
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

// The following operations are MQTT message payloads, not HTTP endpoints.
// @http is required by @restJson1 for the openapi plugin to traverse these
// shapes and include them in the generated output. The /internal/ prefix
// signals they are not real REST APIs.

// MQTT payload: device publishes on cert rotation — not an HTTP endpoint
@http(method: "POST", uri: "/internal/rotate-certs")
operation RotateCertificates {
    input: RotateCertificatesRequest
}

// MQTT payload: device publishes to deprovision itself — not an HTTP endpoint
@http(method: "POST", uri: "/internal/deprovision")
operation DeprovisionDevice {
    input: DeprovisionRequest
}

// MQTT payload: host publishes thumbnail subscription request — not an HTTP endpoint
@http(method: "POST", uri: "/internal/thumbnail")
operation RequestThumbnail {
    input: ThumbnailSubscription
}

// MQTT payload: host publishes log upload request — not an HTTP endpoint
@http(method: "POST", uri: "/internal/log")
operation RequestLog {
    input: LogRequest
}

// MQTT payload: host publishes host configuration to device — not an HTTP endpoint
@http(method: "GET", uri: "/internal/host-config")
operation GetHostConfig {
    output: HostConfig
}

// MQTT payload: host publishes protocol version to device — not an HTTP endpoint
@http(method: "GET", uri: "/internal/version")
operation GetVersion {
    output: VersionResponse
}
