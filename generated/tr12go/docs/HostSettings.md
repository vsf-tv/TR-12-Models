# HostSettings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MqttAlpnProtocol** | **string** |  | 
**PairingTimeoutSeconds** | **float32** |  | 
**MinimumIntervalPublishSeconds** | **float32** |  | 
**MqttKeepaliveSeconds** | **float32** |  | 
**DeviceSubscribesToDesiredConfigurationTopic** | **string** | Device subscribes — host publishes desired configuration to this topic. | 
**DeviceSubscribesToThumbnailSubscriptionTopic** | **string** | Device subscribes — host publishes thumbnail subscription requests to this topic. | 
**DevicePublishesRegistrationTopic** | **string** | Device publishes — device reports its registration to this topic on connect. | 
**DevicePublishesStatusTopic** | **string** | Device publishes — device reports its current status to this topic. | 
**DevicePublishesActualConfigurationTopic** | **string** | Device publishes — device reports its actual applied configuration to this topic. | 
**DeviceSubscribesToCertificateRotationTopic** | **string** | Device subscribes — host publishes new certificates to this topic. | 
**DevicePublishesDeprovisionAcknowledgementTopic** | **string** | Device publishes — device acknowledges deprovision by publishing to this topic. | 
**DeviceSubscribesToDeprovisionTopic** | **string** | Device subscribes — host publishes deprovision command to this topic. | 
**DeviceSubscribesToLogSubscriptionTopic** | **string** | Device subscribes — host publishes log upload requests to this topic. | 

## Methods

### NewHostSettings

`func NewHostSettings(mqttAlpnProtocol string, pairingTimeoutSeconds float32, minimumIntervalPublishSeconds float32, mqttKeepaliveSeconds float32, deviceSubscribesToDesiredConfigurationTopic string, deviceSubscribesToThumbnailSubscriptionTopic string, devicePublishesRegistrationTopic string, devicePublishesStatusTopic string, devicePublishesActualConfigurationTopic string, deviceSubscribesToCertificateRotationTopic string, devicePublishesDeprovisionAcknowledgementTopic string, deviceSubscribesToDeprovisionTopic string, deviceSubscribesToLogSubscriptionTopic string, ) *HostSettings`

NewHostSettings instantiates a new HostSettings object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewHostSettingsWithDefaults

`func NewHostSettingsWithDefaults() *HostSettings`

NewHostSettingsWithDefaults instantiates a new HostSettings object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMqttAlpnProtocol

`func (o *HostSettings) GetMqttAlpnProtocol() string`

GetMqttAlpnProtocol returns the MqttAlpnProtocol field if non-nil, zero value otherwise.

### GetMqttAlpnProtocolOk

`func (o *HostSettings) GetMqttAlpnProtocolOk() (*string, bool)`

GetMqttAlpnProtocolOk returns a tuple with the MqttAlpnProtocol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMqttAlpnProtocol

`func (o *HostSettings) SetMqttAlpnProtocol(v string)`

SetMqttAlpnProtocol sets MqttAlpnProtocol field to given value.


### GetPairingTimeoutSeconds

`func (o *HostSettings) GetPairingTimeoutSeconds() float32`

GetPairingTimeoutSeconds returns the PairingTimeoutSeconds field if non-nil, zero value otherwise.

### GetPairingTimeoutSecondsOk

`func (o *HostSettings) GetPairingTimeoutSecondsOk() (*float32, bool)`

GetPairingTimeoutSecondsOk returns a tuple with the PairingTimeoutSeconds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPairingTimeoutSeconds

`func (o *HostSettings) SetPairingTimeoutSeconds(v float32)`

SetPairingTimeoutSeconds sets PairingTimeoutSeconds field to given value.


### GetMinimumIntervalPublishSeconds

`func (o *HostSettings) GetMinimumIntervalPublishSeconds() float32`

GetMinimumIntervalPublishSeconds returns the MinimumIntervalPublishSeconds field if non-nil, zero value otherwise.

### GetMinimumIntervalPublishSecondsOk

`func (o *HostSettings) GetMinimumIntervalPublishSecondsOk() (*float32, bool)`

GetMinimumIntervalPublishSecondsOk returns a tuple with the MinimumIntervalPublishSeconds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMinimumIntervalPublishSeconds

`func (o *HostSettings) SetMinimumIntervalPublishSeconds(v float32)`

