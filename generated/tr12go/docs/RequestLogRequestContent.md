# RequestLogRequestContent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExpiresTimestamp** | Pointer to **time.Time** |  | [optional] 
**RemotePath** | Pointer to **string** |  | [optional] 

## Methods

### NewRequestLogRequestContent

`func NewRequestLogRequestContent() *RequestLogRequestContent`

NewRequestLogRequestContent instantiates a new RequestLogRequestContent object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRequestLogRequestContentWithDefaults

`func NewRequestLogRequestContentWithDefaults() *RequestLogRequestContent`

NewRequestLogRequestContentWithDefaults instantiates a new RequestLogRequestContent object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetExpiresTimestamp

`func (o *RequestLogRequestContent) GetExpiresTimestamp() time.Time`

GetExpiresTimestamp returns the ExpiresTimestamp field if non-nil, zero value otherwise.

### GetExpiresTimestampOk

`func (o *RequestLogRequestContent) GetExpiresTimestampOk() (*time.Time, bool)`

GetExpiresTimestampOk returns a tuple with the ExpiresTimestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiresTimestamp

`func (o *RequestLogRequestContent) SetExpiresTimestamp(v time.Time)`

SetExpiresTimestamp sets ExpiresTimestamp field to given value.

### HasExpiresTimestamp

`func (o *RequestLogRequestContent) HasExpiresTimestamp() bool`

HasExpiresTimestamp returns a boolean if a field has been set.

### GetRemotePath

`func (o *RequestLogRequestContent) GetRemotePath() string`

GetRemotePath returns the RemotePath field if non-nil, zero value otherwise.

### GetRemotePathOk

`func (o *RequestLogRequestContent) GetRemotePathOk() (*string, bool)`

GetRemotePathOk returns a tuple with the RemotePath field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRemotePath

`func (o *RequestLogRequestContent) SetRemotePath(v string)`

SetRemotePath sets RemotePath field to given value.

### HasRemotePath

`func (o *RequestLogRequestContent) HasRemotePath() bool`

HasRemotePath returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


