# DevicePublishesStatusRequestContent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | [**[]StatusValue**](StatusValue.md) |  | 
**Channels** | Pointer to [**[]ChannelStatus**](ChannelStatus.md) |  | [optional] 

## Methods

### NewDevicePublishesStatusRequestContent

`func NewDevicePublishesStatusRequestContent(status []StatusValue, ) *DevicePublishesStatusRequestContent`

NewDevicePublishesStatusRequestContent instantiates a new DevicePublishesStatusRequestContent object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDevicePublishesStatusRequestContentWithDefaults

`func NewDevicePublishesStatusRequestContentWithDefaults() *DevicePublishesStatusRequestContent`

NewDevicePublishesStatusRequestContentWithDefaults instantiates a new DevicePublishesStatusRequestContent object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetStatus

`func (o *DevicePublishesStatusRequestContent) GetStatus() []StatusValue`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *DevicePublishesStatusRequestContent) GetStatusOk() (*[]StatusValue, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *DevicePublishesStatusRequestContent) SetStatus(v []StatusValue)`

SetStatus sets Status field to given value.


### GetChannels

`func (o *DevicePublishesStatusRequestContent) GetChannels() []ChannelStatus`

GetChannels returns the Channels field if non-nil, zero value otherwise.

### GetChannelsOk

`func (o *DevicePublishesStatusRequestContent) GetChannelsOk() (*[]ChannelStatus, bool)`

GetChannelsOk returns a tuple with the Channels field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChannels

`func (o *DevicePublishesStatusRequestContent) SetChannels(v []ChannelStatus)`

SetChannels sets Channels field to given value.

### HasChannels

`func (o *DevicePublishesStatusRequestContent) HasChannels() bool`

HasChannels returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


