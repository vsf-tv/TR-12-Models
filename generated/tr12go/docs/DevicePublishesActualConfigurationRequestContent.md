# DevicePublishesActualConfigurationRequestContent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Version** | **string** |  | 
**Channels** | [**[]ActualChannelConfiguration**](ActualChannelConfiguration.md) |  | 
**StandardSettings** | Pointer to [**[]IdAndValue**](IdAndValue.md) |  | [optional] 
**Health** | Pointer to [**Health**](Health.md) |  | [optional] 

## Methods

### NewDevicePublishesActualConfigurationRequestContent

`func NewDevicePublishesActualConfigurationRequestContent(version string, channels []ActualChannelConfiguration, ) *DevicePublishesActualConfigurationRequestContent`

NewDevicePublishesActualConfigurationRequestContent instantiates a new DevicePublishesActualConfigurationRequestContent object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDevicePublishesActualConfigurationRequestContentWithDefaults

`func NewDevicePublishesActualConfigurationRequestContentWithDefaults() *DevicePublishesActualConfigurationRequestContent`

NewDevicePublishesActualConfigurationRequestContentWithDefaults instantiates a new DevicePublishesActualConfigurationRequestContent object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetVersion

`func (o *DevicePublishesActualConfigurationRequestContent) GetVersion() string`

GetVersion returns the Version field if non-nil, zero value otherwise.

### GetVersionOk

`func (o *DevicePublishesActualConfigurationRequestContent) GetVersionOk() (*string, bool)`

GetVersionOk returns a tuple with the Version field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersion

`func (o *DevicePublishesActualConfigurationRequestContent) SetVersion(v string)`

SetVersion sets Version field to given value.


### GetChannels

`func (o *DevicePublishesActualConfigurationRequestContent) GetChannels() []ActualChannelConfiguration`

GetChannels returns the Channels field if non-nil, zero value otherwise.

### GetChannelsOk

`func (o *DevicePublishesActualConfigurationRequestContent) GetChannelsOk() (*[]ActualChannelConfiguration, bool)`

GetChannelsOk returns a tuple with the Channels field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChannels

`func (o *DevicePublishesActualConfigurationRequestContent) SetChannels(v []ActualChannelConfiguration)`

SetChannels sets Channels field to given value.


### GetStandardSettings

`func (o *DevicePublishesActualConfigurationRequestContent) GetStandardSettings() []IdAndValue`

GetStandardSettings returns the StandardSettings field if non-nil, zero value otherwise.

### GetStandardSettingsOk

`func (o *DevicePublishesActualConfigurationRequestContent) GetStandardSettingsOk() (*[]IdAndValue, bool)`

GetStandardSettingsOk returns a tuple with the StandardSettings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStandardSettings

`func (o *DevicePublishesActualConfigurationRequestContent) SetStandardSettings(v []IdAndValue)`

SetStandardSettings sets StandardSettings field to given value.

### HasStandardSettings

`func (o *DevicePublishesActualConfigurationRequestContent) HasStandardSettings() bool`

HasStandardSettings returns a boolean if a field has been set.

### GetHealth

`func (o *DevicePublishesActualConfigurationRequestContent) GetHealth() Health`

GetHealth returns the Health field if non-nil, zero value otherwise.

### GetHealthOk

`func (o *DevicePublishesActualConfigurationRequestContent) GetHealthOk() (*Health, bool)`

GetHealthOk returns a tuple with the Health field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHealth

`func (o *DevicePublishesActualConfigurationRequestContent) SetHealth(v Health)`

SetHealth sets Health field to given value.

### HasHealth

`func (o *DevicePublishesActualConfigurationRequestContent) HasHealth() bool`

HasHealth returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


