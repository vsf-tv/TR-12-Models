# \DefaultAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AuthenticatePairingCode**](DefaultAPI.md#AuthenticatePairingCode) | **Post** /authenticate | 
[**CreatePairingCode**](DefaultAPI.md#CreatePairingCode) | **Post** /pair | 
[**DeprovisionDevice**](DefaultAPI.md#DeprovisionDevice) | **Post** /internal/deprovision | 
[**GetHostConfig**](DefaultAPI.md#GetHostConfig) | **Get** /internal/host-config | 
[**GetVersion**](DefaultAPI.md#GetVersion) | **Get** /internal/version | 
[**RequestLog**](DefaultAPI.md#RequestLog) | **Post** /internal/log | 
[**RequestThumbnail**](DefaultAPI.md#RequestThumbnail) | **Post** /internal/thumbnail | 
[**RotateCertificates**](DefaultAPI.md#RotateCertificates) | **Post** /internal/rotate-certs | 



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


## DeprovisionDevice

> DeprovisionDevice(ctx).DeprovisionDeviceRequestContent(deprovisionDeviceRequestContent).Execute()



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
	deprovisionDeviceRequestContent := *openapiclient.NewDeprovisionDeviceRequestContent(time.Now()) // DeprovisionDeviceRequestContent | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.DefaultAPI.DeprovisionDevice(context.Background()).DeprovisionDeviceRequestContent(deprovisionDeviceRequestContent).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.DeprovisionDevice``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiDeprovisionDeviceRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deprovisionDeviceRequestContent** | [**DeprovisionDeviceRequestContent**](DeprovisionDeviceRequestContent.md) |  | 

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


## RequestLog

> RequestLog(ctx).RequestLogRequestContent(requestLogRequestContent).Execute()



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
	requestLogRequestContent := *openapiclient.NewRequestLogRequestContent() // RequestLogRequestContent |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.DefaultAPI.RequestLog(context.Background()).RequestLogRequestContent(requestLogRequestContent).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.RequestLog``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRequestLogRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestLogRequestContent** | [**RequestLogRequestContent**](RequestLogRequestContent.md) |  | 

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


## RequestThumbnail

> RequestThumbnail(ctx).RequestThumbnailRequestContent(requestThumbnailRequestContent).Execute()



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
	requestThumbnailRequestContent := *openapiclient.NewRequestThumbnailRequestContent(map[string]ThumbnailRequest{"key": *openapiclient.NewThumbnailRequest()}) // RequestThumbnailRequestContent | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.DefaultAPI.RequestThumbnail(context.Background()).RequestThumbnailRequestContent(requestThumbnailRequestContent).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.RequestThumbnail``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRequestThumbnailRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestThumbnailRequestContent** | [**RequestThumbnailRequestContent**](RequestThumbnailRequestContent.md) |  | 

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


## RotateCertificates

> RotateCertificates(ctx).RotateCertificatesRequestContent(rotateCertificatesRequestContent).Execute()



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
	rotateCertificatesRequestContent := *openapiclient.NewRotateCertificatesRequestContent("MqttUri_example", "DeviceCertificate_example") // RotateCertificatesRequestContent | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.DefaultAPI.RotateCertificates(context.Background()).RotateCertificatesRequestContent(rotateCertificatesRequestContent).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DefaultAPI.RotateCertificates``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiRotateCertificatesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rotateCertificatesRequestContent** | [**RotateCertificatesRequestContent**](RotateCertificatesRequestContent.md) |  | 

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

