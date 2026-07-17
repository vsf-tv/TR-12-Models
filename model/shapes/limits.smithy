$version: "2"

namespace com.tr12.registration

/// ─────────────────────────────────────────────────────────────────────────────
/// TR-12 Protocol Limits
/// ─────────────────────────────────────────────────────────────────────────────
/// All list @length constraints across the model derive from these limits.
/// Registration payload stays under 90 kB (MQTT 128 kB max with headroom).
/// Configuration payload stays under 90 kB.
///
/// Registration sizing (worst case):
///   5 templates × (50 settings×265B + 25 profiles×105B + 10 protocols×20B)
///   + 50 assignments × 50B
///   + 50 device settings × 265B
///   ≈ 95 kB
///
/// Configuration sizing (worst case):
///   50 channels × (50 settings×40B + protocol 300B)
///   + 50 device settings × 40B
///   ≈ 82 kB
/// ─────────────────────────────────────────────────────────────────────────────
///
/// MAX_CHANNEL_TEMPLATES      =  5   (unique capability definitions)
/// MAX_CHANNELS               = 50   (total channel IDs on a device)
/// MAX_SETTINGS_PER_SCOPE     = 50   (settings per template or device-level)
/// MAX_ENUM_VALUES            = 10   (choices per enum setting)
/// MAX_PROFILES_PER_TEMPLATE  = 25   (profiles per channel template)
/// MAX_PROTOCOLS_PER_TEMPLATE = 10   (transport protocols per channel template)
/// MAX_CHANNEL_STATUS         = 50   (channels reporting status)
/// MAX_STATUS_VALUES          = 50   (status entries per scope)
/// ─────────────────────────────────────────────────────────────────────────────
