//
// ExecuteFunctionRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ExecuteFunctionRequest: Codable, JSONEncodable, Hashable {

    /** 函数标识 */
    public var functionKey: String?

    public init(functionKey: String? = nil) {
        self.functionKey = functionKey
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case functionKey
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(functionKey, forKey: .functionKey)
    }
}

