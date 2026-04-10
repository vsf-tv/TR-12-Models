# DeprovisionDeviceRequestContent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Reason** | Pointer to [**DeprovisionReason**](DeprovisionReason.md) |  | [optional] 
**Timestamp** | Pointer to **time.Time** |  | [optional] 

## Methods

### NewDeprovisionDeviceRequestContent

`func NewDeprovisionDeviceRequestContent() *DeprovisionDeviceRequestContent`

NewDeprovisionDeviceRequestContent instantiates a new DeprovisionDeviceRequestContent object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDeprovisionDeviceRequestContentWithDefaults

`func NewDeprovisionDeviceRequestContentWithDefaults() *DeprovisionDeviceRequestContent`

NewDeprovisionDeviceRequestContentWithDefaults instantiates a new DeprovisionDeviceRequestContent object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetReason

`func (o *DeprovisionDeviceRequestContent) GetReason() DeprovisionReason`

GetReason returns the Reason field if non-nil, zero value otherwise.

### GetReasonOk

`func (o *DeprovisionDeviceRequestContent) GetReasonOk() (*DeprovisionReason, bool)`

GetReasonOk returns a tuple with the Reason field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReason

`func (o *DeprovisionDeviceRequestContent) SetReason(v DeprovisionReason)`

SetReason sets Reason field to given value.

### HasReason

`func (o *DeprovisionDeviceRequestContent) HasReason() bool`

HasReason returns a boolean if a field has been set.

### GetTimestamp

`func (o *DeprovisionDeviceRequestContent) GetTimestamp() time.Time`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *DeprovisionDeviceRequestContent) GetTimestampOk() (*time.Time, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *DeprovisionDeviceRequestContent) SetTimestamp(v time.Time)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *DeprovisionDeviceRequestContent) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


