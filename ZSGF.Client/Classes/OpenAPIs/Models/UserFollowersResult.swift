//
// UserFollowersResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct UserFollowersResult: Codable, JSONEncodable, Hashable {

    public var totalFollowers: Int64?
    public var data: [FollowerModel]?

    public init(totalFollowers: Int64? = nil, data: [FollowerModel]? = nil) {
        self.totalFollowers = totalFollowers
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case totalFollowers
        case data
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(totalFollowers, forKey: .totalFollowers)
        try container.encodeIfPresent(data, forKey: .data)
    }
}

