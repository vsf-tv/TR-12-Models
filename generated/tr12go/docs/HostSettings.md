# HostSettings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MqttAlpnProtocol** | **string** |  | 
**PairingTimeoutSeconds** | **float32** |  | 
**MinimumIntervalPublishSeconds** | **float32** |  | 
**MqttKeepaliveSeconds** | **float32** |  | 
**SubUpdateTopic** | **string** |  | 
**SubUpdateThumbnailSubscriptionTopic** | **string** |  | 
**PublishReportSchemaTopic** | **string** |  | 
**PublishReportRegistrationTopic** | **string** |  | 
**PublishReportStatusTopic** | **string** |  | 
**PublishReportActualConfigurationTopic** | **string** |  | 
**SubUpdateCertsTopic** | **string** |  | 
**PublishDeprovisionTopic** | **string** |  | 
**SubDeprovisionTopic** | **string** |  | 
**SubUpdateLogSubscriptionTopic** | **string** |  | 

## Methods

### NewHostSettings

`func NewHostSettings(mqttAlpnProtocol string, pairingTimeoutSeconds float32, minimumIntervalPublishSeconds float32, mqttKeepaliveSeconds float32, subUpdateTopic string, subUpdateThumbnailSubscriptionTopic string, publishReportSchemaTopic string, publishReportRegistrationTopic string, publishReportStatusTopic string, publishReportActualConfigurationTopic string, subUpdateCertsTopic string, publishDeprovisionTopic string, subDeprovisionTopic string, subUpdateLogSubscriptionTopic string, ) *HostSettings`

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


### GetSubUpdateTopic

`func (o *HostSettings) GetSubUpdateTopic() string`

GetSubUpdateTopic returns the SubUpdateTopic field if non-nil, zero value otherwise.

### GetSubUpdateTopicOk

`func (o *HostSettings) GetSubUpdateTopicOk() (*string, bool)`

GetSubUpdateTopicOk returns a tuple with the SubUpdateTopic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubUpdateTopic

`func (o *HostSettings) SetSubUpdateTopic(v string)`

SetSubUpdateTopic sets SubUpdateTopic field to given value.


### GetSubUpdateThumbnailSubscriptionTopic

`func (o *HostSettings) GetSubUpdateThumbnailSubscriptionTopic() string`

GetSubUpdateThumbnailSubscriptionTopic returns the SubUpdateThumbnailSubscriptionTopic field if non-nil, zero value otherwise.

### GetSubUpdateThumbnailSubscriptionTopicOk

`func (o *HostSettings) GetSubUpdateThumbnailSubscriptionTopicOk() (*string, bool)`

GetSubUpdateThumbnailSubscriptionTopicOk returns a tuple with the SubUpdateThumbnailSubscriptionTopic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubUpdateThumbnailSubscriptionTopic

`func (o *HostSettings) SetSubUpdateThumbnailSubscriptionTopic(v string)`

SetSubUpdateThumbnailSubscriptionTopic sets SubUpdateThumbnailSubscriptionTopic field to given value.


### GetPublishReportSchemaTopic

`func (o *HostSettings) GetPublishReportSchemaTopic() string`

GetPublishReportSchemaTopic returns the PublishReportSchemaTopic field if non-nil, zero value otherwise.

### GetPublishReportSchemaTopicOk

`func (o *HostSettings) GetPublishReportSchemaTopicOk() (*string, bool)`

GetPublishReportSchemaTopicOk returns a tuple with the PublishReportSchemaTopic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPublishReportSchemaTopic

`func (o *HostSettings) SetPublishReportSchemaTopic(v string)`

SetPublishReportSchemaTopic sets PublishReportSchemaTopic field to given value.


### GetPublishReportRegistrationTopic

`func (o *HostSettings) GetPublishReportRegistrationTopic() string`

GetPublishReportRegistrationTopic returns the PublishReportRegistrationTopic field if non-nil, zero value otherwise.

### GetPublishReportRegistrationTopicOk

`func (o *HostSettings) GetPublishReportRegistrationTopicOk() (*string, bool)`

GetPublishReportRegistrationTopicOk returns a tuple with the PublishReportRegistrationTopic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPublishReportRegistrationTopic

