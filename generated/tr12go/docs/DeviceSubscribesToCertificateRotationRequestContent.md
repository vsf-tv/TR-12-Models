# DeviceSubscribesToCertificateRotationRequestContent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**MqttUri** | **string** |  | 
**DeviceCertificate** | **string** |  | 
**RegionName** | Pointer to **string** |  | [optional] 

## Methods

### NewDeviceSubscribesToCertificateRotationRequestContent

`func NewDeviceSubscribesToCertificateRotationRequestContent(mqttUri string, deviceCertificate string, ) *DeviceSubscribesToCertificateRotationRequestContent`

NewDeviceSubscribesToCertificateRotationRequestContent instantiates a new DeviceSubscribesToCertificateRotationRequestContent object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDeviceSubscribesToCertificateRotationRequestContentWithDefaults

`func NewDeviceSubscribesToCertificateRotationRequestContentWithDefaults() *DeviceSubscribesToCertificateRotationRequestContent`

NewDeviceSubscribesToCertificateRotationRequestContentWithDefaults instantiates a new DeviceSubscribesToCertificateRotationRequestContent object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetMqttUri

`func (o *DeviceSubscribesToCertificateRotationRequestContent) GetMqttUri() string`

GetMqttUri returns the MqttUri field if non-nil, zero value otherwise.

### GetMqttUriOk

`func (o *DeviceSubscribesToCertificateRotationRequestContent) GetMqttUriOk() (*string, bool)`

GetMqttUriOk returns a tuple with the MqttUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMqttUri

`func (o *DeviceSubscribesToCertificateRotationRequestContent) SetMqttUri(v string)`

SetMqttUri sets MqttUri field to given value.


### GetDeviceCertificate

`func (o *DeviceSubscribesToCertificateRotationRequestContent) GetDeviceCertificate() string`

GetDeviceCertificate returns the DeviceCertificate field if non-nil, zero value otherwise.

### GetDeviceCertificateOk

`func (o *DeviceSubscribesToCertificateRotationRequestContent) GetDeviceCertificateOk() (*string, bool)`

GetDeviceCertificateOk returns a tuple with the DeviceCertificate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeviceCertificate

`func (o *DeviceSubscribesToCertificateRotationRequestContent) SetDeviceCertificate(v string)`

SetDeviceCertificate sets DeviceCertificate field to given value.


### GetRegionName

`func (o *DeviceSubscribesToCertificateRotationRequestContent) GetRegionName() string`

GetRegionName returns the RegionName field if non-nil, zero value otherwise.

### GetRegionNameOk

`func (o *DeviceSubscribesToCertificateRotationRequestContent) GetRegionNameOk() (*string, bool)`

GetRegionNameOk returns a tuple with the RegionName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRegionName

`func (o *DeviceSubscribesToCertificateRotationRequestContent) SetRegionName(v string)`

SetRegionName sets RegionName field to given value.

### HasRegionName

`func (o *DeviceSubscribesToCertificateRotationRequestContent) HasRegionName() bool`

HasRegionName returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


