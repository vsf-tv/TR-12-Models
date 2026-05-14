# DevicePublishesActualConfigurationRequestContent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConfigurationId** | **string** |  | 
**Channels** | [**[]ChannelConfiguration**](ChannelConfiguration.md) |  | 
**StandardSettings** | Pointer to [**[]IdAndValue**](IdAndValue.md) |  | [optional] 
**Health** | Pointer to [**Health**](Health.md) |  | [optional] 

## Methods

### NewDevicePublishesActualConfigurationRequestContent

`func NewDevicePublishesActualConfigurationRequestContent(configurationId string, channels []ChannelConfiguration, ) *DevicePublishesActualConfigurationRequestContent`

NewDevicePublishesActualConfigurationRequestContent instantiates a new DevicePublishesActualConfigurationRequestContent object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDevicePublishesActualConfigurationRequestContentWithDefaults

`func NewDevicePublishesActualConfigurationRequestContentWithDefaults() *DevicePublishesActualConfigurationRequestContent`

NewDevicePublishesActualConfigurationRequestContentWithDefaults instantiates a new DevicePublishesActualConfigurationRequestContent object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetConfigurationId

`func (o *DevicePublishesActualConfigurationRequestContent) GetConfigurationId() string`

GetConfigurationId returns the ConfigurationId field if non-nil, zero value otherwise.

### GetConfigurationIdOk

`func (o *DevicePublishesActualConfigurationRequestContent) GetConfigurationIdOk() (*string, bool)`

GetConfigurationIdOk returns a tuple with the ConfigurationId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConfigurationId

`func (o *DevicePublishesActualConfigurationRequestContent) SetConfigurationId(v string)`

SetConfigurationId sets ConfigurationId field to given value.


### GetChannels

`func (o *DevicePublishesActualConfigurationRequestContent) GetChannels() []ChannelConfiguration`

GetChannels returns the Channels field if non-nil, zero value otherwise.

### GetChannelsOk

`func (o *DevicePublishesActualConfigurationRequestContent) GetChannelsOk() (*[]ChannelConfiguration, bool)`

GetChannelsOk returns a tuple with the Channels field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChannels

`func (o *DevicePublishesActualConfigurationRequestContent) SetChannels(v []ChannelConfiguration)`

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


