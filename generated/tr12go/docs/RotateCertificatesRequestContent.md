# RotateCertificatesRequestContent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MqttUri** | **string** |  | 
**DeviceCertificate** | **string** |  | 
**RegionName** | Pointer to **string** |  | [optional] 

## Methods

### NewRotateCertificatesRequestContent

`func NewRotateCertificatesRequestContent(mqttUri string, deviceCertificate string, ) *RotateCertificatesRequestContent`

NewRotateCertificatesRequestContent instantiates a new RotateCertificatesRequestContent object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRotateCertificatesRequestContentWithDefaults

`func NewRotateCertificatesRequestContentWithDefaults() *RotateCertificatesRequestContent`

NewRotateCertificatesRequestContentWithDefaults instantiates a new RotateCertificatesRequestContent object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMqttUri

`func (o *RotateCertificatesRequestContent) GetMqttUri() string`

GetMqttUri returns the MqttUri field if non-nil, zero value otherwise.

### GetMqttUriOk

`func (o *RotateCertificatesRequestContent) GetMqttUriOk() (*string, bool)`

GetMqttUriOk returns a tuple with the MqttUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMqttUri

`func (o *RotateCertificatesRequestContent) SetMqttUri(v string)`

SetMqttUri sets MqttUri field to given value.


### GetDeviceCertificate

`func (o *RotateCertificatesRequestContent) GetDeviceCertificate() string`

GetDeviceCertificate returns the DeviceCertificate field if non-nil, zero value otherwise.

### GetDeviceCertificateOk

`func (o *RotateCertificatesRequestContent) GetDeviceCertificateOk() (*string, bool)`

GetDeviceCertificateOk returns a tuple with the DeviceCertificate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeviceCertificate

`func (o *RotateCertificatesRequestContent) SetDeviceCertificate(v string)`

SetDeviceCertificate sets DeviceCertificate field to given value.


### GetRegionName

`func (o *RotateCertificatesRequestContent) GetRegionName() string`

GetRegionName returns the RegionName field if non-nil, zero value otherwise.

### GetRegionNameOk

`func (o *RotateCertificatesRequestContent) GetRegionNameOk() (*string, bool)`

GetRegionNameOk returns a tuple with the RegionName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRegionName

`func (o *RotateCertificatesRequestContent) SetRegionName(v string)`

SetRegionName sets RegionName field to given value.

### HasRegionName

`func (o *RotateCertificatesRequestContent) HasRegionName() bool`

HasRegionName returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


