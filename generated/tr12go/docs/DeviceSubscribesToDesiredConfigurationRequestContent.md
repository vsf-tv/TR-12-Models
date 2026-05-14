# DeviceSubscribesToDesiredConfigurationRequestContent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ConfigurationId** | **string** |  | 
**Channels** | [**[]ChannelConfiguration**](ChannelConfiguration.md) |  | 
**StandardSettings** | Pointer to [**[]IdAndValue**](IdAndValue.md) |  | [optional] 
**Health** | Pointer to [**Health**](Health.md) |  | [optional] 

## Methods

### NewDeviceSubscribesToDesiredConfigurationRequestContent

`func NewDeviceSubscribesToDesiredConfigurationRequestContent(configurationId string, channels []ChannelConfiguration, ) *DeviceSubscribesToDesiredConfigurationRequestContent`

NewDeviceSubscribesToDesiredConfigurationRequestContent instantiates a new DeviceSubscribesToDesiredConfigurationRequestContent object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDeviceSubscribesToDesiredConfigurationRequestContentWithDefaults

`func NewDeviceSubscribesToDesiredConfigurationRequestContentWithDefaults() *DeviceSubscribesToDesiredConfigurationRequestContent`

NewDeviceSubscribesToDesiredConfigurationRequestContentWithDefaults instantiates a new DeviceSubscribesToDesiredConfigurationRequestContent object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetConfigurationId

`func (o *DeviceSubscribesToDesiredConfigurationRequestContent) GetConfigurationId() string`

GetConfigurationId returns the ConfigurationId field if non-nil, zero value otherwise.

### GetConfigurationIdOk

`func (o *DeviceSubscribesToDesiredConfigurationRequestContent) GetConfigurationIdOk() (*string, bool)`

GetConfigurationIdOk returns a tuple with the ConfigurationId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetConfigurationId

`func (o *DeviceSubscribesToDesiredConfigurationRequestContent) SetConfigurationId(v string)`

SetConfigurationId sets ConfigurationId field to given value.


### GetChannels

`func (o *DeviceSubscribesToDesiredConfigurationRequestContent) GetChannels() []ChannelConfiguration`

GetChannels returns the Channels field if non-nil, zero value otherwise.

### GetChannelsOk

`func (o *DeviceSubscribesToDesiredConfigurationRequestContent) GetChannelsOk() (*[]ChannelConfiguration, bool)`

GetChannelsOk returns a tuple with the Channels field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChannels

`func (o *DeviceSubscribesToDesiredConfigurationRequestContent) SetChannels(v []ChannelConfiguration)`

SetChannels sets Channels field to given value.


### GetStandardSettings

`func (o *DeviceSubscribesToDesiredConfigurationRequestContent) GetStandardSettings() []IdAndValue`

GetStandardSettings returns the StandardSettings field if non-nil, zero value otherwise.

### GetStandardSettingsOk

`func (o *DeviceSubscribesToDesiredConfigurationRequestContent) GetStandardSettingsOk() (*[]IdAndValue, bool)`

GetStandardSettingsOk returns a tuple with the StandardSettings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStandardSettings

`func (o *DeviceSubscribesToDesiredConfigurationRequestContent) SetStandardSettings(v []IdAndValue)`

SetStandardSettings sets StandardSettings field to given value.

### HasStandardSettings

`func (o *DeviceSubscribesToDesiredConfigurationRequestContent) HasStandardSettings() bool`

HasStandardSettings returns a boolean if a field has been set.

### GetHealth

`func (o *DeviceSubscribesToDesiredConfigurationRequestContent) GetHealth() Health`

GetHealth returns the Health field if non-nil, zero value otherwise.

### GetHealthOk

`func (o *DeviceSubscribesToDesiredConfigurationRequestContent) GetHealthOk() (*Health, bool)`

GetHealthOk returns a tuple with the Health field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHealth

`func (o *DeviceSubscribesToDesiredConfigurationRequestContent) SetHealth(v Health)`

SetHealth sets Health field to given value.

### HasHealth

`func (o *DeviceSubscribesToDesiredConfigurationRequestContent) HasHealth() bool`

HasHealth returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


