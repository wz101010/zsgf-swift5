//
// QRCodePreSignInRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct QRCodePreSignInRequest: Codable, JSONEncodable, Hashable {

    public var scopes: String?
    public var remark: String?
    public var scheme: String?

    public init(scopes: String? = nil, remark: String? = nil, scheme: String? = nil) {
        self.scopes = scopes
        self.remark = remark
        self.scheme = scheme
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case scopes
        case remark
        case scheme
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(scopes, forKey: .scopes)
        try container.encodeIfPresent(remark, forKey: .remark)
        try container.encodeIfPresent(scheme, forKey: .scheme)
    }
}

