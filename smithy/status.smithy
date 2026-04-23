$version: "2"

namespace com.cdd.status
use com.cdd.common#ChannelState

structure DeviceStatus {
    @required
    status: StatusValueList
    channels: ChannelStatusList
}

list ChannelStatusList {
    member: ChannelStatus
}

structure ChannelStatus {
    @required
    id: String
    @required
    state: ChannelState
    @required
    status: StatusValueList
}

list StatusValueList {
    member: StatusValue
}

structure StatusValue {
    @required
    name: String
    @required
    info: String
    @required
    value: String
}
