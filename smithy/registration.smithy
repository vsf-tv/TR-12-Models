$version: "2"

namespace com.cdd.registration
use com.cdd.common#ChannelType
use com.cdd.common#TransportProtocolName
use com.cdd.common#StringList

structure DeviceRegistration {
    @required
    channels: ChannelList
    standardSettings: SettingsList
    thumbnails: ThumbnailList
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
    standardSettings: SettingsList
    profiles: ProfileList
    connectionProtocols: ProtocolList
}

list SettingsList {
    member: Setting
}

structure Setting {
    @required
    id: String
    @required
    name: String
    @required
    description: String
    enums: EnumValues
    ranges: RangeValues
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

list ThumbnailList {
    member: Thumbnail
}

structure Thumbnail {
    @required
    name: String
    @required
    id: String
    @required
    localPath: String
}
