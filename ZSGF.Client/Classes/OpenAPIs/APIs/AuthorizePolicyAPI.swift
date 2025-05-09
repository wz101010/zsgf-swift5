//
// AuthorizePolicyAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AuthorizePolicyAPI {

    /**
     获取鉴权策略列表
     
     - parameter appKey: (path)  
     - parameter authType: (query) 鉴权类型（access_token、user、role） (optional)
     - parameter policyName: (query) 策略名称 (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func authorizePolicies(appKey: String, authType: String? = nil, policyName: String? = nil, apiResponseQueue: DispatchQueue = ZSGF.ClientAPI.apiResponseQueue, completion: @escaping ((_ data: AuthorizePolicyListApiResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return authorizePoliciesWithRequestBuilder(appKey: appKey, authType: authType, policyName: policyName).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     获取鉴权策略列表
     - GET /AuthorizePolicy/{appKey}
     - 根据鉴权类型和策略名称获取鉴权策略列表
     - Bearer Token:
       - type: http
       - name: Bearer
     - parameter appKey: (path)  
     - parameter authType: (query) 鉴权类型（access_token、user、role） (optional)
     - parameter policyName: (query) 策略名称 (optional)
     - returns: RequestBuilder<AuthorizePolicyListApiResponse> 
     */
    open class func authorizePoliciesWithRequestBuilder(appKey: String, authType: String? = nil, policyName: String? = nil) -> RequestBuilder<AuthorizePolicyListApiResponse> {
        var localVariablePath = "/AuthorizePolicy/{appKey}"
        let appKeyPreEscape = "\(APIHelper.mapValueToPathItem(appKey))"
        let appKeyPostEscape = appKeyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{appKey}", with: appKeyPostEscape, options: .literal, range: nil)
        let localVariableURLString = ZSGF.ClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "authType": (wrappedValue: authType?.encodeToJSON(), isExplode: true),
            "policyName": (wrappedValue: policyName?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AuthorizePolicyListApiResponse>.Type = ZSGF.ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     获取鉴权策略详情
     
     - parameter id: (path) 鉴权策略ID 
     - parameter appKey: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func authorizePolicy(id: Int64, appKey: String, apiResponseQueue: DispatchQueue = ZSGF.ClientAPI.apiResponseQueue, completion: @escaping ((_ data: AuthorizePolicyApiResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return authorizePolicyWithRequestBuilder(id: id, appKey: appKey).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     获取鉴权策略详情
     - GET /AuthorizePolicy/{appKey}/{id}
     - 根据鉴权策略ID获取鉴权策略详情
     - Bearer Token:
       - type: http
       - name: Bearer
     - parameter id: (path) 鉴权策略ID 
     - parameter appKey: (path)  
     - returns: RequestBuilder<AuthorizePolicyApiResponse> 
     */
    open class func authorizePolicyWithRequestBuilder(id: Int64, appKey: String) -> RequestBuilder<AuthorizePolicyApiResponse> {
        var localVariablePath = "/AuthorizePolicy/{appKey}/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let appKeyPreEscape = "\(APIHelper.mapValueToPathItem(appKey))"
        let appKeyPostEscape = appKeyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{appKey}", with: appKeyPostEscape, options: .literal, range: nil)
        let localVariableURLString = ZSGF.ClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AuthorizePolicyApiResponse>.Type = ZSGF.ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     删除鉴权策略
     
     - parameter id: (path) 鉴权策略ID 
     - parameter appKey: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func authorizePolicyDelete(id: Int64, appKey: String, apiResponseQueue: DispatchQueue = ZSGF.ClientAPI.apiResponseQueue, completion: @escaping ((_ data: BooleanApiResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return authorizePolicyDeleteWithRequestBuilder(id: id, appKey: appKey).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     删除鉴权策略
     - DELETE /AuthorizePolicy/{appKey}/{id}
     - 根据鉴权策略ID删除鉴权策略
     - Bearer Token:
       - type: http
       - name: Bearer
     - parameter id: (path) 鉴权策略ID 
     - parameter appKey: (path)  
     - returns: RequestBuilder<BooleanApiResponse> 
     */
    open class func authorizePolicyDeleteWithRequestBuilder(id: Int64, appKey: String) -> RequestBuilder<BooleanApiResponse> {
        var localVariablePath = "/AuthorizePolicy/{appKey}/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let appKeyPreEscape = "\(APIHelper.mapValueToPathItem(appKey))"
        let appKeyPostEscape = appKeyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{appKey}", with: appKeyPostEscape, options: .literal, range: nil)
        let localVariableURLString = ZSGF.ClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanApiResponse>.Type = ZSGF.ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     添加鉴权策略
     
     - parameter appKey: (path)  
     - parameter authorizePolicy: (body) 鉴权策略对象 (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func authorizePolicyPost(appKey: String, authorizePolicy: AuthorizePolicy? = nil, apiResponseQueue: DispatchQueue = ZSGF.ClientAPI.apiResponseQueue, completion: @escaping ((_ data: CreatePostResultApiResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return authorizePolicyPostWithRequestBuilder(appKey: appKey, authorizePolicy: authorizePolicy).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     添加鉴权策略
     - POST /AuthorizePolicy/{appKey}
     - 添加新的鉴权策略
     - Bearer Token:
       - type: http
       - name: Bearer
     - parameter appKey: (path)  
     - parameter authorizePolicy: (body) 鉴权策略对象 (optional)
     - returns: RequestBuilder<CreatePostResultApiResponse> 
     */
    open class func authorizePolicyPostWithRequestBuilder(appKey: String, authorizePolicy: AuthorizePolicy? = nil) -> RequestBuilder<CreatePostResultApiResponse> {
        var localVariablePath = "/AuthorizePolicy/{appKey}"
        let appKeyPreEscape = "\(APIHelper.mapValueToPathItem(appKey))"
        let appKeyPostEscape = appKeyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{appKey}", with: appKeyPostEscape, options: .literal, range: nil)
        let localVariableURLString = ZSGF.ClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: authorizePolicy)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json-patch+json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<CreatePostResultApiResponse>.Type = ZSGF.ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     更新鉴权策略
     
     - parameter id: (path) 鉴权策略ID 
     - parameter appKey: (path)  
     - parameter authorizePolicy: (body) 鉴权策略对象 (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func authorizePolicyPut(id: Int64, appKey: String, authorizePolicy: AuthorizePolicy? = nil, apiResponseQueue: DispatchQueue = ZSGF.ClientAPI.apiResponseQueue, completion: @escaping ((_ data: BooleanApiResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return authorizePolicyPutWithRequestBuilder(id: id, appKey: appKey, authorizePolicy: authorizePolicy).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     更新鉴权策略
     - PUT /AuthorizePolicy/{appKey}/{id}
     - 根据鉴权策略ID更新鉴权策略
     - Bearer Token:
       - type: http
       - name: Bearer
     - parameter id: (path) 鉴权策略ID 
     - parameter appKey: (path)  
     - parameter authorizePolicy: (body) 鉴权策略对象 (optional)
     - returns: RequestBuilder<BooleanApiResponse> 
     */
    open class func authorizePolicyPutWithRequestBuilder(id: Int64, appKey: String, authorizePolicy: AuthorizePolicy? = nil) -> RequestBuilder<BooleanApiResponse> {
        var localVariablePath = "/AuthorizePolicy/{appKey}/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let appKeyPreEscape = "\(APIHelper.mapValueToPathItem(appKey))"
        let appKeyPostEscape = appKeyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{appKey}", with: appKeyPostEscape, options: .literal, range: nil)
        let localVariableURLString = ZSGF.ClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: authorizePolicy)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json-patch+json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanApiResponse>.Type = ZSGF.ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
