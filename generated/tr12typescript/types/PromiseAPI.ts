import { ResponseContext, RequestContext, HttpFile, HttpInfo } from '../http/http';
import { Configuration, PromiseConfigurationOptions, wrapOptions } from '../configuration'
import { PromiseMiddleware, Middleware, PromiseMiddlewareWrapper } from '../middleware';

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
import { ObservableDefaultApi } from './ObservableAPI';

import { DefaultApiRequestFactory, DefaultApiResponseProcessor} from "../apis/DefaultApi";
export class PromiseDefaultApi {
    private api: ObservableDefaultApi

    public constructor(
        configuration: Configuration,
        requestFactory?: DefaultApiRequestFactory,
        responseProcessor?: DefaultApiResponseProcessor
    ) {
        this.api = new ObservableDefaultApi(configuration, requestFactory, responseProcessor);
    }

    /**
     * @param authenticatePairingCodeRequestContent
     */
    public authenticatePairingCodeWithHttpInfo(authenticatePairingCodeRequestContent: AuthenticatePairingCodeRequestContent, _options?: PromiseConfigurationOptions): Promise<HttpInfo<AuthenticatePairingCodeResponseContent>> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.authenticatePairingCodeWithHttpInfo(authenticatePairingCodeRequestContent, observableOptions);
        return result.toPromise();
    }

    /**
     * @param authenticatePairingCodeRequestContent
     */
    public authenticatePairingCode(authenticatePairingCodeRequestContent: AuthenticatePairingCodeRequestContent, _options?: PromiseConfigurationOptions): Promise<AuthenticatePairingCodeResponseContent> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.authenticatePairingCode(authenticatePairingCodeRequestContent, observableOptions);
        return result.toPromise();
    }

    /**
     * @param createPairingCodeRequestContent
     */
    public createPairingCodeWithHttpInfo(createPairingCodeRequestContent: CreatePairingCodeRequestContent, _options?: PromiseConfigurationOptions): Promise<HttpInfo<CreatePairingCodeResponseContent>> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.createPairingCodeWithHttpInfo(createPairingCodeRequestContent, observableOptions);
        return result.toPromise();
    }

    /**
     * @param createPairingCodeRequestContent
     */
    public createPairingCode(createPairingCodeRequestContent: CreatePairingCodeRequestContent, _options?: PromiseConfigurationOptions): Promise<CreatePairingCodeResponseContent> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.createPairingCode(createPairingCodeRequestContent, observableOptions);
        return result.toPromise();
    }

    /**
     * @param [deprovisionDeviceRequestContent]
     */
    public deprovisionDeviceWithHttpInfo(deprovisionDeviceRequestContent?: DeprovisionDeviceRequestContent, _options?: PromiseConfigurationOptions): Promise<HttpInfo<void>> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.deprovisionDeviceWithHttpInfo(deprovisionDeviceRequestContent, observableOptions);
        return result.toPromise();
    }

    /**
     * @param [deprovisionDeviceRequestContent]
     */
    public deprovisionDevice(deprovisionDeviceRequestContent?: DeprovisionDeviceRequestContent, _options?: PromiseConfigurationOptions): Promise<void> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.deprovisionDevice(deprovisionDeviceRequestContent, observableOptions);
        return result.toPromise();
    }

    /**
     */
    public getHostConfigWithHttpInfo(_options?: PromiseConfigurationOptions): Promise<HttpInfo<GetHostConfigResponseContent>> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.getHostConfigWithHttpInfo(observableOptions);
        return result.toPromise();
    }

    /**
     */
    public getHostConfig(_options?: PromiseConfigurationOptions): Promise<GetHostConfigResponseContent> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.getHostConfig(observableOptions);
        return result.toPromise();
    }

    /**
     */
    public getVersionWithHttpInfo(_options?: PromiseConfigurationOptions): Promise<HttpInfo<GetVersionResponseContent>> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.getVersionWithHttpInfo(observableOptions);
        return result.toPromise();
    }

    /**
     */
    public getVersion(_options?: PromiseConfigurationOptions): Promise<GetVersionResponseContent> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.getVersion(observableOptions);
        return result.toPromise();
    }

    /**
     * @param [requestLogRequestContent]
     */
    public requestLogWithHttpInfo(requestLogRequestContent?: RequestLogRequestContent, _options?: PromiseConfigurationOptions): Promise<HttpInfo<void>> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.requestLogWithHttpInfo(requestLogRequestContent, observableOptions);
        return result.toPromise();
    }

    /**
     * @param [requestLogRequestContent]
     */
    public requestLog(requestLogRequestContent?: RequestLogRequestContent, _options?: PromiseConfigurationOptions): Promise<void> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.requestLog(requestLogRequestContent, observableOptions);
        return result.toPromise();
    }

    /**
     * @param requestThumbnailRequestContent
     */
    public requestThumbnailWithHttpInfo(requestThumbnailRequestContent: RequestThumbnailRequestContent, _options?: PromiseConfigurationOptions): Promise<HttpInfo<void>> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.requestThumbnailWithHttpInfo(requestThumbnailRequestContent, observableOptions);
        return result.toPromise();
    }

    /**
     * @param requestThumbnailRequestContent
     */
    public requestThumbnail(requestThumbnailRequestContent: RequestThumbnailRequestContent, _options?: PromiseConfigurationOptions): Promise<void> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.requestThumbnail(requestThumbnailRequestContent, observableOptions);
        return result.toPromise();
    }

    /**
     * @param rotateCertificatesRequestContent
     */
    public rotateCertificatesWithHttpInfo(rotateCertificatesRequestContent: RotateCertificatesRequestContent, _options?: PromiseConfigurationOptions): Promise<HttpInfo<void>> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.rotateCertificatesWithHttpInfo(rotateCertificatesRequestContent, observableOptions);
        return result.toPromise();
    }

    /**
     * @param rotateCertificatesRequestContent
     */
    public rotateCertificates(rotateCertificatesRequestContent: RotateCertificatesRequestContent, _options?: PromiseConfigurationOptions): Promise<void> {
        const observableOptions = wrapOptions(_options);
        const result = this.api.rotateCertificates(rotateCertificatesRequestContent, observableOptions);
        return result.toPromise();
    }


}



