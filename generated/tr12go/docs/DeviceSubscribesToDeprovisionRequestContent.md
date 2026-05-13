# DeviceSubscribesToDeprovisionRequestContent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Reason** | Pointer to [**DeprovisionReason**](DeprovisionReason.md) |  | [optional] 
**Timestamp** | **time.Time** |  | 

## Methods

### NewDeviceSubscribesToDeprovisionRequestContent

`func NewDeviceSubscribesToDeprovisionRequestContent(timestamp time.Time, ) *DeviceSubscribesToDeprovisionRequestContent`

NewDeviceSubscribesToDeprovisionRequestContent instantiates a new DeviceSubscribesToDeprovisionRequestContent object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDeviceSubscribesToDeprovisionRequestContentWithDefaults

`func NewDeviceSubscribesToDeprovisionRequestContentWithDefaults() *DeviceSubscribesToDeprovisionRequestContent`

NewDeviceSubscribesToDeprovisionRequestContentWithDefaults instantiates a new DeviceSubscribesToDeprovisionRequestContent object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetReason

`func (o *DeviceSubscribesToDeprovisionRequestContent) GetReason() DeprovisionReason`

GetReason returns the Reason field if non-nil, zero value otherwise.

### GetReasonOk

`func (o *DeviceSubscribesToDeprovisionRequestContent) GetReasonOk() (*DeprovisionReason, bool)`

GetReasonOk returns a tuple with the Reason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReason

`func (o *DeviceSubscribesToDeprovisionRequestContent) SetReason(v DeprovisionReason)`

SetReason sets Reason field to given value.

### HasReason

`func (o *DeviceSubscribesToDeprovisionRequestContent) HasReason() bool`

HasReason returns a boolean if a field has been set.

### GetTimestamp

`func (o *DeviceSubscribesToDeprovisionRequestContent) GetTimestamp() time.Time`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *DeviceSubscribesToDeprovisionRequestContent) GetTimestampOk() (*time.Time, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *DeviceSubscribesToDeprovisionRequestContent) SetTimestamp(v time.Time)`

SetTimestamp sets Timestamp field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


