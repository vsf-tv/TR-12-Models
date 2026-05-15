$version: "2"

namespace com.cdd.registration
use com.cdd.common#ChannelType
use com.cdd.common#TransportProtocolName
use com.cdd.common#StringList

structure DeviceRegistration {
    @required
    channels: ChannelList
    settings: SettingsList
}

list ChannelList {
    member: Channel
}

structure Channel {
    @required
    name: String
    @required
    id: String
    @required
    channelType: ChannelType
    // A channel advertises optional settings and/or profiles
    settings: SettingsList
    profiles: ProfileList
    protocols: ProtocolList
}

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
    id: String
    @required
    name: String
    @required
    description: String
    @required
    constraint: SettingConstraint
}

structure EnumValues {
    @required
    values: StringList
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

list ProfileList {
    member: ProfileDefinition
}

structure ProfileDefinition {
    @required
    name: String
    @required
    id: String
    @required
    description: String
}

list ProtocolList {
    member: TransportProtocolName
}