SetMinimumIntervalPublishSeconds sets MinimumIntervalPublishSeconds field to given value.


### GetMqttKeepaliveSeconds

`func (o *HostSettings) GetMqttKeepaliveSeconds() float32`

GetMqttKeepaliveSeconds returns the MqttKeepaliveSeconds field if non-nil, zero value otherwise.

### GetMqttKeepaliveSecondsOk

`func (o *HostSettings) GetMqttKeepaliveSecondsOk() (*float32, bool)`

GetMqttKeepaliveSecondsOk returns a tuple with the MqttKeepaliveSeconds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMqttKeepaliveSeconds

`func (o *HostSettings) SetMqttKeepaliveSeconds(v float32)`

SetMqttKeepaliveSeconds sets MqttKeepaliveSeconds field to given value.


### GetDeviceSubscribesToDesiredConfigurationTopic

`func (o *HostSettings) GetDeviceSubscribesToDesiredConfigurationTopic() string`

GetDeviceSubscribesToDesiredConfigurationTopic returns the DeviceSubscribesToDesiredConfigurationTopic field if non-nil, zero value otherwise.

### GetDeviceSubscribesToDesiredConfigurationTopicOk

`func (o *HostSettings) GetDeviceSubscribesToDesiredConfigurationTopicOk() (*string, bool)`

GetDeviceSubscribesToDesiredConfigurationTopicOk returns a tuple with the DeviceSubscribesToDesiredConfigurationTopic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeviceSubscribesToDesiredConfigurationTopic

`func (o *HostSettings) SetDeviceSubscribesToDesiredConfigurationTopic(v string)`

SetDeviceSubscribesToDesiredConfigurationTopic sets DeviceSubscribesToDesiredConfigurationTopic field to given value.


### GetDeviceSubscribesToThumbnailSubscriptionTopic

`func (o *HostSettings) GetDeviceSubscribesToThumbnailSubscriptionTopic() string`

GetDeviceSubscribesToThumbnailSubscriptionTopic returns the DeviceSubscribesToThumbnailSubscriptionTopic field if non-nil, zero value otherwise.

### GetDeviceSubscribesToThumbnailSubscriptionTopicOk

`func (o *HostSettings) GetDeviceSubscribesToThumbnailSubscriptionTopicOk() (*string, bool)`

GetDeviceSubscribesToThumbnailSubscriptionTopicOk returns a tuple with the DeviceSubscribesToThumbnailSubscriptionTopic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeviceSubscribesToThumbnailSubscriptionTopic

`func (o *HostSettings) SetDeviceSubscribesToThumbnailSubscriptionTopic(v string)`

SetDeviceSubscribesToThumbnailSubscriptionTopic sets DeviceSubscribesToThumbnailSubscriptionTopic field to given value.


### GetDevicePublishesRegistrationTopic

`func (o *HostSettings) GetDevicePublishesRegistrationTopic() string`

GetDevicePublishesRegistrationTopic returns the DevicePublishesRegistrationTopic field if non-nil, zero value otherwise.

### GetDevicePublishesRegistrationTopicOk

`func (o *HostSettings) GetDevicePublishesRegistrationTopicOk() (*string, bool)`

GetDevicePublishesRegistrationTopicOk returns a tuple with the DevicePublishesRegistrationTopic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDevicePublishesRegistrationTopic

`func (o *HostSettings) SetDevicePublishesRegistrationTopic(v string)`

SetDevicePublishesRegistrationTopic sets DevicePublishesRegistrationTopic field to given value.


### GetDevicePublishesStatusTopic

`func (o *HostSettings) GetDevicePublishesStatusTopic() string`

GetDevicePublishesStatusTopic returns the DevicePublishesStatusTopic field if non-nil, zero value otherwise.

### GetDevicePublishesStatusTopicOk

`func (o *HostSettings) GetDevicePublishesStatusTopicOk() (*string, bool)`

GetDevicePublishesStatusTopicOk returns a tuple with the DevicePublishesStatusTopic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDevicePublishesStatusTopic

`func (o *HostSettings) SetDevicePublishesStatusTopic(v string)`

SetDevicePublishesStatusTopic sets DevicePublishesStatusTopic field to given value.


### GetDevicePublishesActualConfigurationTopic

`func (o *HostSettings) GetDevicePublishesActualConfigurationTopic() string`

