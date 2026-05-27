# ThumbnailSubscription

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PeriodSeconds** | Pointer to **float32** |  | [optional] 
**ExpiresAt** | Pointer to **time.Time** |  | [optional] 
**MaxSizeKB** | Pointer to **float32** |  | [optional] 
**RemotePath** | Pointer to **string** |  | [optional] 
**Headers** | Pointer to **map[string]string** |  | [optional] 

## Methods

### NewThumbnailSubscription

`func NewThumbnailSubscription() *ThumbnailSubscription`

NewThumbnailSubscription instantiates a new ThumbnailSubscription object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewThumbnailSubscriptionWithDefaults

`func NewThumbnailSubscriptionWithDefaults() *ThumbnailSubscription`

NewThumbnailSubscriptionWithDefaults instantiates a new ThumbnailSubscription object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPeriodSeconds

`func (o *ThumbnailSubscription) GetPeriodSeconds() float32`

GetPeriodSeconds returns the PeriodSeconds field if non-nil, zero value otherwise.

### GetPeriodSecondsOk

`func (o *ThumbnailSubscription) GetPeriodSecondsOk() (*float32, bool)`

GetPeriodSecondsOk returns a tuple with the PeriodSeconds field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPeriodSeconds

`func (o *ThumbnailSubscription) SetPeriodSeconds(v float32)`

SetPeriodSeconds sets PeriodSeconds field to given value.

### HasPeriodSeconds

`func (o *ThumbnailSubscription) HasPeriodSeconds() bool`

HasPeriodSeconds returns a boolean if a field has been set.

### GetExpiresAt

`func (o *ThumbnailSubscription) GetExpiresAt() time.Time`

GetExpiresAt returns the ExpiresAt field if non-nil, zero value otherwise.

### GetExpiresAtOk

`func (o *ThumbnailSubscription) GetExpiresAtOk() (*time.Time, bool)`

GetExpiresAtOk returns a tuple with the ExpiresAt field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresAt

`func (o *ThumbnailSubscription) SetExpiresAt(v time.Time)`

SetExpiresAt sets ExpiresAt field to given value.

### HasExpiresAt

`func (o *ThumbnailSubscription) HasExpiresAt() bool`

HasExpiresAt returns a boolean if a field has been set.

### GetMaxSizeKB

`func (o *ThumbnailSubscription) GetMaxSizeKB() float32`

GetMaxSizeKB returns the MaxSizeKB field if non-nil, zero value otherwise.

### GetMaxSizeKBOk

`func (o *ThumbnailSubscription) GetMaxSizeKBOk() (*float32, bool)`

GetMaxSizeKBOk returns a tuple with the MaxSizeKB field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMaxSizeKB

`func (o *ThumbnailSubscription) SetMaxSizeKB(v float32)`

SetMaxSizeKB sets MaxSizeKB field to given value.

### HasMaxSizeKB

`func (o *ThumbnailSubscription) HasMaxSizeKB() bool`

HasMaxSizeKB returns a boolean if a field has been set.

### GetRemotePath

`func (o *ThumbnailSubscription) GetRemotePath() string`

GetRemotePath returns the RemotePath field if non-nil, zero value otherwise.

### GetRemotePathOk

`func (o *ThumbnailSubscription) GetRemotePathOk() (*string, bool)`

GetRemotePathOk returns a tuple with the RemotePath field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRemotePath

`func (o *ThumbnailSubscription) SetRemotePath(v string)`

SetRemotePath sets RemotePath field to given value.

### HasRemotePath

`func (o *ThumbnailSubscription) HasRemotePath() bool`

HasRemotePath returns a boolean if a field has been set.

### GetHeaders

`func (o *ThumbnailSubscription) GetHeaders() map[string]string`

GetHeaders returns the Headers field if non-nil, zero value otherwise.

### GetHeadersOk

`func (o *ThumbnailSubscription) GetHeadersOk() (*map[string]string, bool)`

GetHeadersOk returns a tuple with the Headers field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHeaders

`func (o *ThumbnailSubscription) SetHeaders(v map[string]string)`

SetHeaders sets Headers field to given value.

### HasHeaders

`func (o *ThumbnailSubscription) HasHeaders() bool`

HasHeaders returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


