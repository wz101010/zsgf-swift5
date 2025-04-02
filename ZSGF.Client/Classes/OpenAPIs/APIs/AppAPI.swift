//
// AppAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class AppAPI {

    /**
     应用详情
     
     - parameter appKey: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func app(appKey: String, apiResponseQueue: DispatchQueue = ZSGF.ClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppApiResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appWithRequestBuilder(appKey: appKey).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     应用详情
     - GET /App/{appKey}
     - 根据应用Key获取应用的详细信息。
     - Bearer Token:
       - type: http
       - name: Bearer
     - parameter appKey: (path)  
     - returns: RequestBuilder<AppApiResponse> 
     */
    open class func appWithRequestBuilder(appKey: String) -> RequestBuilder<AppApiResponse> {
        var localVariablePath = "/App/{appKey}"
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

        let localVariableRequestBuilder: RequestBuilder<AppApiResponse>.Type = ZSGF.ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     双因素验证 获取
     
     - parameter appKey: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func app2FA(appKey: String, apiResponseQueue: DispatchQueue = ZSGF.ClientAPI.apiResponseQueue, completion: @escaping ((_ data: SetupCodeApiResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return app2FAWithRequestBuilder(appKey: appKey).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     双因素验证 获取
     - GET /App/{appKey}/2FA
     - 获取应用的双因素验证信息。
     - Bearer Token:
       - type: http
       - name: Bearer
     - parameter appKey: (path)  
     - returns: RequestBuilder<SetupCodeApiResponse> 
     */
    open class func app2FAWithRequestBuilder(appKey: String) -> RequestBuilder<SetupCodeApiResponse> {
        var localVariablePath = "/App/{appKey}/2FA"
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

        let localVariableRequestBuilder: RequestBuilder<SetupCodeApiResponse>.Type = ZSGF.ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     双因素验证 验证
     
     - parameter appKey: (path)  
     - parameter code: (query) 双因素验证代码 (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func app2FACheck(appKey: String, code: String? = nil, apiResponseQueue: DispatchQueue = ZSGF.ClientAPI.apiResponseQueue, completion: @escaping ((_ data: BooleanApiResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return app2FACheckWithRequestBuilder(appKey: appKey, code: code).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     双因素验证 验证
     - GET /App/{appKey}/2FACheck
     - 验证应用的双因素验证代码。
     - Bearer Token:
       - type: http
       - name: Bearer
     - parameter appKey: (path)  
     - parameter code: (query) 双因素验证代码 (optional)
     - returns: RequestBuilder<BooleanApiResponse> 
     */
    open class func app2FACheckWithRequestBuilder(appKey: String, code: String? = nil) -> RequestBuilder<BooleanApiResponse> {
        var localVariablePath = "/App/{appKey}/2FACheck"
        let appKeyPreEscape = "\(APIHelper.mapValueToPathItem(appKey))"
        let appKeyPostEscape = appKeyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{appKey}", with: appKeyPostEscape, options: .literal, range: nil)
        let localVariableURLString = ZSGF.ClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "code": (wrappedValue: code?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanApiResponse>.Type = ZSGF.ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     更新应用数据库
     
     - parameter appKey: (path)  
     - parameter checkOnly: (query) 是否仅检查版本 (optional, default to true)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func appCheckVersion(appKey: String, checkOnly: Bool? = nil, apiResponseQueue: DispatchQueue = ZSGF.ClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppCheckVersionResultApiResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appCheckVersionWithRequestBuilder(appKey: appKey, checkOnly: checkOnly).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     更新应用数据库
     - GET /App/{appKey}/CheckVersion
     - 检查应用数据库的版本，如果有未应用的迁移且checkOnly为false，则应用这些迁移。
     - Bearer Token:
       - type: http
       - name: Bearer
     - parameter appKey: (path)  
     - parameter checkOnly: (query) 是否仅检查版本 (optional, default to true)
     - returns: RequestBuilder<AppCheckVersionResultApiResponse> 
     */
    open class func appCheckVersionWithRequestBuilder(appKey: String, checkOnly: Bool? = nil) -> RequestBuilder<AppCheckVersionResultApiResponse> {
        var localVariablePath = "/App/{appKey}/CheckVersion"
        let appKeyPreEscape = "\(APIHelper.mapValueToPathItem(appKey))"
        let appKeyPostEscape = appKeyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{appKey}", with: appKeyPostEscape, options: .literal, range: nil)
        let localVariableURLString = ZSGF.ClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "checkOnly": (wrappedValue: checkOnly?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppCheckVersionResultApiResponse>.Type = ZSGF.ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     删除应用
     
     - parameter appKey: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func appDelete(appKey: String, apiResponseQueue: DispatchQueue = ZSGF.ClientAPI.apiResponseQueue, completion: @escaping ((_ data: BooleanApiResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appDeleteWithRequestBuilder(appKey: appKey).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     删除应用
     - DELETE /App/{appKey}
     - 根据应用Key删除应用。
     - Bearer Token:
       - type: http
       - name: Bearer
     - parameter appKey: (path)  
     - returns: RequestBuilder<BooleanApiResponse> 
     */
    open class func appDeleteWithRequestBuilder(appKey: String) -> RequestBuilder<BooleanApiResponse> {
        var localVariablePath = "/App/{appKey}"
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
     应用详情
     
     - parameter appKey: (path)  
     - parameter propCode: (query) 属性代码 (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func appInfo(appKey: String, propCode: String? = nil, apiResponseQueue: DispatchQueue = ZSGF.ClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppInfoResultApiResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appInfoWithRequestBuilder(appKey: appKey, propCode: propCode).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     应用详情
     - GET /App/{appKey}/Info
     - 根据应用Key获取应用的详细信息和属性。
     - Bearer Token:
       - type: http
       - name: Bearer
     - parameter appKey: (path)  
     - parameter propCode: (query) 属性代码 (optional)
     - returns: RequestBuilder<AppInfoResultApiResponse> 
     */
    open class func appInfoWithRequestBuilder(appKey: String, propCode: String? = nil) -> RequestBuilder<AppInfoResultApiResponse> {
        var localVariablePath = "/App/{appKey}/Info"
        let appKeyPreEscape = "\(APIHelper.mapValueToPathItem(appKey))"
        let appKeyPostEscape = appKeyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{appKey}", with: appKeyPostEscape, options: .literal, range: nil)
        let localVariableURLString = ZSGF.ClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "propCode": (wrappedValue: propCode?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppInfoResultApiResponse>.Type = ZSGF.ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     创建应用
     
     - parameter app: (body) 应用对象 (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func appPost(app: App? = nil, apiResponseQueue: DispatchQueue = ZSGF.ClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppPostResultApiResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appPostWithRequestBuilder(app: app).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     创建应用
     - POST /App
     - 创建一个新的应用。
     - Bearer Token:
       - type: http
       - name: Bearer
     - parameter app: (body) 应用对象 (optional)
     - returns: RequestBuilder<AppPostResultApiResponse> 
     */
    open class func appPostWithRequestBuilder(app: App? = nil) -> RequestBuilder<AppPostResultApiResponse> {
        let localVariablePath = "/App"
        let localVariableURLString = ZSGF.ClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: app)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json-patch+json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppPostResultApiResponse>.Type = ZSGF.ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     更新应用
     
     - parameter appKey: (path)  
     - parameter app: (body) 应用对象 (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func appPut(appKey: String, app: App? = nil, apiResponseQueue: DispatchQueue = ZSGF.ClientAPI.apiResponseQueue, completion: @escaping ((_ data: BooleanApiResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appPutWithRequestBuilder(appKey: appKey, app: app).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     更新应用
     - PUT /App/{appKey}
     - 根据应用Key更新应用信息。
     - Bearer Token:
       - type: http
       - name: Bearer
     - parameter appKey: (path)  
     - parameter app: (body) 应用对象 (optional)
     - returns: RequestBuilder<BooleanApiResponse> 
     */
    open class func appPutWithRequestBuilder(appKey: String, app: App? = nil) -> RequestBuilder<BooleanApiResponse> {
        var localVariablePath = "/App/{appKey}"
        let appKeyPreEscape = "\(APIHelper.mapValueToPathItem(appKey))"
        let appKeyPostEscape = appKeyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{appKey}", with: appKeyPostEscape, options: .literal, range: nil)
        let localVariableURLString = ZSGF.ClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: app)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json-patch+json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanApiResponse>.Type = ZSGF.ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     转移应用
     
     - parameter appKey: (path)  
     - parameter projectId: (query) 目标项目ID (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func appTransfer(appKey: String, projectId: Int64? = nil, apiResponseQueue: DispatchQueue = ZSGF.ClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppApiResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appTransferWithRequestBuilder(appKey: appKey, projectId: projectId).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     转移应用
     - GET /App/{appKey}/Transfer
     - 将应用转移到另一个项目。
     - Bearer Token:
       - type: http
       - name: Bearer
     - parameter appKey: (path)  
     - parameter projectId: (query) 目标项目ID (optional)
     - returns: RequestBuilder<AppApiResponse> 
     */
    open class func appTransferWithRequestBuilder(appKey: String, projectId: Int64? = nil) -> RequestBuilder<AppApiResponse> {
        var localVariablePath = "/App/{appKey}/Transfer"
        let appKeyPreEscape = "\(APIHelper.mapValueToPathItem(appKey))"
        let appKeyPostEscape = appKeyPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{appKey}", with: appKeyPostEscape, options: .literal, range: nil)
        let localVariableURLString = ZSGF.ClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "projectId": (wrappedValue: projectId?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppApiResponse>.Type = ZSGF.ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     应用列表
     
     - parameter projectId: (query) 项目ID (optional)
     - parameter skip: (query) 跳过的记录数 (optional)
     - parameter take: (query) 获取的记录数 (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func apps(projectId: Int64? = nil, skip: Int? = nil, take: Int? = nil, apiResponseQueue: DispatchQueue = ZSGF.ClientAPI.apiResponseQueue, completion: @escaping ((_ data: AppListResultApiResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return appsWithRequestBuilder(projectId: projectId, skip: skip, take: take).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     应用列表
     - GET /App
     - 根据项目ID获取应用列表，支持分页。
     - Bearer Token:
       - type: http
       - name: Bearer
     - parameter projectId: (query) 项目ID (optional)
     - parameter skip: (query) 跳过的记录数 (optional)
     - parameter take: (query) 获取的记录数 (optional)
     - returns: RequestBuilder<AppListResultApiResponse> 
     */
    open class func appsWithRequestBuilder(projectId: Int64? = nil, skip: Int? = nil, take: Int? = nil) -> RequestBuilder<AppListResultApiResponse> {
        let localVariablePath = "/App"
        let localVariableURLString = ZSGF.ClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "projectId": (wrappedValue: projectId?.encodeToJSON(), isExplode: true),
            "skip": (wrappedValue: skip?.encodeToJSON(), isExplode: true),
            "take": (wrappedValue: take?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<AppListResultApiResponse>.Type = ZSGF.ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
