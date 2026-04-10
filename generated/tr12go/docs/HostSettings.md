# HostSettings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IotProtocolName** | **string** |  | 
**PairingTimeoutSeconds** | **float32** |  | 
**MinIntervalPubSeconds** | **float32** |  | 
**MqttKeepaliveSeconds** | **float32** |  | 
**SubUpdateTopic** | **string** |  | 
**SubUpdateThumbnailSubscriptionTopic** | **string** |  | 
**PubReportSchemaTopic** | **string** |  | 
**PubReportRegistrationTopic** | **string** |  | 
**PubReportStatusTopic** | **string** |  | 
**PubReportActualConfigurationTopic** | **string** |  | 
**SubUpdateCertsTopic** | **string** |  | 
**PubDeprovisionTopic** | **string** |  | 
**SubDeprovisionTopic** | **string** |  | 
**SubUpdateLogSubscriptionTopic** | **string** |  | 

## Methods

### NewHostSettings

`func NewHostSettings(iotProtocolName string, pairingTimeoutSeconds float32, minIntervalPubSeconds float32, mqttKeepaliveSeconds float32, subUpdateTopic string, subUpdateThumbnailSubscriptionTopic string, pubReportSchemaTopic string, pubReportRegistrationTopic string, pubReportStatusTopic string, pubReportActualConfigurationTopic string, subUpdateCertsTopic string, pubDeprovisionTopic string, subDeprovisionTopic string, subUpdateLogSubscriptionTopic string, ) *HostSettings`

NewHostSettings instantiates a new HostSettings object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewHostSettingsWithDefaults

`func NewHostSettingsWithDefaults() *HostSettings`

NewHostSettingsWithDefaults instantiates a new HostSettings object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetIotProtocolName

`func (o *HostSettings) GetIotProtocolName() string`

GetIotProtocolName returns the IotProtocolName field if non-nil, zero value otherwise.

### GetIotProtocolNameOk

`func (o *HostSettings) GetIotProtocolNameOk() (*string, bool)`

GetIotProtocolNameOk returns a tuple with the IotProtocolName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIotProtocolName

`func (o *HostSettings) SetIotProtocolName(v string)`

SetIotProtocolName sets IotProtocolName field to given value.


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


### GetMinIntervalPubSeconds

`func (o *HostSettings) GetMinIntervalPubSeconds() float32`

GetMinIntervalPubSeconds returns the MinIntervalPubSeconds field if non-nil, zero value otherwise.

### GetMinIntervalPubSecondsOk

`func (o *HostSettings) GetMinIntervalPubSecondsOk() (*float32, bool)`

GetMinIntervalPubSecondsOk returns a tuple with the MinIntervalPubSeconds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMinIntervalPubSeconds

`func (o *HostSettings) SetMinIntervalPubSeconds(v float32)`

SetMinIntervalPubSeconds sets MinIntervalPubSeconds field to given value.


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


### GetPubReportSchemaTopic

`func (o *HostSettings) GetPubReportSchemaTopic() string`

GetPubReportSchemaTopic returns the PubReportSchemaTopic field if non-nil, zero value otherwise.

### GetPubReportSchemaTopicOk

`func (o *HostSettings) GetPubReportSchemaTopicOk() (*string, bool)`

GetPubReportSchemaTopicOk returns a tuple with the PubReportSchemaTopic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPubReportSchemaTopic

`func (o *HostSettings) SetPubReportSchemaTopic(v string)`

SetPubReportSchemaTopic sets PubReportSchemaTopic field to given value.


### GetPubReportRegistrationTopic

`func (o *HostSettings) GetPubReportRegistrationTopic() string`

GetPubReportRegistrationTopic returns the PubReportRegistrationTopic field if non-nil, zero value otherwise.

### GetPubReportRegistrationTopicOk

`func (o *HostSettings) GetPubReportRegistrationTopicOk() (*string, bool)`

GetPubReportRegistrationTopicOk returns a tuple with the PubReportRegistrationTopic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPubReportRegistrationTopic

`func (o *HostSettings) SetPubReportRegistrationTopic(v string)`

SetPubReportRegistrationTopic sets PubReportRegistrationTopic field to given value.


### GetPubReportStatusTopic

`func (o *HostSettings) GetPubReportStatusTopic() string`

GetPubReportStatusTopic returns the PubReportStatusTopic field if non-nil, zero value otherwise.

### GetPubReportStatusTopicOk

`func (o *HostSettings) GetPubReportStatusTopicOk() (*string, bool)`

GetPubReportStatusTopicOk returns a tuple with the PubReportStatusTopic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPubReportStatusTopic

`func (o *HostSettings) SetPubReportStatusTopic(v string)`

SetPubReportStatusTopic sets PubReportStatusTopic field to given value.


### GetPubReportActualConfigurationTopic

`func (o *HostSettings) GetPubReportActualConfigurationTopic() string`

GetPubReportActualConfigurationTopic returns the PubReportActualConfigurationTopic field if non-nil, zero value otherwise.

### GetPubReportActualConfigurationTopicOk

`func (o *HostSettings) GetPubReportActualConfigurationTopicOk() (*string, bool)`

GetPubReportActualConfigurationTopicOk returns a tuple with the PubReportActualConfigurationTopic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPubReportActualConfigurationTopic

`func (o *HostSettings) SetPubReportActualConfigurationTopic(v string)`

SetPubReportActualConfigurationTopic sets PubReportActualConfigurationTopic field to given value.


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


### GetPubDeprovisionTopic

`func (o *HostSettings) GetPubDeprovisionTopic() string`

GetPubDeprovisionTopic returns the PubDeprovisionTopic field if non-nil, zero value otherwise.

### GetPubDeprovisionTopicOk

`func (o *HostSettings) GetPubDeprovisionTopicOk() (*string, bool)`

GetPubDeprovisionTopicOk returns a tuple with the PubDeprovisionTopic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPubDeprovisionTopic

`func (o *HostSettings) SetPubDeprovisionTopic(v string)`

SetPubDeprovisionTopic sets PubDeprovisionTopic field to given value.


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


