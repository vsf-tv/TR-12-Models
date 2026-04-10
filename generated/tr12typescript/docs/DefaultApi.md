# .DefaultApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticatePairingCode**](DefaultApi.md#authenticatePairingCode) | **POST** /authenticate | 
[**createPairingCode**](DefaultApi.md#createPairingCode) | **POST** /pair | 
[**deprovisionDevice**](DefaultApi.md#deprovisionDevice) | **POST** /internal/deprovision | 
[**getHostConfig**](DefaultApi.md#getHostConfig) | **GET** /internal/host-config | 
[**getVersion**](DefaultApi.md#getVersion) | **GET** /internal/version | 
[**requestLog**](DefaultApi.md#requestLog) | **POST** /internal/log | 
[**requestThumbnail**](DefaultApi.md#requestThumbnail) | **POST** /internal/thumbnail | 
[**rotateCertificates**](DefaultApi.md#rotateCertificates) | **POST** /internal/rotate-certs | 


# **authenticatePairingCode**
> AuthenticatePairingCodeResponseContent authenticatePairingCode(authenticatePairingCodeRequestContent)


### Example


```typescript
import { createConfiguration, DefaultApi } from 'HostServiceApiSDK';
import type { DefaultApiAuthenticatePairingCodeRequest } from 'HostServiceApiSDK';

const configuration = createConfiguration();
const apiInstance = new DefaultApi(configuration);

const request: DefaultApiAuthenticatePairingCodeRequest = {
  
  authenticatePairingCodeRequestContent: {
    deviceId: "deviceId_example",
    pairingCode: "pairingCode_example",
    accessCode: "accessCode_example",
  },
};

const data = await apiInstance.authenticatePairingCode(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authenticatePairingCodeRequestContent** | **AuthenticatePairingCodeRequestContent**|  |


### Return type

**AuthenticatePairingCodeResponseContent**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | AuthenticatePairingCode 200 response |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **createPairingCode**
> CreatePairingCodeResponseContent createPairingCode(createPairingCodeRequestContent)


### Example


```typescript
import { createConfiguration, DefaultApi } from 'HostServiceApiSDK';
import type { DefaultApiCreatePairingCodeRequest } from 'HostServiceApiSDK';

const configuration = createConfiguration();
const apiInstance = new DefaultApi(configuration);

const request: DefaultApiCreatePairingCodeRequest = {
  
  createPairingCodeRequestContent: {
    deviceType: "deviceType_example",
    hostId: "hostId_example",
    certificateSigningRequest: "certificateSigningRequest_example",
    version: "version_example",
  },
};

const data = await apiInstance.createPairingCode(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createPairingCodeRequestContent** | **CreatePairingCodeRequestContent**|  |


### Return type

**CreatePairingCodeResponseContent**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | CreatePairingCode 200 response |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **deprovisionDevice**
> void deprovisionDevice()


### Example


```typescript
import { createConfiguration, DefaultApi } from 'HostServiceApiSDK';
import type { DefaultApiDeprovisionDeviceRequest } from 'HostServiceApiSDK';

const configuration = createConfiguration();
const apiInstance = new DefaultApi(configuration);

const request: DefaultApiDeprovisionDeviceRequest = {
  
  deprovisionDeviceRequestContent: {
    reason: "DEPROVISIONED",
    time: 3.14,
  },
};

const data = await apiInstance.deprovisionDevice(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deprovisionDeviceRequestContent** | **DeprovisionDeviceRequestContent**|  |


### Return type

**void**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | DeprovisionDevice 200 response |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getHostConfig**
> GetHostConfigResponseContent getHostConfig()


### Example


```typescript
import { createConfiguration, DefaultApi } from 'HostServiceApiSDK';

const configuration = createConfiguration();
const apiInstance = new DefaultApi(configuration);

const request = {};

const data = await apiInstance.getHostConfig(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters
This endpoint does not need any parameter.


### Return type

**GetHostConfigResponseContent**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | GetHostConfig 200 response |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getVersion**
> GetVersionResponseContent getVersion()


### Example


```typescript
import { createConfiguration, DefaultApi } from 'HostServiceApiSDK';

const configuration = createConfiguration();
const apiInstance = new DefaultApi(configuration);

const request = {};

const data = await apiInstance.getVersion(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters
This endpoint does not need any parameter.


### Return type

**GetVersionResponseContent**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | GetVersion 200 response |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **requestLog**
> void requestLog()


### Example


```typescript
import { createConfiguration, DefaultApi } from 'HostServiceApiSDK';
import type { DefaultApiRequestLogRequest } from 'HostServiceApiSDK';

const configuration = createConfiguration();
const apiInstance = new DefaultApi(configuration);

const request: DefaultApiRequestLogRequest = {
  
  requestLogRequestContent: {
    expiresAtEpochSeconds: 3.14,
    remotePath: "remotePath_example",
  },
};

const data = await apiInstance.requestLog(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestLogRequestContent** | **RequestLogRequestContent**|  |


### Return type

**void**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | RequestLog 200 response |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **requestThumbnail**
> void requestThumbnail(requestThumbnailRequestContent)


### Example


```typescript
import { createConfiguration, DefaultApi } from 'HostServiceApiSDK';
import type { DefaultApiRequestThumbnailRequest } from 'HostServiceApiSDK';

const configuration = createConfiguration();
const apiInstance = new DefaultApi(configuration);

const request: DefaultApiRequestThumbnailRequest = {
  
  requestThumbnailRequestContent: {
    requests: {
      "key": {
        periodSeconds: 3.14,
        expiresAtEpochSeconds: 3.14,
        maxSizeKilobyte: 3.14,
        localPath: "localPath_example",
        remotePath: "remotePath_example",
        headers: {
          "key": "key_example",
        },
      },
    },
  },
};

const data = await apiInstance.requestThumbnail(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestThumbnailRequestContent** | **RequestThumbnailRequestContent**|  |


### Return type

**void**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | RequestThumbnail 200 response |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **rotateCertificates**
> void rotateCertificates(rotateCertificatesRequestContent)


### Example


```typescript
import { createConfiguration, DefaultApi } from 'HostServiceApiSDK';
import type { DefaultApiRotateCertificatesRequest } from 'HostServiceApiSDK';

const configuration = createConfiguration();
const apiInstance = new DefaultApi(configuration);

const request: DefaultApiRotateCertificatesRequest = {
  
  rotateCertificatesRequestContent: {
    mqttUri: "mqttUri_example",
    deviceCertificate: "deviceCertificate_example",
    regionName: "regionName_example",
  },
};

const data = await apiInstance.rotateCertificates(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **rotateCertificatesRequestContent** | **RotateCertificatesRequestContent**|  |


### Return type

**void**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | RotateCertificates 200 response |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