`func (o *HostSettings) SetPublishReportRegistrationTopic(v string)`

SetPublishReportRegistrationTopic sets PublishReportRegistrationTopic field to given value.


### GetPublishReportStatusTopic

`func (o *HostSettings) GetPublishReportStatusTopic() string`

GetPublishReportStatusTopic returns the PublishReportStatusTopic field if non-nil, zero value otherwise.

### GetPublishReportStatusTopicOk

`func (o *HostSettings) GetPublishReportStatusTopicOk() (*string, bool)`

GetPublishReportStatusTopicOk returns a tuple with the PublishReportStatusTopic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPublishReportStatusTopic

`func (o *HostSettings) SetPublishReportStatusTopic(v string)`

SetPublishReportStatusTopic sets PublishReportStatusTopic field to given value.


### GetPublishReportActualConfigurationTopic

`func (o *HostSettings) GetPublishReportActualConfigurationTopic() string`

GetPublishReportActualConfigurationTopic returns the PublishReportActualConfigurationTopic field if non-nil, zero value otherwise.

### GetPublishReportActualConfigurationTopicOk

`func (o *HostSettings) GetPublishReportActualConfigurationTopicOk() (*string, bool)`

GetPublishReportActualConfigurationTopicOk returns a tuple with the PublishReportActualConfigurationTopic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPublishReportActualConfigurationTopic

`func (o *HostSettings) SetPublishReportActualConfigurationTopic(v string)`

SetPublishReportActualConfigurationTopic sets PublishReportActualConfigurationTopic field to given value.


### GetSubUpdateCertsTopic

`func (o *HostSettings) GetSubUpdateCertsTopic() string`

GetSubUpdateCertsTopic returns the SubUpdateCertsTopic field if non-nil, zero value otherwise.

### GetSubUpdateCertsTopicOk

`func (o *HostSettings) GetSubUpdateCertsTopicOk() (*string, bool)`

GetSubUpdateCertsTopicOk returns a tuple with the SubUpdateCertsTopic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubUpdateCertsTopic

`func (o *HostSettings) SetSubUpdateCertsTopic(v string)`

SetSubUpdateCertsTopic sets SubUpdateCertsTopic field to given value.


### GetPublishDeprovisionTopic

`func (o *HostSettings) GetPublishDeprovisionTopic() string`

GetPublishDeprovisionTopic returns the PublishDeprovisionTopic field if non-nil, zero value otherwise.

### GetPublishDeprovisionTopicOk

`func (o *HostSettings) GetPublishDeprovisionTopicOk() (*string, bool)`

GetPublishDeprovisionTopicOk returns a tuple with the PublishDeprovisionTopic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPublishDeprovisionTopic

`func (o *HostSettings) SetPublishDeprovisionTopic(v string)`

SetPublishDeprovisionTopic sets PublishDeprovisionTopic field to given value.


### GetSubDeprovisionTopic

`func (o *HostSettings) GetSubDeprovisionTopic() string`

GetSubDeprovisionTopic returns the SubDeprovisionTopic field if non-nil, zero value otherwise.

### GetSubDeprovisionTopicOk

`func (o *HostSettings) GetSubDeprovisionTopicOk() (*string, bool)`

GetSubDeprovisionTopicOk returns a tuple with the SubDeprovisionTopic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubDeprovisionTopic

`func (o *HostSettings) SetSubDeprovisionTopic(v string)`

SetSubDeprovisionTopic sets SubDeprovisionTopic field to given value.


### GetSubUpdateLogSubscriptionTopic

`func (o *HostSettings) GetSubUpdateLogSubscriptionTopic() string`

GetSubUpdateLogSubscriptionTopic returns the SubUpdateLogSubscriptionTopic field if non-nil, zero value otherwise.

### GetSubUpdateLogSubscriptionTopicOk

`func (o *HostSettings) GetSubUpdateLogSubscriptionTopicOk() (*string, bool)`

GetSubUpdateLogSubscriptionTopicOk returns a tuple with the SubUpdateLogSubscriptionTopic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSubUpdateLogSubscriptionTopic

`func (o *HostSettings) SetSubUpdateLogSubscriptionTopic(v string)`

SetSubUpdateLogSubscriptionTopic sets SubUpdateLogSubscriptionTopic field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


