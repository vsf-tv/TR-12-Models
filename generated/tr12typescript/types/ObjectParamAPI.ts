import { ResponseContext, RequestContext, HttpFile, HttpInfo } from '../http/http';
import { Configuration, ConfigurationOptions } from '../configuration'
import type { Middleware } from '../middleware';

import { AuthStatus } from '../models/AuthStatus';
import { AuthenticatePairingCodeRequestContent } from '../models/AuthenticatePairingCodeRequestContent';
import { AuthenticatePairingCodeResponseContent } from '../models/AuthenticatePairingCodeResponseContent';
import { CreatePairingCodeFailureData } from '../models/CreatePairingCodeFailureData';
import { CreatePairingCodeFailureReason } from '../models/CreatePairingCodeFailureReason';
import { CreatePairingCodeRequestContent } from '../models/CreatePairingCodeRequestContent';
import { CreatePairingCodeResponseContent } from '../models/CreatePairingCodeResponseContent';
import { CreatePairingCodeResult } from '../models/CreatePairingCodeResult';
import { CreatePairingCodeSuccessData } from '../models/CreatePairingCodeSuccessData';
import { DeprovisionDeviceRequestContent } from '../models/DeprovisionDeviceRequestContent';
import { DeprovisionReason } from '../models/DeprovisionReason';
import { Failure } from '../models/Failure';
import { GetHostConfigResponseContent } from '../models/GetHostConfigResponseContent';
import { GetVersionResponseContent } from '../models/GetVersionResponseContent';
import { HostSettings } from '../models/HostSettings';
import { ProtocolVersion } from '../models/ProtocolVersion';
import { RequestLogRequestContent } from '../models/RequestLogRequestContent';
import { RequestThumbnailRequestContent } from '../models/RequestThumbnailRequestContent';
import { RotateCertificatesRequestContent } from '../models/RotateCertificatesRequestContent';
import { Success } from '../models/Success';
import { ThumbnailRequest } from '../models/ThumbnailRequest';

import { ObservableDefaultApi } from "./ObservableAPI";
import { DefaultApiRequestFactory, DefaultApiResponseProcessor} from "../apis/DefaultApi";

export interface DefaultApiAuthenticatePairingCodeRequest {
    /**
     * 
     * @type AuthenticatePairingCodeRequestContent
     * @memberof DefaultApiauthenticatePairingCode
     */
    authenticatePairingCodeRequestContent: AuthenticatePairingCodeRequestContent
}

export interface DefaultApiCreatePairingCodeRequest {
    /**
     * 
     * @type CreatePairingCodeRequestContent
     * @memberof DefaultApicreatePairingCode
     */
    createPairingCodeRequestContent: CreatePairingCodeRequestContent
}

export interface DefaultApiDeprovisionDeviceRequest {
    /**
     * 
     * @type DeprovisionDeviceRequestContent
     * @memberof DefaultApideprovisionDevice
     */
    deprovisionDeviceRequestContent?: DeprovisionDeviceRequestContent
}

export interface DefaultApiGetHostConfigRequest {
}

export interface DefaultApiGetVersionRequest {
}

export interface DefaultApiRequestLogRequest {
    /**
     * 
     * @type RequestLogRequestContent
     * @memberof DefaultApirequestLog
     */
    requestLogRequestContent?: RequestLogRequestContent
}

export interface DefaultApiRequestThumbnailRequest {
    /**
     * 
     * @type RequestThumbnailRequestContent
     * @memberof DefaultApirequestThumbnail
     */
    requestThumbnailRequestContent: RequestThumbnailRequestContent
}

export interface DefaultApiRotateCertificatesRequest {
    /**
     * 
     * @type RotateCertificatesRequestContent
     * @memberof DefaultApirotateCertificates
     */
    rotateCertificatesRequestContent: RotateCertificatesRequestContent
}

export class ObjectDefaultApi {
    private api: ObservableDefaultApi

