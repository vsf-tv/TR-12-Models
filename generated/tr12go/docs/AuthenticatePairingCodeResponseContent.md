# AuthenticatePairingCodeResponseContent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | [**PairingCodeAuthorizedStatus**](PairingCodeAuthorizedStatus.md) |  | 
**CaCertificate** | Pointer to **string** |  | [optional] 
**DeviceCertificate** | Pointer to **string** |  | [optional] 
**MqttUri** | Pointer to **string** |  | [optional] 
**RegionName** | Pointer to **string** |  | [optional] 
**HostSettings** | Pointer to [**HostSettings**](HostSettings.md) |  | [optional] 

## Methods

### NewAuthenticatePairingCodeResponseContent

`func NewAuthenticatePairingCodeResponseContent(status PairingCodeAuthorizedStatus, ) *AuthenticatePairingCodeResponseContent`

NewAuthenticatePairingCodeResponseContent instantiates a new AuthenticatePairingCodeResponseContent object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAuthenticatePairingCodeResponseContentWithDefaults

`func NewAuthenticatePairingCodeResponseContentWithDefaults() *AuthenticatePairingCodeResponseContent`

NewAuthenticatePairingCodeResponseContentWithDefaults instantiates a new AuthenticatePairingCodeResponseContent object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetStatus

`func (o *AuthenticatePairingCodeResponseContent) GetStatus() PairingCodeAuthorizedStatus`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *AuthenticatePairingCodeResponseContent) GetStatusOk() (*PairingCodeAuthorizedStatus, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *AuthenticatePairingCodeResponseContent) SetStatus(v PairingCodeAuthorizedStatus)`

SetStatus sets Status field to given value.


### GetCaCertificate

`func (o *AuthenticatePairingCodeResponseContent) GetCaCertificate() string`

GetCaCertificate returns the CaCertificate field if non-nil, zero value otherwise.

### GetCaCertificateOk

`func (o *AuthenticatePairingCodeResponseContent) GetCaCertificateOk() (*string, bool)`

GetCaCertificateOk returns a tuple with the CaCertificate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCaCertificate

`func (o *AuthenticatePairingCodeResponseContent) SetCaCertificate(v string)`

SetCaCertificate sets CaCertificate field to given value.

### HasCaCertificate

`func (o *AuthenticatePairingCodeResponseContent) HasCaCertificate() bool`

HasCaCertificate returns a boolean if a field has been set.

### GetDeviceCertificate

`func (o *AuthenticatePairingCodeResponseContent) GetDeviceCertificate() string`

GetDeviceCertificate returns the DeviceCertificate field if non-nil, zero value otherwise.

### GetDeviceCertificateOk

`func (o *AuthenticatePairingCodeResponseContent) GetDeviceCertificateOk() (*string, bool)`

GetDeviceCertificateOk returns a tuple with the DeviceCertificate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDeviceCertificate

`func (o *AuthenticatePairingCodeResponseContent) SetDeviceCertificate(v string)`

SetDeviceCertificate sets DeviceCertificate field to given value.

### HasDeviceCertificate

`func (o *AuthenticatePairingCodeResponseContent) HasDeviceCertificate() bool`

HasDeviceCertificate returns a boolean if a field has been set.

### GetMqttUri

`func (o *AuthenticatePairingCodeResponseContent) GetMqttUri() string`

GetMqttUri returns the MqttUri field if non-nil, zero value otherwise.

### GetMqttUriOk

`func (o *AuthenticatePairingCodeResponseContent) GetMqttUriOk() (*string, bool)`

GetMqttUriOk returns a tuple with the MqttUri field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMqttUri

`func (o *AuthenticatePairingCodeResponseContent) SetMqttUri(v string)`

SetMqttUri sets MqttUri field to given value.

### HasMqttUri

`func (o *AuthenticatePairingCodeResponseContent) HasMqttUri() bool`

HasMqttUri returns a boolean if a field has been set.

### GetRegionName

`func (o *AuthenticatePairingCodeResponseContent) GetRegionName() string`

GetRegionName returns the RegionName field if non-nil, zero value otherwise.

### GetRegionNameOk

`func (o *AuthenticatePairingCodeResponseContent) GetRegionNameOk() (*string, bool)`

GetRegionNameOk returns a tuple with the RegionName field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRegionName

`func (o *AuthenticatePairingCodeResponseContent) SetRegionName(v string)`

SetRegionName sets RegionName field to given value.

### HasRegionName

`func (o *AuthenticatePairingCodeResponseContent) HasRegionName() bool`

HasRegionName returns a boolean if a field has been set.

### GetHostSettings

`func (o *AuthenticatePairingCodeResponseContent) GetHostSettings() HostSettings`

GetHostSettings returns the HostSettings field if non-nil, zero value otherwise.

### GetHostSettingsOk

`func (o *AuthenticatePairingCodeResponseContent) GetHostSettingsOk() (*HostSettings, bool)`

GetHostSettingsOk returns a tuple with the HostSettings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHostSettings

`func (o *AuthenticatePairingCodeResponseContent) SetHostSettings(v HostSettings)`

SetHostSettings sets HostSettings field to given value.

### HasHostSettings

`func (o *AuthenticatePairingCodeResponseContent) HasHostSettings() bool`

HasHostSettings returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


