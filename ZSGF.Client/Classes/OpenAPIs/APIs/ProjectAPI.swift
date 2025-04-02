//
// ProjectAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ProjectAPI {

    /**
     项目详情
     
     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func project(id: Int64, apiResponseQueue: DispatchQueue = ZSGF.ClientAPI.apiResponseQueue, completion: @escaping ((_ data: ProjectApiResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return projectWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     项目详情
     - GET /Project/{id}
     - 根据项目ID获取项目详情
     - Bearer Token:
       - type: http
       - name: Bearer
     - parameter id: (path)  
     - returns: RequestBuilder<ProjectApiResponse> 
     */
    open class func projectWithRequestBuilder(id: Int64) -> RequestBuilder<ProjectApiResponse> {
        var localVariablePath = "/Project/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ZSGF.ClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ProjectApiResponse>.Type = ZSGF.ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     删除项目
     
     - parameter id: (path)  
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func projectDelete(id: Int64, apiResponseQueue: DispatchQueue = ZSGF.ClientAPI.apiResponseQueue, completion: @escaping ((_ data: BooleanApiResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return projectDeleteWithRequestBuilder(id: id).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     删除项目
     - DELETE /Project/{id}
     - 根据项目ID删除项目
     - Bearer Token:
       - type: http
       - name: Bearer
     - parameter id: (path)  
     - returns: RequestBuilder<BooleanApiResponse> 
     */
    open class func projectDeleteWithRequestBuilder(id: Int64) -> RequestBuilder<BooleanApiResponse> {
        var localVariablePath = "/Project/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
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
     创建项目
     
     - parameter project: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func projectPost(project: Project? = nil, apiResponseQueue: DispatchQueue = ZSGF.ClientAPI.apiResponseQueue, completion: @escaping ((_ data: PostResultApiResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return projectPostWithRequestBuilder(project: project).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     创建项目
     - POST /Project
     - 创建一个新项目
     - Bearer Token:
       - type: http
       - name: Bearer
     - parameter project: (body)  (optional)
     - returns: RequestBuilder<PostResultApiResponse> 
     */
    open class func projectPostWithRequestBuilder(project: Project? = nil) -> RequestBuilder<PostResultApiResponse> {
        let localVariablePath = "/Project"
        let localVariableURLString = ZSGF.ClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: project)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json-patch+json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PostResultApiResponse>.Type = ZSGF.ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     更新项目
     
     - parameter id: (path)  
     - parameter project: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func projectPut(id: String, project: Project? = nil, apiResponseQueue: DispatchQueue = ZSGF.ClientAPI.apiResponseQueue, completion: @escaping ((_ data: BooleanApiResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return projectPutWithRequestBuilder(id: id, project: project).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     更新项目
     - PUT /Project/{id}
     - 根据项目ID更新项目
     - Bearer Token:
       - type: http
       - name: Bearer
     - parameter id: (path)  
     - parameter project: (body)  (optional)
     - returns: RequestBuilder<BooleanApiResponse> 
     */
    open class func projectPutWithRequestBuilder(id: String, project: Project? = nil) -> RequestBuilder<BooleanApiResponse> {
        var localVariablePath = "/Project/{id}"
        let idPreEscape = "\(APIHelper.mapValueToPathItem(id))"
        let idPostEscape = idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{id}", with: idPostEscape, options: .literal, range: nil)
        let localVariableURLString = ZSGF.ClientAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: project)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json-patch+json",
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BooleanApiResponse>.Type = ZSGF.ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }

    /**
     项目列表
     
     - parameter skip: (query)  (optional)
     - parameter take: (query)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    @discardableResult
    open class func projects(skip: Int? = nil, take: Int? = nil, apiResponseQueue: DispatchQueue = ZSGF.ClientAPI.apiResponseQueue, completion: @escaping ((_ data: ProjectListResultApiResponse?, _ error: Error?) -> Void)) -> RequestTask {
        return projectsWithRequestBuilder(skip: skip, take: take).execute(apiResponseQueue) { result in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     项目列表
     - GET /Project
     - 获取项目列表，支持分页
     - Bearer Token:
       - type: http
       - name: Bearer
     - parameter skip: (query)  (optional)
     - parameter take: (query)  (optional)
     - returns: RequestBuilder<ProjectListResultApiResponse> 
     */
    open class func projectsWithRequestBuilder(skip: Int? = nil, take: Int? = nil) -> RequestBuilder<ProjectListResultApiResponse> {
        let localVariablePath = "/Project"
        let localVariableURLString = ZSGF.ClientAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "skip": (wrappedValue: skip?.encodeToJSON(), isExplode: true),
            "take": (wrappedValue: take?.encodeToJSON(), isExplode: true),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ProjectListResultApiResponse>.Type = ZSGF.ClientAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: true)
    }
}
