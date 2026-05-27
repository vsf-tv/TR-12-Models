$version: "2"

namespace com.tr12.status
use com.tr12.common#ChannelState

structure DeviceStatus {
    @required
    status: StatusValueList
    channels: ChannelStatusList
}

/// See limits.smithy: MAX_CHANNEL_STATUS
@length(max: 50)
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

/// See limits.smithy: MAX_STATUS_VALUES
@length(max: 50)
list StatusValueList {
    member: StatusValue
}

structure StatusValue {
    @required
    name: String
    @required
    description: String
    @required
    value: String
}