GetDevicePublishesActualConfigurationTopic returns the DevicePublishesActualConfigurationTopic field if non-nil, zero value otherwise.

### GetDevicePublishesActualConfigurationTopicOk

`func (o *HostSettings) GetDevicePublishesActualConfigurationTopicOk() (*string, bool)`

GetDevicePublishesActualConfigurationTopicOk returns a tuple with the DevicePublishesActualConfigurationTopic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDevicePublishesActualConfigurationTopic

`func (o *HostSettings) SetDevicePublishesActualConfigurationTopic(v string)`

SetDevicePublishesActualConfigurationTopic sets DevicePublishesActualConfigurationTopic field to given value.


### GetDeviceSubscribesToCertificateRotationTopic

`func (o *HostSettings) GetDeviceSubscribesToCertificateRotationTopic() string`

GetDeviceSubscribesToCertificateRotationTopic returns the DeviceSubscribesToCertificateRotationTopic field if non-nil, zero value otherwise.

### GetDeviceSubscribesToCertificateRotationTopicOk

`func (o *HostSettings) GetDeviceSubscribesToCertificateRotationTopicOk() (*string, bool)`

GetDeviceSubscribesToCertificateRotationTopicOk returns a tuple with the DeviceSubscribesToCertificateRotationTopic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeviceSubscribesToCertificateRotationTopic

`func (o *HostSettings) SetDeviceSubscribesToCertificateRotationTopic(v string)`

SetDeviceSubscribesToCertificateRotationTopic sets DeviceSubscribesToCertificateRotationTopic field to given value.


### GetDevicePublishesDeprovisionAcknowledgementTopic

`func (o *HostSettings) GetDevicePublishesDeprovisionAcknowledgementTopic() string`

GetDevicePublishesDeprovisionAcknowledgementTopic returns the DevicePublishesDeprovisionAcknowledgementTopic field if non-nil, zero value otherwise.

### GetDevicePublishesDeprovisionAcknowledgementTopicOk

`func (o *HostSettings) GetDevicePublishesDeprovisionAcknowledgementTopicOk() (*string, bool)`

GetDevicePublishesDeprovisionAcknowledgementTopicOk returns a tuple with the DevicePublishesDeprovisionAcknowledgementTopic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDevicePublishesDeprovisionAcknowledgementTopic

`func (o *HostSettings) SetDevicePublishesDeprovisionAcknowledgementTopic(v string)`

SetDevicePublishesDeprovisionAcknowledgementTopic sets DevicePublishesDeprovisionAcknowledgementTopic field to given value.


### GetDeviceSubscribesToDeprovisionTopic

`func (o *HostSettings) GetDeviceSubscribesToDeprovisionTopic() string`

GetDeviceSubscribesToDeprovisionTopic returns the DeviceSubscribesToDeprovisionTopic field if non-nil, zero value otherwise.

### GetDeviceSubscribesToDeprovisionTopicOk

`func (o *HostSettings) GetDeviceSubscribesToDeprovisionTopicOk() (*string, bool)`

GetDeviceSubscribesToDeprovisionTopicOk returns a tuple with the DeviceSubscribesToDeprovisionTopic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeviceSubscribesToDeprovisionTopic

`func (o *HostSettings) SetDeviceSubscribesToDeprovisionTopic(v string)`

SetDeviceSubscribesToDeprovisionTopic sets DeviceSubscribesToDeprovisionTopic field to given value.


### GetDeviceSubscribesToLogSubscriptionTopic

`func (o *HostSettings) GetDeviceSubscribesToLogSubscriptionTopic() string`

GetDeviceSubscribesToLogSubscriptionTopic returns the DeviceSubscribesToLogSubscriptionTopic field if non-nil, zero value otherwise.

### GetDeviceSubscribesToLogSubscriptionTopicOk

`func (o *HostSettings) GetDeviceSubscribesToLogSubscriptionTopicOk() (*string, bool)`

GetDeviceSubscribesToLogSubscriptionTopicOk returns a tuple with the DeviceSubscribesToLogSubscriptionTopic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeviceSubscribesToLogSubscriptionTopic

`func (o *HostSettings) SetDeviceSubscribesToLogSubscriptionTopic(v string)`

SetDeviceSubscribesToLogSubscriptionTopic sets DeviceSubscribesToLogSubscriptionTopic field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


