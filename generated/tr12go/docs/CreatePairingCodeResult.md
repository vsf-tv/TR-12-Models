# CreatePairingCodeResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Success** | [**CreatePairingCodeSuccessData**](CreatePairingCodeSuccessData.md) |  | 
**Failure** | [**CreatePairingCodeFailureData**](CreatePairingCodeFailureData.md) |  | 

## Methods

### NewCreatePairingCodeResult

`func NewCreatePairingCodeResult(success CreatePairingCodeSuccessData, failure CreatePairingCodeFailureData, ) *CreatePairingCodeResult`

NewCreatePairingCodeResult instantiates a new CreatePairingCodeResult object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCreatePairingCodeResultWithDefaults

`func NewCreatePairingCodeResultWithDefaults() *CreatePairingCodeResult`

NewCreatePairingCodeResultWithDefaults instantiates a new CreatePairingCodeResult object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSuccess

`func (o *CreatePairingCodeResult) GetSuccess() CreatePairingCodeSuccessData`

GetSuccess returns the Success field if non-nil, zero value otherwise.

### GetSuccessOk

`func (o *CreatePairingCodeResult) GetSuccessOk() (*CreatePairingCodeSuccessData, bool)`

GetSuccessOk returns a tuple with the Success field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSuccess

`func (o *CreatePairingCodeResult) SetSuccess(v CreatePairingCodeSuccessData)`

SetSuccess sets Success field to given value.


### GetFailure

`func (o *CreatePairingCodeResult) GetFailure() CreatePairingCodeFailureData`

GetFailure returns the Failure field if non-nil, zero value otherwise.

### GetFailureOk

`func (o *CreatePairingCodeResult) GetFailureOk() (*CreatePairingCodeFailureData, bool)`

GetFailureOk returns a tuple with the Failure field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFailure

`func (o *CreatePairingCodeResult) SetFailure(v CreatePairingCodeFailureData)`

SetFailure sets Failure field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


