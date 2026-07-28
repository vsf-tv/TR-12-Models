$version: "2"

namespace com.tr12.registration
use com.tr12.common#ChannelType
use com.tr12.common#TransportProtocolName
use com.tr12.common#EnumValuesStringList
use com.tr12.common#IdString
use com.tr12.common#ProtocolVersion

/// Device registration payload — advertises device capabilities to the host.
///
/// Uses a template/assignment pattern to avoid redundant channel definitions:
/// - channelTemplates: unique capability definitions (max 5)
/// - channelAssignments: maps each channel ID to a template (max 50)
structure DeviceRegistration {
    /// Allows the host to accept/reject/handle any version changes since originally paired.
    @required
    version: ProtocolVersion
    @required
    channelTemplates: ChannelTemplateList
    @required
    channelAssignments: ChannelAssignmentList
    /// Device-level settings (not channel-specific).
    settings: SettingsList
}

/// Unique channel capability definitions. Most devices have a small number of
/// distinct channel configurations shared across many channel IDs.
/// See limits.smithy: MAX_CHANNEL_TEMPLATES
@length(max: 5)
list ChannelTemplateList {
    member: ChannelTemplate
}

/// Maps individual channel IDs to their template definition.
/// Total channel count across the device — max 50.
/// See limits.smithy: MAX_CHANNELS
@length(max: 50)
list ChannelAssignmentList {
    member: ChannelAssignment
}

/// Associates a channel ID with a template. The channel inherits all
/// capabilities (settings, profiles, protocols) from the referenced template.
structure ChannelAssignment {
    @required
    channelId: IdString
    @required
    name: String
    @required
    templateId: IdString
}

/// A channel template defines the capabilities shared by one or more channels.
structure ChannelTemplate {
    @required
    id: IdString
    @required
    channelType: ChannelType
    /// Settings this channel type supports.
    settings: SettingsList
    /// Profiles this channel type supports (mutually exclusive with settings in config).
    profiles: ProfileList
    /// Transport protocols this channel type can use.
    protocols: ProtocolList
}

/// See limits.smithy: MAX_SETTINGS_PER_SCOPE
@length(max: 50)
list SettingsList {
    member: Setting
}

/// A setting constraint is either an enumerated list of valid values
/// or a numeric range — never both.
union SettingConstraint {
    enums: EnumValues
    ranges: RangeValues
}

structure Setting {
    @required
    id: IdString
    @required
    name: String
    @required
    description: String
    @required
    constraint: SettingConstraint
}

structure EnumValues {
    /// See limits.smithy: MAX_ENUM_VALUES
    @required
    @length(max: 10)
    @required
    values: EnumValuesStringList
    @required
    defaultValue: String
}

structure RangeValues {
    @required
    minimum: Float
    @required
    maximum: Float
    @required
    defaultValue: Float
}

/// See limits.smithy: MAX_PROFILES_PER_TEMPLATE
@length(max: 25)
list ProfileList {
    member: ProfileDefinition
}

structure ProfileDefinition {
    @required
    name: String
    @required
    id: IdString
    @required
    description: String
}

/// See limits.smithy: MAX_PROTOCOLS_PER_TEMPLATE
@length(max: 10)
list ProtocolList {
    member: TransportProtocolName
}
