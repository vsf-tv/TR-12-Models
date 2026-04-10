import { ResponseContext, RequestContext, HttpFile, HttpInfo } from '../http/http';
import { Configuration, ConfigurationOptions, mergeConfiguration } from '../configuration'
import type { Middleware } from '../middleware';
import { Observable, of, from } from '../rxjsStub';
import {mergeMap, map} from  '../rxjsStub';
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

import { DefaultApiRequestFactory, DefaultApiResponseProcessor} from "../apis/DefaultApi";
export class ObservableDefaultApi {
    private requestFactory: DefaultApiRequestFactory;
    private responseProcessor: DefaultApiResponseProcessor;
    private configuration: Configuration;

    public constructor(
        configuration: Configuration,
        requestFactory?: DefaultApiRequestFactory,
        responseProcessor?: DefaultApiResponseProcessor
    ) {
        this.configuration = configuration;
        this.requestFactory = requestFactory || new DefaultApiRequestFactory(configuration);
        this.responseProcessor = responseProcessor || new DefaultApiResponseProcessor();
    }

    /**
     * @param authenticatePairingCodeRequestContent
     */
    public authenticatePairingCodeWithHttpInfo(authenticatePairingCodeRequestContent: AuthenticatePairingCodeRequestContent, _options?: ConfigurationOptions): Observable<HttpInfo<AuthenticatePairingCodeResponseContent>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.authenticatePairingCode(authenticatePairingCodeRequestContent, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.authenticatePairingCodeWithHttpInfo(rsp)));
            }));
    }

    /**
     * @param authenticatePairingCodeRequestContent
     */
    public authenticatePairingCode(authenticatePairingCodeRequestContent: AuthenticatePairingCodeRequestContent, _options?: ConfigurationOptions): Observable<AuthenticatePairingCodeResponseContent> {
        return this.authenticatePairingCodeWithHttpInfo(authenticatePairingCodeRequestContent, _options).pipe(map((apiResponse: HttpInfo<AuthenticatePairingCodeResponseContent>) => apiResponse.data));
    }

    /**
     * @param createPairingCodeRequestContent
     */
    public createPairingCodeWithHttpInfo(createPairingCodeRequestContent: CreatePairingCodeRequestContent, _options?: ConfigurationOptions): Observable<HttpInfo<CreatePairingCodeResponseContent>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.createPairingCode(createPairingCodeRequestContent, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.createPairingCodeWithHttpInfo(rsp)));
            }));
    }

    /**
     * @param createPairingCodeRequestContent
     */
    public createPairingCode(createPairingCodeRequestContent: CreatePairingCodeRequestContent, _options?: ConfigurationOptions): Observable<CreatePairingCodeResponseContent> {
        return this.createPairingCodeWithHttpInfo(createPairingCodeRequestContent, _options).pipe(map((apiResponse: HttpInfo<CreatePairingCodeResponseContent>) => apiResponse.data));
    }

    /**
     * @param [deprovisionDeviceRequestContent]
     */
    public deprovisionDeviceWithHttpInfo(deprovisionDeviceRequestContent?: DeprovisionDeviceRequestContent, _options?: ConfigurationOptions): Observable<HttpInfo<void>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.deprovisionDevice(deprovisionDeviceRequestContent, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.deprovisionDeviceWithHttpInfo(rsp)));
            }));
    }

    /**
     * @param [deprovisionDeviceRequestContent]
     */
    public deprovisionDevice(deprovisionDeviceRequestContent?: DeprovisionDeviceRequestContent, _options?: ConfigurationOptions): Observable<void> {
        return this.deprovisionDeviceWithHttpInfo(deprovisionDeviceRequestContent, _options).pipe(map((apiResponse: HttpInfo<void>) => apiResponse.data));
    }

    /**
     */
    public getHostConfigWithHttpInfo(_options?: ConfigurationOptions): Observable<HttpInfo<GetHostConfigResponseContent>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getHostConfig(_config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getHostConfigWithHttpInfo(rsp)));
            }));
    }

    /**
     */
    public getHostConfig(_options?: ConfigurationOptions): Observable<GetHostConfigResponseContent> {
        return this.getHostConfigWithHttpInfo(_options).pipe(map((apiResponse: HttpInfo<GetHostConfigResponseContent>) => apiResponse.data));
    }

    /**
     */
    public getVersionWithHttpInfo(_options?: ConfigurationOptions): Observable<HttpInfo<GetVersionResponseContent>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.getVersion(_config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.getVersionWithHttpInfo(rsp)));
            }));
    }

    /**
     */
    public getVersion(_options?: ConfigurationOptions): Observable<GetVersionResponseContent> {
        return this.getVersionWithHttpInfo(_options).pipe(map((apiResponse: HttpInfo<GetVersionResponseContent>) => apiResponse.data));
    }

    /**
     * @param [requestLogRequestContent]
     */
    public requestLogWithHttpInfo(requestLogRequestContent?: RequestLogRequestContent, _options?: ConfigurationOptions): Observable<HttpInfo<void>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.requestLog(requestLogRequestContent, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.requestLogWithHttpInfo(rsp)));
            }));
    }

    /**
     * @param [requestLogRequestContent]
     */
    public requestLog(requestLogRequestContent?: RequestLogRequestContent, _options?: ConfigurationOptions): Observable<void> {
        return this.requestLogWithHttpInfo(requestLogRequestContent, _options).pipe(map((apiResponse: HttpInfo<void>) => apiResponse.data));
    }

    /**
     * @param requestThumbnailRequestContent
     */
    public requestThumbnailWithHttpInfo(requestThumbnailRequestContent: RequestThumbnailRequestContent, _options?: ConfigurationOptions): Observable<HttpInfo<void>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.requestThumbnail(requestThumbnailRequestContent, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.requestThumbnailWithHttpInfo(rsp)));
            }));
    }

    /**
     * @param requestThumbnailRequestContent
     */
    public requestThumbnail(requestThumbnailRequestContent: RequestThumbnailRequestContent, _options?: ConfigurationOptions): Observable<void> {
        return this.requestThumbnailWithHttpInfo(requestThumbnailRequestContent, _options).pipe(map((apiResponse: HttpInfo<void>) => apiResponse.data));
    }

    /**
     * @param rotateCertificatesRequestContent
     */
    public rotateCertificatesWithHttpInfo(rotateCertificatesRequestContent: RotateCertificatesRequestContent, _options?: ConfigurationOptions): Observable<HttpInfo<void>> {
        const _config = mergeConfiguration(this.configuration, _options);

        const requestContextPromise = this.requestFactory.rotateCertificates(rotateCertificatesRequestContent, _config);
        // build promise chain
        let middlewarePreObservable = from<RequestContext>(requestContextPromise);
        for (const middleware of _config.middleware) {
            middlewarePreObservable = middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => middleware.pre(ctx)));
        }

        return middlewarePreObservable.pipe(mergeMap((ctx: RequestContext) => _config.httpApi.send(ctx))).
            pipe(mergeMap((response: ResponseContext) => {
                let middlewarePostObservable = of(response);
                for (const middleware of _config.middleware.reverse()) {
                    middlewarePostObservable = middlewarePostObservable.pipe(mergeMap((rsp: ResponseContext) => middleware.post(rsp)));
                }
                return middlewarePostObservable.pipe(map((rsp: ResponseContext) => this.responseProcessor.rotateCertificatesWithHttpInfo(rsp)));
            }));
    }

    /**
     * @param rotateCertificatesRequestContent
     */
    public rotateCertificates(rotateCertificatesRequestContent: RotateCertificatesRequestContent, _options?: ConfigurationOptions): Observable<void> {
        return this.rotateCertificatesWithHttpInfo(rotateCertificatesRequestContent, _options).pipe(map((apiResponse: HttpInfo<void>) => apiResponse.data));
    }

}
