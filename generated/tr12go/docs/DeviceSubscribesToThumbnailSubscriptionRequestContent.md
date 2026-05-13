# DeviceSubscribesToThumbnailSubscriptionRequestContent

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Requests** | [**map[string]ThumbnailRequest**](ThumbnailRequest.md) | Map of channelId to ThumbnailRequest. The host subscribes by channel. The SDK resolves the channel&#39;s thumbnail local path from ActualConfiguration. | 

## Methods

### NewDeviceSubscribesToThumbnailSubscriptionRequestContent

`func NewDeviceSubscribesToThumbnailSubscriptionRequestContent(requests map[string]ThumbnailRequest, ) *DeviceSubscribesToThumbnailSubscriptionRequestContent`

NewDeviceSubscribesToThumbnailSubscriptionRequestContent instantiates a new DeviceSubscribesToThumbnailSubscriptionRequestContent object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDeviceSubscribesToThumbnailSubscriptionRequestContentWithDefaults

`func NewDeviceSubscribesToThumbnailSubscriptionRequestContentWithDefaults() *DeviceSubscribesToThumbnailSubscriptionRequestContent`

NewDeviceSubscribesToThumbnailSubscriptionRequestContentWithDefaults instantiates a new DeviceSubscribesToThumbnailSubscriptionRequestContent object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetRequests

`func (o *DeviceSubscribesToThumbnailSubscriptionRequestContent) GetRequests() map[string]ThumbnailRequest`

GetRequests returns the Requests field if non-nil, zero value otherwise.

### GetRequestsOk

`func (o *DeviceSubscribesToThumbnailSubscriptionRequestContent) GetRequestsOk() (*map[string]ThumbnailRequest, bool)`

GetRequestsOk returns a tuple with the Requests field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRequests

`func (o *DeviceSubscribesToThumbnailSubscriptionRequestContent) SetRequests(v map[string]ThumbnailRequest)`

SetRequests sets Requests field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