    public constructor(configuration: Configuration, requestFactory?: DefaultApiRequestFactory, responseProcessor?: DefaultApiResponseProcessor) {
        this.api = new ObservableDefaultApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * @param param the request object
     */
    public authenticatePairingCodeWithHttpInfo(param: DefaultApiAuthenticatePairingCodeRequest, options?: ConfigurationOptions): Promise<HttpInfo<AuthenticatePairingCodeResponseContent>> {
        return this.api.authenticatePairingCodeWithHttpInfo(param.authenticatePairingCodeRequestContent,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public authenticatePairingCode(param: DefaultApiAuthenticatePairingCodeRequest, options?: ConfigurationOptions): Promise<AuthenticatePairingCodeResponseContent> {
        return this.api.authenticatePairingCode(param.authenticatePairingCodeRequestContent,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public createPairingCodeWithHttpInfo(param: DefaultApiCreatePairingCodeRequest, options?: ConfigurationOptions): Promise<HttpInfo<CreatePairingCodeResponseContent>> {
        return this.api.createPairingCodeWithHttpInfo(param.createPairingCodeRequestContent,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public createPairingCode(param: DefaultApiCreatePairingCodeRequest, options?: ConfigurationOptions): Promise<CreatePairingCodeResponseContent> {
        return this.api.createPairingCode(param.createPairingCodeRequestContent,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public deprovisionDeviceWithHttpInfo(param: DefaultApiDeprovisionDeviceRequest = {}, options?: ConfigurationOptions): Promise<HttpInfo<void>> {
        return this.api.deprovisionDeviceWithHttpInfo(param.deprovisionDeviceRequestContent,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public deprovisionDevice(param: DefaultApiDeprovisionDeviceRequest = {}, options?: ConfigurationOptions): Promise<void> {
        return this.api.deprovisionDevice(param.deprovisionDeviceRequestContent,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public getHostConfigWithHttpInfo(param: DefaultApiGetHostConfigRequest = {}, options?: ConfigurationOptions): Promise<HttpInfo<GetHostConfigResponseContent>> {
        return this.api.getHostConfigWithHttpInfo( options).toPromise();
    }

    /**
     * @param param the request object
     */
    public getHostConfig(param: DefaultApiGetHostConfigRequest = {}, options?: ConfigurationOptions): Promise<GetHostConfigResponseContent> {
        return this.api.getHostConfig( options).toPromise();
    }

    /**
     * @param param the request object
     */
    public getVersionWithHttpInfo(param: DefaultApiGetVersionRequest = {}, options?: ConfigurationOptions): Promise<HttpInfo<GetVersionResponseContent>> {
        return this.api.getVersionWithHttpInfo( options).toPromise();
    }

    /**
     * @param param the request object
     */
    public getVersion(param: DefaultApiGetVersionRequest = {}, options?: ConfigurationOptions): Promise<GetVersionResponseContent> {
        return this.api.getVersion( options).toPromise();
    }

    /**
     * @param param the request object
     */
    public requestLogWithHttpInfo(param: DefaultApiRequestLogRequest = {}, options?: ConfigurationOptions): Promise<HttpInfo<void>> {
        return this.api.requestLogWithHttpInfo(param.requestLogRequestContent,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public requestLog(param: DefaultApiRequestLogRequest = {}, options?: ConfigurationOptions): Promise<void> {
        return this.api.requestLog(param.requestLogRequestContent,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public requestThumbnailWithHttpInfo(param: DefaultApiRequestThumbnailRequest, options?: ConfigurationOptions): Promise<HttpInfo<void>> {
        return this.api.requestThumbnailWithHttpInfo(param.requestThumbnailRequestContent,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public requestThumbnail(param: DefaultApiRequestThumbnailRequest, options?: ConfigurationOptions): Promise<void> {
        return this.api.requestThumbnail(param.requestThumbnailRequestContent,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public rotateCertificatesWithHttpInfo(param: DefaultApiRotateCertificatesRequest, options?: ConfigurationOptions): Promise<HttpInfo<void>> {
        return this.api.rotateCertificatesWithHttpInfo(param.rotateCertificatesRequestContent,  options).toPromise();
    }

    /**
     * @param param the request object
     */
    public rotateCertificates(param: DefaultApiRotateCertificatesRequest, options?: ConfigurationOptions): Promise<void> {
        return this.api.rotateCertificates(param.rotateCertificatesRequestContent,  options).toPromise();
    }

}
