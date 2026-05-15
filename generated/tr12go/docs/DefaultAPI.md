# \DefaultAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AuthenticatePairingCode**](DefaultAPI.md#AuthenticatePairingCode) | **Post** /authenticate | 
[**CreatePairingCode**](DefaultAPI.md#CreatePairingCode) | **Post** /pair | 
[**DevicePublishesActualConfiguration**](DefaultAPI.md#DevicePublishesActualConfiguration) | **Post** /mqtt/device-to-host/actual-configuration | 
[**DevicePublishesDeprovisionAcknowledgement**](DefaultAPI.md#DevicePublishesDeprovisionAcknowledgement) | **Post** /mqtt/device-to-host/deprovision-acknowledgement | 
[**DevicePublishesRegistration**](DefaultAPI.md#DevicePublishesRegistration) | **Post** /mqtt/device-to-host/registration | 
[**DevicePublishesStatus**](DefaultAPI.md#DevicePublishesStatus) | **Post** /mqtt/device-to-host/status | 
[**DeviceSubscribesToCertificateRotation**](DefaultAPI.md#DeviceSubscribesToCertificateRotation) | **Post** /mqtt/host-to-device/certificate-rotation | 
[**DeviceSubscribesToDeprovision**](DefaultAPI.md#DeviceSubscribesToDeprovision) | **Post** /mqtt/host-to-device/deprovision | 
[**DeviceSubscribesToDesiredConfiguration**](DefaultAPI.md#DeviceSubscribesToDesiredConfiguration) | **Post** /mqtt/host-to-device/desired-configuration | 
[**DeviceSubscribesToLogSubscription**](DefaultAPI.md#DeviceSubscribesToLogSubscription) | **Post** /mqtt/host-to-device/log-subscription | 
[**DeviceSubscribesToThumbnailSubscription**](DefaultAPI.md#DeviceSubscribesToThumbnailSubscription) | **Post** /mqtt/host-to-device/thumbnail-subscription | 
[**GetHostConfig**](DefaultAPI.md#GetHostConfig) | **Get** /internal/host-config | 
[**GetVersion**](DefaultAPI.md#GetVersion) | **Get** /internal/version | 



## AuthenticatePairingCode

> AuthenticatePairingCodeResponseContent AuthenticatePairingCode(ctx).AuthenticatePairingCodeRequestContent(authenticatePairingCodeRequestContent).Execute()



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	authenticatePairingCodeRequestContent := *openapiclient.NewAuthenticatePairingCodeRequestContent("DeviceId_example", "PairingCode_example", "AccessCode_example") // AuthenticatePairingCodeRequestContent | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DefaultAPI.AuthenticatePairingCode(context.Background()).AuthenticatePairingCodeRequestContent(authenticatePairingCodeRequestContent).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.AuthenticatePairingCode``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AuthenticatePairingCode`: AuthenticatePairingCodeResponseContent
	fmt.Fprintf(os.Stdout, "Response from `DefaultAPI.AuthenticatePairingCode`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAuthenticatePairingCodeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authenticatePairingCodeRequestContent** | [**AuthenticatePairingCodeRequestContent**](AuthenticatePairingCodeRequestContent.md) |  | 

### Return type

[**AuthenticatePairingCodeResponseContent**](AuthenticatePairingCodeResponseContent.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CreatePairingCode

> CreatePairingCodeResponseContent CreatePairingCode(ctx).CreatePairingCodeRequestContent(createPairingCodeRequestContent).Execute()



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	createPairingCodeRequestContent := *openapiclient.NewCreatePairingCodeRequestContent(openapiclient.DeviceType("SOURCE"), "HostId_example", "CertificateSigningRequest_example", *openapiclient.NewProtocolVersion()) // CreatePairingCodeRequestContent | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DefaultAPI.CreatePairingCode(context.Background()).CreatePairingCodeRequestContent(createPairingCodeRequestContent).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.CreatePairingCode``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CreatePairingCode`: CreatePairingCodeResponseContent
	fmt.Fprintf(os.Stdout, "Response from `DefaultAPI.CreatePairingCode`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiCreatePairingCodeRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createPairingCodeRequestContent** | [**CreatePairingCodeRequestContent**](CreatePairingCodeRequestContent.md) |  | 

### Return type

[**CreatePairingCodeResponseContent**](CreatePairingCodeResponseContent.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DevicePublishesActualConfiguration

> DevicePublishesActualConfiguration(ctx).DevicePublishesActualConfigurationRequestContent(devicePublishesActualConfigurationRequestContent).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	devicePublishesActualConfigurationRequestContent := *openapiclient.NewDevicePublishesActualConfigurationRequestContent("Version_example", []openapiclient.ActualChannelConfiguration{*openapiclient.NewActualChannelConfiguration("Id_example", "Version_example", openapiclient.ChannelState("ACTIVE"))}) // DevicePublishesActualConfigurationRequestContent | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.DefaultAPI.DevicePublishesActualConfiguration(context.Background()).DevicePublishesActualConfigurationRequestContent(devicePublishesActualConfigurationRequestContent).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.DevicePublishesActualConfiguration``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDevicePublishesActualConfigurationRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **devicePublishesActualConfigurationRequestContent** | [**DevicePublishesActualConfigurationRequestContent**](DevicePublishesActualConfigurationRequestContent.md) |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DevicePublishesDeprovisionAcknowledgement

> DevicePublishesDeprovisionAcknowledgement(ctx).DevicePublishesDeprovisionAcknowledgementRequestContent(devicePublishesDeprovisionAcknowledgementRequestContent).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
    "time"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	devicePublishesDeprovisionAcknowledgementRequestContent := *openapiclient.NewDevicePublishesDeprovisionAcknowledgementRequestContent(time.Now()) // DevicePublishesDeprovisionAcknowledgementRequestContent | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.DefaultAPI.DevicePublishesDeprovisionAcknowledgement(context.Background()).DevicePublishesDeprovisionAcknowledgementRequestContent(devicePublishesDeprovisionAcknowledgementRequestContent).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.DevicePublishesDeprovisionAcknowledgement``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDevicePublishesDeprovisionAcknowledgementRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **devicePublishesDeprovisionAcknowledgementRequestContent** | [**DevicePublishesDeprovisionAcknowledgementRequestContent**](DevicePublishesDeprovisionAcknowledgementRequestContent.md) |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DevicePublishesRegistration

> DevicePublishesRegistration(ctx).DevicePublishesRegistrationRequestContent(devicePublishesRegistrationRequestContent).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	devicePublishesRegistrationRequestContent := *openapiclient.NewDevicePublishesRegistrationRequestContent([]openapiclient.Channel{*openapiclient.NewChannel("Name_example", "Id_example", openapiclient.ChannelType("SOURCE"))}) // DevicePublishesRegistrationRequestContent | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.DefaultAPI.DevicePublishesRegistration(context.Background()).DevicePublishesRegistrationRequestContent(devicePublishesRegistrationRequestContent).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.DevicePublishesRegistration``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDevicePublishesRegistrationRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **devicePublishesRegistrationRequestContent** | [**DevicePublishesRegistrationRequestContent**](DevicePublishesRegistrationRequestContent.md) |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DevicePublishesStatus

> DevicePublishesStatus(ctx).DevicePublishesStatusRequestContent(devicePublishesStatusRequestContent).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	devicePublishesStatusRequestContent := *openapiclient.NewDevicePublishesStatusRequestContent([]openapiclient.StatusValue{*openapiclient.NewStatusValue("Name_example", "Description_example", "Value_example")}) // DevicePublishesStatusRequestContent | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.DefaultAPI.DevicePublishesStatus(context.Background()).DevicePublishesStatusRequestContent(devicePublishesStatusRequestContent).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.DevicePublishesStatus``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDevicePublishesStatusRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **devicePublishesStatusRequestContent** | [**DevicePublishesStatusRequestContent**](DevicePublishesStatusRequestContent.md) |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeviceSubscribesToCertificateRotation

> DeviceSubscribesToCertificateRotation(ctx).DeviceSubscribesToCertificateRotationRequestContent(deviceSubscribesToCertificateRotationRequestContent).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	deviceSubscribesToCertificateRotationRequestContent := *openapiclient.NewDeviceSubscribesToCertificateRotationRequestContent("MqttUri_example", "DeviceCertificate_example") // DeviceSubscribesToCertificateRotationRequestContent | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.DefaultAPI.DeviceSubscribesToCertificateRotation(context.Background()).DeviceSubscribesToCertificateRotationRequestContent(deviceSubscribesToCertificateRotationRequestContent).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.DeviceSubscribesToCertificateRotation``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDeviceSubscribesToCertificateRotationRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceSubscribesToCertificateRotationRequestContent** | [**DeviceSubscribesToCertificateRotationRequestContent**](DeviceSubscribesToCertificateRotationRequestContent.md) |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeviceSubscribesToDeprovision

> DeviceSubscribesToDeprovision(ctx).DeviceSubscribesToDeprovisionRequestContent(deviceSubscribesToDeprovisionRequestContent).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
    "time"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	deviceSubscribesToDeprovisionRequestContent := *openapiclient.NewDeviceSubscribesToDeprovisionRequestContent(time.Now()) // DeviceSubscribesToDeprovisionRequestContent | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.DefaultAPI.DeviceSubscribesToDeprovision(context.Background()).DeviceSubscribesToDeprovisionRequestContent(deviceSubscribesToDeprovisionRequestContent).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.DeviceSubscribesToDeprovision``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDeviceSubscribesToDeprovisionRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceSubscribesToDeprovisionRequestContent** | [**DeviceSubscribesToDeprovisionRequestContent**](DeviceSubscribesToDeprovisionRequestContent.md) |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeviceSubscribesToDesiredConfiguration

> DeviceSubscribesToDesiredConfiguration(ctx).DeviceSubscribesToDesiredConfigurationRequestContent(deviceSubscribesToDesiredConfigurationRequestContent).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	deviceSubscribesToDesiredConfigurationRequestContent := *openapiclient.NewDeviceSubscribesToDesiredConfigurationRequestContent("Version_example", []openapiclient.DesiredChannelConfiguration{*openapiclient.NewDesiredChannelConfiguration("Id_example", "Version_example", openapiclient.ChannelState("ACTIVE"))}) // DeviceSubscribesToDesiredConfigurationRequestContent | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.DefaultAPI.DeviceSubscribesToDesiredConfiguration(context.Background()).DeviceSubscribesToDesiredConfigurationRequestContent(deviceSubscribesToDesiredConfigurationRequestContent).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.DeviceSubscribesToDesiredConfiguration``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDeviceSubscribesToDesiredConfigurationRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceSubscribesToDesiredConfigurationRequestContent** | [**DeviceSubscribesToDesiredConfigurationRequestContent**](DeviceSubscribesToDesiredConfigurationRequestContent.md) |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeviceSubscribesToLogSubscription

> DeviceSubscribesToLogSubscription(ctx).DeviceSubscribesToLogSubscriptionRequestContent(deviceSubscribesToLogSubscriptionRequestContent).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	deviceSubscribesToLogSubscriptionRequestContent := *openapiclient.NewDeviceSubscribesToLogSubscriptionRequestContent() // DeviceSubscribesToLogSubscriptionRequestContent |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.DefaultAPI.DeviceSubscribesToLogSubscription(context.Background()).DeviceSubscribesToLogSubscriptionRequestContent(deviceSubscribesToLogSubscriptionRequestContent).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.DeviceSubscribesToLogSubscription``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDeviceSubscribesToLogSubscriptionRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceSubscribesToLogSubscriptionRequestContent** | [**DeviceSubscribesToLogSubscriptionRequestContent**](DeviceSubscribesToLogSubscriptionRequestContent.md) |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeviceSubscribesToThumbnailSubscription

> DeviceSubscribesToThumbnailSubscription(ctx).DeviceSubscribesToThumbnailSubscriptionRequestContent(deviceSubscribesToThumbnailSubscriptionRequestContent).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	deviceSubscribesToThumbnailSubscriptionRequestContent := *openapiclient.NewDeviceSubscribesToThumbnailSubscriptionRequestContent(map[string]ThumbnailRequest{"key": *openapiclient.NewThumbnailRequest()}) // DeviceSubscribesToThumbnailSubscriptionRequestContent | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.DefaultAPI.DeviceSubscribesToThumbnailSubscription(context.Background()).DeviceSubscribesToThumbnailSubscriptionRequestContent(deviceSubscribesToThumbnailSubscriptionRequestContent).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.DeviceSubscribesToThumbnailSubscription``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDeviceSubscribesToThumbnailSubscriptionRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deviceSubscribesToThumbnailSubscriptionRequestContent** | [**DeviceSubscribesToThumbnailSubscriptionRequestContent**](DeviceSubscribesToThumbnailSubscriptionRequestContent.md) |  | 

### Return type

 (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetHostConfig

> GetHostConfigResponseContent GetHostConfig(ctx).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DefaultAPI.GetHostConfig(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.GetHostConfig``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetHostConfig`: GetHostConfigResponseContent
	fmt.Fprintf(os.Stdout, "Response from `DefaultAPI.GetHostConfig`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGetHostConfigRequest struct via the builder pattern


### Return type

[**GetHostConfigResponseContent**](GetHostConfigResponseContent.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetVersion

> GetVersionResponseContent GetVersion(ctx).Execute()





### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DefaultAPI.GetVersion(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.GetVersion``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetVersion`: GetVersionResponseContent
	fmt.Fprintf(os.Stdout, "Response from `DefaultAPI.GetVersion`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGetVersionRequest struct via the builder pattern


### Return type

[**GetVersionResponseContent**](GetVersionResponseContent.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

