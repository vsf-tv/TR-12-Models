# CreatePairingCodeRequestContent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DeviceType** | [**DeviceType**](DeviceType.md) |  | 
**HostId** | **string** |  | 
**CertificateSigningRequest** | **string** | A PEM-encoded certificate signing request. Treated as sensitive. | 
**Version** | [**ProtocolVersion**](ProtocolVersion.md) |  | 

## Methods

### NewCreatePairingCodeRequestContent

`func NewCreatePairingCodeRequestContent(deviceType DeviceType, hostId string, certificateSigningRequest string, version ProtocolVersion, ) *CreatePairingCodeRequestContent`

NewCreatePairingCodeRequestContent instantiates a new CreatePairingCodeRequestContent object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCreatePairingCodeRequestContentWithDefaults

`func NewCreatePairingCodeRequestContentWithDefaults() *CreatePairingCodeRequestContent`

NewCreatePairingCodeRequestContentWithDefaults instantiates a new CreatePairingCodeRequestContent object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDeviceType

`func (o *CreatePairingCodeRequestContent) GetDeviceType() DeviceType`

GetDeviceType returns the DeviceType field if non-nil, zero value otherwise.

### GetDeviceTypeOk

`func (o *CreatePairingCodeRequestContent) GetDeviceTypeOk() (*DeviceType, bool)`

GetDeviceTypeOk returns a tuple with the DeviceType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeviceType

`func (o *CreatePairingCodeRequestContent) SetDeviceType(v DeviceType)`

SetDeviceType sets DeviceType field to given value.


### GetHostId

`func (o *CreatePairingCodeRequestContent) GetHostId() string`

GetHostId returns the HostId field if non-nil, zero value otherwise.

### GetHostIdOk

`func (o *CreatePairingCodeRequestContent) GetHostIdOk() (*string, bool)`

GetHostIdOk returns a tuple with the HostId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHostId

`func (o *CreatePairingCodeRequestContent) SetHostId(v string)`

SetHostId sets HostId field to given value.


### GetCertificateSigningRequest

`func (o *CreatePairingCodeRequestContent) GetCertificateSigningRequest() string`

GetCertificateSigningRequest returns the CertificateSigningRequest field if non-nil, zero value otherwise.

### GetCertificateSigningRequestOk

`func (o *CreatePairingCodeRequestContent) GetCertificateSigningRequestOk() (*string, bool)`

GetCertificateSigningRequestOk returns a tuple with the CertificateSigningRequest field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCertificateSigningRequest

`func (o *CreatePairingCodeRequestContent) SetCertificateSigningRequest(v string)`

SetCertificateSigningRequest sets CertificateSigningRequest field to given value.


### GetVersion

`func (o *CreatePairingCodeRequestContent) GetVersion() ProtocolVersion`

GetVersion returns the Version field if non-nil, zero value otherwise.

### GetVersionOk

`func (o *CreatePairingCodeRequestContent) GetVersionOk() (*ProtocolVersion, bool)`

GetVersionOk returns a tuple with the Version field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVersion

`func (o *CreatePairingCodeRequestContent) SetVersion(v ProtocolVersion)`

SetVersion sets Version field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


