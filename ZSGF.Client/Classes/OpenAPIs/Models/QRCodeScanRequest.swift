//
// QRCodeScanRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct QRCodeScanRequest: Codable, JSONEncodable, Hashable {

    public var signInKey: Int64

    public init(signInKey: Int64) {
        self.signInKey = signInKey
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case signInKey
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(signInKey, forKey: .signInKey)
    }
}

