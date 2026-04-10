# ThumbnailRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PeriodSeconds** | Pointer to **float32** |  | [optional] 
**ExpiresTimestamp** | Pointer to **time.Time** |  | [optional] 
**MaxSizeKilobyte** | Pointer to **float32** |  | [optional] 
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

### GetExpiresTimestamp

`func (o *ThumbnailRequest) GetExpiresTimestamp() time.Time`

GetExpiresTimestamp returns the ExpiresTimestamp field if non-nil, zero value otherwise.

### GetExpiresTimestampOk

`func (o *ThumbnailRequest) GetExpiresTimestampOk() (*time.Time, bool)`

GetExpiresTimestampOk returns a tuple with the ExpiresTimestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresTimestamp

`func (o *ThumbnailRequest) SetExpiresTimestamp(v time.Time)`

SetExpiresTimestamp sets ExpiresTimestamp field to given value.

### HasExpiresTimestamp

`func (o *ThumbnailRequest) HasExpiresTimestamp() bool`

HasExpiresTimestamp returns a boolean if a field has been set.

### GetMaxSizeKilobyte

`func (o *ThumbnailRequest) GetMaxSizeKilobyte() float32`

GetMaxSizeKilobyte returns the MaxSizeKilobyte field if non-nil, zero value otherwise.

### GetMaxSizeKilobyteOk

`func (o *ThumbnailRequest) GetMaxSizeKilobyteOk() (*float32, bool)`

GetMaxSizeKilobyteOk returns a tuple with the MaxSizeKilobyte field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaxSizeKilobyte

`func (o *ThumbnailRequest) SetMaxSizeKilobyte(v float32)`

SetMaxSizeKilobyte sets MaxSizeKilobyte field to given value.

### HasMaxSizeKilobyte

`func (o *ThumbnailRequest) HasMaxSizeKilobyte() bool`

HasMaxSizeKilobyte returns a boolean if a field has been set.

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


