# DevicePublishesRegistrationRequestContent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Channels** | [**[]Channel**](Channel.md) |  | 
**StandardSettings** | Pointer to [**[]Setting**](Setting.md) |  | [optional] 

## Methods

### NewDevicePublishesRegistrationRequestContent

`func NewDevicePublishesRegistrationRequestContent(channels []Channel, ) *DevicePublishesRegistrationRequestContent`

NewDevicePublishesRegistrationRequestContent instantiates a new DevicePublishesRegistrationRequestContent object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDevicePublishesRegistrationRequestContentWithDefaults

`func NewDevicePublishesRegistrationRequestContentWithDefaults() *DevicePublishesRegistrationRequestContent`

NewDevicePublishesRegistrationRequestContentWithDefaults instantiates a new DevicePublishesRegistrationRequestContent object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetChannels

`func (o *DevicePublishesRegistrationRequestContent) GetChannels() []Channel`

GetChannels returns the Channels field if non-nil, zero value otherwise.

### GetChannelsOk

`func (o *DevicePublishesRegistrationRequestContent) GetChannelsOk() (*[]Channel, bool)`

GetChannelsOk returns a tuple with the Channels field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChannels

`func (o *DevicePublishesRegistrationRequestContent) SetChannels(v []Channel)`

SetChannels sets Channels field to given value.


### GetStandardSettings

`func (o *DevicePublishesRegistrationRequestContent) GetStandardSettings() []Setting`

GetStandardSettings returns the StandardSettings field if non-nil, zero value otherwise.

### GetStandardSettingsOk

`func (o *DevicePublishesRegistrationRequestContent) GetStandardSettingsOk() (*[]Setting, bool)`

GetStandardSettingsOk returns a tuple with the StandardSettings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStandardSettings

`func (o *DevicePublishesRegistrationRequestContent) SetStandardSettings(v []Setting)`

SetStandardSettings sets StandardSettings field to given value.

### HasStandardSettings

`func (o *DevicePublishesRegistrationRequestContent) HasStandardSettings() bool`

HasStandardSettings returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


