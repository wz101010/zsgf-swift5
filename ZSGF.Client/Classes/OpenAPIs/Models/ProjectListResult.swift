//
// ProjectListResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ProjectListResult: Codable, JSONEncodable, Hashable {

    public var total: Int?
    public var data: [Project]?

    public init(total: Int? = nil, data: [Project]? = nil) {
        self.total = total
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case total
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(total, forKey: .total)
        try container.encodeIfPresent(data, forKey: .data)
    }
}

