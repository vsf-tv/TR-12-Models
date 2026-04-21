# GetHostConfigResponseContent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ServiceId** | **string** |  | 
**ServiceName** | **string** |  | 
**DeviceTypes** | [**[]DeviceType**](DeviceType.md) |  | 
**ThumbnailMaximumSizeKB** | **float32** |  | 
**LogFileMaximumSizeKB** | **float32** |  | 
**CreatePairingCodeUrl** | **string** |  | 
**AuthenticatePairingCodeUrl** | **string** |  | 

## Methods

### NewGetHostConfigResponseContent

`func NewGetHostConfigResponseContent(serviceId string, serviceName string, deviceTypes []DeviceType, thumbnailMaximumSizeKB float32, logFileMaximumSizeKB float32, createPairingCodeUrl string, authenticatePairingCodeUrl string, ) *GetHostConfigResponseContent`

NewGetHostConfigResponseContent instantiates a new GetHostConfigResponseContent object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewGetHostConfigResponseContentWithDefaults

`func NewGetHostConfigResponseContentWithDefaults() *GetHostConfigResponseContent`

NewGetHostConfigResponseContentWithDefaults instantiates a new GetHostConfigResponseContent object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetServiceId

`func (o *GetHostConfigResponseContent) GetServiceId() string`

GetServiceId returns the ServiceId field if non-nil, zero value otherwise.

### GetServiceIdOk

`func (o *GetHostConfigResponseContent) GetServiceIdOk() (*string, bool)`

GetServiceIdOk returns a tuple with the ServiceId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServiceId

`func (o *GetHostConfigResponseContent) SetServiceId(v string)`

SetServiceId sets ServiceId field to given value.


### GetServiceName

`func (o *GetHostConfigResponseContent) GetServiceName() string`

GetServiceName returns the ServiceName field if non-nil, zero value otherwise.

### GetServiceNameOk

`func (o *GetHostConfigResponseContent) GetServiceNameOk() (*string, bool)`

GetServiceNameOk returns a tuple with the ServiceName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetServiceName

`func (o *GetHostConfigResponseContent) SetServiceName(v string)`

SetServiceName sets ServiceName field to given value.


### GetDeviceTypes

`func (o *GetHostConfigResponseContent) GetDeviceTypes() []DeviceType`

GetDeviceTypes returns the DeviceTypes field if non-nil, zero value otherwise.

### GetDeviceTypesOk

`func (o *GetHostConfigResponseContent) GetDeviceTypesOk() (*[]DeviceType, bool)`

GetDeviceTypesOk returns a tuple with the DeviceTypes field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeviceTypes

`func (o *GetHostConfigResponseContent) SetDeviceTypes(v []DeviceType)`

SetDeviceTypes sets DeviceTypes field to given value.


### GetThumbnailMaximumSizeKB

`func (o *GetHostConfigResponseContent) GetThumbnailMaximumSizeKB() float32`

GetThumbnailMaximumSizeKB returns the ThumbnailMaximumSizeKB field if non-nil, zero value otherwise.

### GetThumbnailMaximumSizeKBOk

`func (o *GetHostConfigResponseContent) GetThumbnailMaximumSizeKBOk() (*float32, bool)`

GetThumbnailMaximumSizeKBOk returns a tuple with the ThumbnailMaximumSizeKB field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetThumbnailMaximumSizeKB

`func (o *GetHostConfigResponseContent) SetThumbnailMaximumSizeKB(v float32)`

SetThumbnailMaximumSizeKB sets ThumbnailMaximumSizeKB field to given value.


### GetLogFileMaximumSizeKB

`func (o *GetHostConfigResponseContent) GetLogFileMaximumSizeKB() float32`

GetLogFileMaximumSizeKB returns the LogFileMaximumSizeKB field if non-nil, zero value otherwise.

### GetLogFileMaximumSizeKBOk

`func (o *GetHostConfigResponseContent) GetLogFileMaximumSizeKBOk() (*float32, bool)`

GetLogFileMaximumSizeKBOk returns a tuple with the LogFileMaximumSizeKB field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLogFileMaximumSizeKB

`func (o *GetHostConfigResponseContent) SetLogFileMaximumSizeKB(v float32)`

SetLogFileMaximumSizeKB sets LogFileMaximumSizeKB field to given value.


### GetCreatePairingCodeUrl

`func (o *GetHostConfigResponseContent) GetCreatePairingCodeUrl() string`

GetCreatePairingCodeUrl returns the CreatePairingCodeUrl field if non-nil, zero value otherwise.

### GetCreatePairingCodeUrlOk

`func (o *GetHostConfigResponseContent) GetCreatePairingCodeUrlOk() (*string, bool)`

GetCreatePairingCodeUrlOk returns a tuple with the CreatePairingCodeUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatePairingCodeUrl

`func (o *GetHostConfigResponseContent) SetCreatePairingCodeUrl(v string)`

SetCreatePairingCodeUrl sets CreatePairingCodeUrl field to given value.


### GetAuthenticatePairingCodeUrl

`func (o *GetHostConfigResponseContent) GetAuthenticatePairingCodeUrl() string`

GetAuthenticatePairingCodeUrl returns the AuthenticatePairingCodeUrl field if non-nil, zero value otherwise.

### GetAuthenticatePairingCodeUrlOk

`func (o *GetHostConfigResponseContent) GetAuthenticatePairingCodeUrlOk() (*string, bool)`

GetAuthenticatePairingCodeUrlOk returns a tuple with the AuthenticatePairingCodeUrl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAuthenticatePairingCodeUrl

`func (o *GetHostConfigResponseContent) SetAuthenticatePairingCodeUrl(v string)`

SetAuthenticatePairingCodeUrl sets AuthenticatePairingCodeUrl field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


