//
// UserLocationsResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UserLocationsResult: Codable, JSONEncodable, Hashable {

    public var totalLocations: Int64?
    public var data: [GeoLocationResponseModel]?

    public init(totalLocations: Int64? = nil, data: [GeoLocationResponseModel]? = nil) {
        self.totalLocations = totalLocations
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case totalLocations
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(totalLocations, forKey: .totalLocations)
        try container.encodeIfPresent(data, forKey: .data)
    }
}

