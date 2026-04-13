# TR-12 Models

Smithy model definitions for the VSF TR-12 Client Device Discovery protocol.

## Overview

TR-12 defines a secure, NAT-friendly pairing and communication protocol for professional streaming video devices. These Smithy models are the authoritative source of truth for all TR-12 protocol types — pairing, authentication, configuration, registration, status, and health.

## Smithy Sources

| File | Contents |
|------|----------|
| `smithy/common.smithy` | Pairing, auth, MQTT payloads, Health union, HostSettings |
| `smithy/configuration.smithy` | DeviceConfiguration, ChannelConfiguration, TransportProtocol union |
| `smithy/registration.smithy` | DeviceRegistration, Channel, Setting, ProfileDefinition, Thumbnail |
| `smithy/status.smithy` | DeviceStatus, ChannelStatus, StatusValue |
| `smithy/service_api.smithy` | Host service operation definitions |

## Generating Code

Use `generate-tr12-models.sh` to generate client SDKs from the OpenAPI spec produced by the Smithy build:

```bash
./generate-tr12-models.sh go         # Go models
./generate-tr12-models.sh typescript # TypeScript models
./generate-tr12-models.sh python     # Python models
```

Supported languages: `go`, `python`, `typescript`, `typescript-fetch`, `cpp-restsdk`, `cpp-tiny`, `cpp-oatpp-client`

## Reference
- [TR-12 Client and Server SDK] (https://github.com/vsf-tv/TR-12-Client-and-Host-Go)

Updated:  This Go-based client and server was publically release April 13, 2026.  References TR-12-Models v1.0.2

- [TR-12 Draft Specification (PDF)](VSF_TR-12-ClientDeviceDiscoveryDraft.pdf)
- [VSF TR-12 Working Group](https://www.vsf.tv)

## License

Apache License, Version 2.0
