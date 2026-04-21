# ThumbnailRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PeriodSeconds** | Pointer to **float32** |  | [optional] 
**ExpiresAt** | Pointer to **time.Time** |  | [optional] 
**MaxSizeKB** | Pointer to **float32** |  | [optional] 
**LocalPath** | Pointer to **string** |  | [optional] 
**RemotePath** | Pointer to **string** |  | [optional] 
**Headers** | Pointer to **map[string]string** |  | [optional] 

## Methods

### NewThumbnailRequest

`func NewThumbnailRequest() *ThumbnailRequest`

NewThumbnailRequest instantiates a new ThumbnailRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewThumbnailRequestWithDefaults

`func NewThumbnailRequestWithDefaults() *ThumbnailRequest`

NewThumbnailRequestWithDefaults instantiates a new ThumbnailRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPeriodSeconds

`func (o *ThumbnailRequest) GetPeriodSeconds() float32`

GetPeriodSeconds returns the PeriodSeconds field if non-nil, zero value otherwise.

### GetPeriodSecondsOk

`func (o *ThumbnailRequest) GetPeriodSecondsOk() (*float32, bool)`

GetPeriodSecondsOk returns a tuple with the PeriodSeconds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPeriodSeconds

`func (o *ThumbnailRequest) SetPeriodSeconds(v float32)`

SetPeriodSeconds sets PeriodSeconds field to given value.

### HasPeriodSeconds

`func (o *ThumbnailRequest) HasPeriodSeconds() bool`

HasPeriodSeconds returns a boolean if a field has been set.

### GetExpiresAt

`func (o *ThumbnailRequest) GetExpiresAt() time.Time`

GetExpiresAt returns the ExpiresAt field if non-nil, zero value otherwise.

### GetExpiresAtOk

`func (o *ThumbnailRequest) GetExpiresAtOk() (*time.Time, bool)`

GetExpiresAtOk returns a tuple with the ExpiresAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresAt

`func (o *ThumbnailRequest) SetExpiresAt(v time.Time)`

SetExpiresAt sets ExpiresAt field to given value.

### HasExpiresAt

`func (o *ThumbnailRequest) HasExpiresAt() bool`

HasExpiresAt returns a boolean if a field has been set.

### GetMaxSizeKB

`func (o *ThumbnailRequest) GetMaxSizeKB() float32`

GetMaxSizeKB returns the MaxSizeKB field if non-nil, zero value otherwise.

### GetMaxSizeKBOk

`func (o *ThumbnailRequest) GetMaxSizeKBOk() (*float32, bool)`

GetMaxSizeKBOk returns a tuple with the MaxSizeKB field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaxSizeKB

`func (o *ThumbnailRequest) SetMaxSizeKB(v float32)`

SetMaxSizeKB sets MaxSizeKB field to given value.

### HasMaxSizeKB

`func (o *ThumbnailRequest) HasMaxSizeKB() bool`

HasMaxSizeKB returns a boolean if a field has been set.

### GetLocalPath

`func (o *ThumbnailRequest) GetLocalPath() string`

GetLocalPath returns the LocalPath field if non-nil, zero value otherwise.

### GetLocalPathOk

`func (o *ThumbnailRequest) GetLocalPathOk() (*string, bool)`

GetLocalPathOk returns a tuple with the LocalPath field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocalPath

`func (o *ThumbnailRequest) SetLocalPath(v string)`

SetLocalPath sets LocalPath field to given value.

### HasLocalPath

`func (o *ThumbnailRequest) HasLocalPath() bool`

HasLocalPath returns a boolean if a field has been set.

### GetRemotePath

`func (o *ThumbnailRequest) GetRemotePath() string`

GetRemotePath returns the RemotePath field if non-nil, zero value otherwise.

### GetRemotePathOk

`func (o *ThumbnailRequest) GetRemotePathOk() (*string, bool)`

GetRemotePathOk returns a tuple with the RemotePath field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRemotePath

`func (o *ThumbnailRequest) SetRemotePath(v string)`

SetRemotePath sets RemotePath field to given value.

### HasRemotePath

`func (o *ThumbnailRequest) HasRemotePath() bool`

HasRemotePath returns a boolean if a field has been set.

### GetHeaders

`func (o *ThumbnailRequest) GetHeaders() map[string]string`

GetHeaders returns the Headers field if non-nil, zero value otherwise.

### GetHeadersOk

`func (o *ThumbnailRequest) GetHeadersOk() (*map[string]string, bool)`

GetHeadersOk returns a tuple with the Headers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHeaders

`func (o *ThumbnailRequest) SetHeaders(v map[string]string)`

SetHeaders sets Headers field to given value.

### HasHeaders

`func (o *ThumbnailRequest) HasHeaders() bool`

HasHeaders returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


