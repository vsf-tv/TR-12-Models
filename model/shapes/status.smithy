$version: "2"

namespace com.tr12.status
use com.tr12.common#ChannelState
use com.tr12.common#Health
use com.tr12.common#IdString

/// Device status payload — reported by device to host periodically.
/// Contains runtime telemetry (status values) and device health.
structure DeviceStatus {
    @required
    status: StatusValueList
    channels: ChannelStatusList
    /// Overall device health as reported by the device.
    health: Health
}

/// See limits.smithy: MAX_CHANNEL_STATUS
@length(max: 50)
list ChannelStatusList {
    member: ChannelStatus
}

/// Per-channel runtime status and health.
structure ChannelStatus {
    @required
    id: IdString
    @required
    state: ChannelState
    @required
    status: StatusValueList
    /// Channel-level health as reported by the device.
    health: Health
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
