//
// RecommendFriend.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct RecommendFriend: Codable, JSONEncodable, Hashable {

    /** 用户ID */
    public var userID: Int64?
    /** 昵称 */
    public var nickName: String?
    /** 头像 */
    public var avatar: String?
    /** 性别 */
    public var gender: String?
    /** 年龄 */
    public var age: Int?
    /** 兴趣标签 */
    public var interestTags: String?
    /** 位置名称 */
    public var locationName: String?
    /** 纬度 */
    public var latitude: Double?
    /** 经度 */
    public var longitude: Double?
    /** 距离 */
    public var distance: Int64?
    /** 个人简介 */
    public var biography: String?
    /** 国家 */
    public var country: String?
    /** 省份 */
    public var state: String?
    /** 城市 */
    public var city: String?
    /** 区县 */
    public var district: String?

    public init(userID: Int64? = nil, nickName: String? = nil, avatar: String? = nil, gender: String? = nil, age: Int? = nil, interestTags: String? = nil, locationName: String? = nil, latitude: Double? = nil, longitude: Double? = nil, distance: Int64? = nil, biography: String? = nil, country: String? = nil, state: String? = nil, city: String? = nil, district: String? = nil) {
        self.userID = userID
        self.nickName = nickName
        self.avatar = avatar
        self.gender = gender
        self.age = age
        self.interestTags = interestTags
        self.locationName = locationName
        self.latitude = latitude
        self.longitude = longitude
        self.distance = distance
        self.biography = biography
        self.country = country
        self.state = state
        self.city = city
        self.district = district
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case userID
        case nickName
        case avatar
        case gender
        case age
        case interestTags
        case locationName
        case latitude
        case longitude
        case distance
        case biography
        case country
        case state
        case city
        case district
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(userID, forKey: .userID)
        try container.encodeIfPresent(nickName, forKey: .nickName)
        try container.encodeIfPresent(avatar, forKey: .avatar)
        try container.encodeIfPresent(gender, forKey: .gender)
        try container.encodeIfPresent(age, forKey: .age)
        try container.encodeIfPresent(interestTags, forKey: .interestTags)
        try container.encodeIfPresent(locationName, forKey: .locationName)
        try container.encodeIfPresent(latitude, forKey: .latitude)
        try container.encodeIfPresent(longitude, forKey: .longitude)
        try container.encodeIfPresent(distance, forKey: .distance)
        try container.encodeIfPresent(biography, forKey: .biography)
        try container.encodeIfPresent(country, forKey: .country)
        try container.encodeIfPresent(state, forKey: .state)
        try container.encodeIfPresent(city, forKey: .city)
        try container.encodeIfPresent(district, forKey: .district)
    }
}

