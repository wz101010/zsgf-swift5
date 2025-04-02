//
// ServiceSettingGroupPostResultApiResponse.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ServiceSettingGroupPostResultApiResponse: Codable, JSONEncodable, Hashable {

    /** 状态码 */
    public var code: Int? = 200
    public var data: ServiceSettingGroupPostResult?
    /** 错误信息 */
    public var error: String? = ""

    public init(code: Int? = 200, data: ServiceSettingGroupPostResult? = nil, error: String? = "") {
        self.code = code
        self.data = data
        self.error = error
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case code
        case data
        case error
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(code, forKey: .code)
        try container.encodeIfPresent(data, forKey: .data)
        try container.encodeIfPresent(error, forKey: .error)
    }
}

