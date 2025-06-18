# UserFriendsAPI

All URIs are relative to *https://api-dev.zashigaofa.cn*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userCommonInterests**](UserFriendsAPI.md#usercommoninterests) | **GET** /UserFriends/{appKey}/CommonInterests | 推荐相似兴趣用户
[**userFollowUser**](UserFriendsAPI.md#userfollowuser) | **POST** /UserFriends/{appKey}/Follower/{userId} | 添加关注
[**userFollowerPut**](UserFriendsAPI.md#userfollowerput) | **PUT** /UserFriends/{appKey}/Follower/{id} | 刷新粉丝数据
[**userFollowers**](UserFriendsAPI.md#userfollowers) | **GET** /UserFriends/{appKey}/Followers | 获取粉丝列表
[**userFollowing**](UserFriendsAPI.md#userfollowing) | **GET** /UserFriends/{appKey}/Following | 获取关注列表 / 判断是否关注
[**userFriendsNearBy**](UserFriendsAPI.md#userfriendsnearby) | **GET** /UserFriends/{appKey}/NearBy | 推荐附近用户
[**userMutualFollowers**](UserFriendsAPI.md#usermutualfollowers) | **GET** /UserFriends/{appKey}/MutualFollowers | 推荐共同粉丝用户
[**userMutualFollowings**](UserFriendsAPI.md#usermutualfollowings) | **GET** /UserFriends/{appKey}/MutualFollowings | 推荐共同关注用户
[**userProfileById**](UserFriendsAPI.md#userprofilebyid) | **GET** /UserFriends/{appKey}/Profile/{userId} | 获取用户资料
[**userUnfollowUser**](UserFriendsAPI.md#userunfollowuser) | **DELETE** /UserFriends/{appKey}/Follower/{userId} | 取消关注


# **userCommonInterests**
```swift
    open class func userCommonInterests(appKey: String, tag: String? = nil, skip: Int? = nil, take: Int? = nil, completion: @escaping (_ data: UserCommonInterestsResultApiResponse?, _ error: Error?) -> Void)
```

推荐相似兴趣用户

推荐有共同爱好的用户

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let tag = "tag_example" // String | 兴趣标签 (optional)
let skip = 987 // Int | 跳过的记录数 (optional) (default to 0)
let take = 987 // Int | 获取的记录数 (optional) (default to 10)

// 推荐相似兴趣用户
UserFriendsAPI.userCommonInterests(appKey: appKey, tag: tag, skip: skip, take: take) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appKey** | **String** |  | 
 **tag** | **String** | 兴趣标签 | [optional] 
 **skip** | **Int** | 跳过的记录数 | [optional] [default to 0]
 **take** | **Int** | 获取的记录数 | [optional] [default to 10]

### Return type

[**UserCommonInterestsResultApiResponse**](UserCommonInterestsResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userFollowUser**
```swift
    open class func userFollowUser(userId: Int64, appKey: String, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

添加关注

关注指定用户

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let userId = 987 // Int64 | 要关注的用户ID
let appKey = "appKey_example" // String | 

// 添加关注
UserFriendsAPI.userFollowUser(userId: userId, appKey: appKey) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **Int64** | 要关注的用户ID | 
 **appKey** | **String** |  | 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userFollowerPut**
```swift
    open class func userFollowerPut(id: Int64, appKey: String, followerPutModel: FollowerPutModel? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

刷新粉丝数据

根据粉丝ID更新粉丝信息

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 粉丝ID
let appKey = "appKey_example" // String | 
let followerPutModel = FollowerPutModel(alias: "alias_example", closenessScore: 123, attentionScore: 123, tags: "tags_example", status: "status_example", remark: "remark_example") // FollowerPutModel | 更新粉丝的请求参数 (optional)

// 刷新粉丝数据
UserFriendsAPI.userFollowerPut(id: id, appKey: appKey, followerPutModel: followerPutModel) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Int64** | 粉丝ID | 
 **appKey** | **String** |  | 
 **followerPutModel** | [**FollowerPutModel**](FollowerPutModel.md) | 更新粉丝的请求参数 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userFollowers**
```swift
    open class func userFollowers(appKey: String, tag: String? = nil, status: String? = nil, targetUserId: Int64? = nil, skip: Int? = nil, take: Int? = nil, completion: @escaping (_ data: UserFollowersResultApiResponse?, _ error: Error?) -> Void)
```

获取粉丝列表

根据条件获取我的粉丝列表

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let tag = "tag_example" // String | 标签 (optional)
let status = "status_example" // String | 状态 (optional)
let targetUserId = 987 // Int64 | 指定用户的粉丝 (optional) (default to 0)
let skip = 987 // Int | 跳过的记录数 (optional) (default to 0)
let take = 987 // Int | 获取的记录数 (optional) (default to 10)

// 获取粉丝列表
UserFriendsAPI.userFollowers(appKey: appKey, tag: tag, status: status, targetUserId: targetUserId, skip: skip, take: take) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appKey** | **String** |  | 
 **tag** | **String** | 标签 | [optional] 
 **status** | **String** | 状态 | [optional] 
 **targetUserId** | **Int64** | 指定用户的粉丝 | [optional] [default to 0]
 **skip** | **Int** | 跳过的记录数 | [optional] [default to 0]
 **take** | **Int** | 获取的记录数 | [optional] [default to 10]

### Return type

[**UserFollowersResultApiResponse**](UserFollowersResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userFollowing**
```swift
    open class func userFollowing(appKey: String, tag: String? = nil, status: String? = nil, targetUserId: Int64? = nil, skip: Int? = nil, take: Int? = nil, checkUserId: Int64? = nil, onlyIDs: Bool? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

获取关注列表 / 判断是否关注

根据条件获取我的关注列表，或判断是否关注某个用户

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let tag = "tag_example" // String | 用于过滤关注列表的标签（可选）。 (optional)
let status = "status_example" // String | 用于过滤关注列表的状态（可选）。 (optional)
let targetUserId = 987 // Int64 | 指定用户的关注记录，如果不提供则默认为当前用户的关注。 (optional) (default to 0)
let skip = 987 // Int | 跳过的记录数，用于分页（默认0）。 (optional) (default to 0)
let take = 987 // Int | 获取的记录数，用于分页（默认10）。 (optional) (default to 10)
let checkUserId = 987 // Int64 | 要判断是否关注的目标用户ID。如果提供此参数，方法将返回一个布尔值，表示当前用户是否关注该目标用户。 (optional)
let onlyIDs = true // Bool | 是否只返回关注用户的ID集合，默认为false（即返回完整的关注用户信息）。 (optional) (default to false)

// 获取关注列表 / 判断是否关注
UserFriendsAPI.userFollowing(appKey: appKey, tag: tag, status: status, targetUserId: targetUserId, skip: skip, take: take, checkUserId: checkUserId, onlyIDs: onlyIDs) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appKey** | **String** |  | 
 **tag** | **String** | 用于过滤关注列表的标签（可选）。 | [optional] 
 **status** | **String** | 用于过滤关注列表的状态（可选）。 | [optional] 
 **targetUserId** | **Int64** | 指定用户的关注记录，如果不提供则默认为当前用户的关注。 | [optional] [default to 0]
 **skip** | **Int** | 跳过的记录数，用于分页（默认0）。 | [optional] [default to 0]
 **take** | **Int** | 获取的记录数，用于分页（默认10）。 | [optional] [default to 10]
 **checkUserId** | **Int64** | 要判断是否关注的目标用户ID。如果提供此参数，方法将返回一个布尔值，表示当前用户是否关注该目标用户。 | [optional] 
 **onlyIDs** | **Bool** | 是否只返回关注用户的ID集合，默认为false（即返回完整的关注用户信息）。 | [optional] [default to false]

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userFriendsNearBy**
```swift
    open class func userFriendsNearBy(longitude: Double, latitude: Double, appKey: String, country: String? = nil, state: String? = nil, city: String? = nil, district: String? = nil, gender: String? = nil, ageS: Int? = nil, ageE: Int? = nil, tag: String? = nil, distance: Int64? = nil, skip: Int? = nil, take: Int? = nil, completion: @escaping (_ data: UserFriendsNearByResultApiResponse?, _ error: Error?) -> Void)
```

推荐附近用户

根据地理位置坐标和多种筛选条件，查询附近满足条件的用户列表，支持分页和按距离排序。 地理位置查询使用MySQL的ST_Distance_Sphere函数计算球面距离。 注意：longitude为经度(X轴)，latitude为纬度(Y轴)，参数顺序与常规坐标系一致

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let longitude = 987 // Double | 当前用户经度坐标(WGS84坐标系)
let latitude = 987 // Double | 当前用户纬度坐标(WGS84坐标系)
let appKey = "appKey_example" // String | 
let country = "country_example" // String | 国家过滤条件（精确匹配） (optional)
let state = "state_example" // String | 省份过滤条件（精确匹配） (optional)
let city = "city_example" // String | 城市过滤条件（精确匹配） (optional)
let district = "district_example" // String | 区县过滤条件（精确匹配） (optional)
let gender = "gender_example" // String | 性别过滤条件（可选值示例：Male/Female/Other） (optional)
let ageS = 987 // Int | 年龄起始范围（包含，0表示不限制） (optional)
let ageE = 987 // Int | 年龄结束范围（包含，0表示不限制） (optional)
let tag = "tag_example" // String | 兴趣标签过滤（支持模糊匹配，如：\"运动\"） (optional)
let distance = 987 // Int64 | 搜索半径（单位：米，0表示不限制距离） (optional) (default to 0)
let skip = 987 // Int | 跳过的记录数（分页起始位置，默认0） (optional) (default to 0)
let take = 987 // Int | 获取的记录数（分页大小，默认10，最大100） (optional) (default to 10)

// 推荐附近用户
UserFriendsAPI.userFriendsNearBy(longitude: longitude, latitude: latitude, appKey: appKey, country: country, state: state, city: city, district: district, gender: gender, ageS: ageS, ageE: ageE, tag: tag, distance: distance, skip: skip, take: take) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **longitude** | **Double** | 当前用户经度坐标(WGS84坐标系) | 
 **latitude** | **Double** | 当前用户纬度坐标(WGS84坐标系) | 
 **appKey** | **String** |  | 
 **country** | **String** | 国家过滤条件（精确匹配） | [optional] 
 **state** | **String** | 省份过滤条件（精确匹配） | [optional] 
 **city** | **String** | 城市过滤条件（精确匹配） | [optional] 
 **district** | **String** | 区县过滤条件（精确匹配） | [optional] 
 **gender** | **String** | 性别过滤条件（可选值示例：Male/Female/Other） | [optional] 
 **ageS** | **Int** | 年龄起始范围（包含，0表示不限制） | [optional] 
 **ageE** | **Int** | 年龄结束范围（包含，0表示不限制） | [optional] 
 **tag** | **String** | 兴趣标签过滤（支持模糊匹配，如：\&quot;运动\&quot;） | [optional] 
 **distance** | **Int64** | 搜索半径（单位：米，0表示不限制距离） | [optional] [default to 0]
 **skip** | **Int** | 跳过的记录数（分页起始位置，默认0） | [optional] [default to 0]
 **take** | **Int** | 获取的记录数（分页大小，默认10，最大100） | [optional] [default to 10]

### Return type

[**UserFriendsNearByResultApiResponse**](UserFriendsNearByResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userMutualFollowers**
```swift
    open class func userMutualFollowers(appKey: String, skip: Int? = nil, take: Int? = nil, completion: @escaping (_ data: UserMutualFollowersResultApiResponse?, _ error: Error?) -> Void)
```

推荐共同粉丝用户

推荐有共同粉丝的用户

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let skip = 987 // Int | 跳过的记录数 (optional) (default to 0)
let take = 987 // Int | 获取的记录数 (optional) (default to 10)

// 推荐共同粉丝用户
UserFriendsAPI.userMutualFollowers(appKey: appKey, skip: skip, take: take) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appKey** | **String** |  | 
 **skip** | **Int** | 跳过的记录数 | [optional] [default to 0]
 **take** | **Int** | 获取的记录数 | [optional] [default to 10]

### Return type

[**UserMutualFollowersResultApiResponse**](UserMutualFollowersResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userMutualFollowings**
```swift
    open class func userMutualFollowings(appKey: String, skip: Int? = nil, take: Int? = nil, completion: @escaping (_ data: UserMutualFollowingsResultApiResponse?, _ error: Error?) -> Void)
```

推荐共同关注用户

推荐有共同关注的用户

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let skip = 987 // Int | 跳过的记录数 (optional) (default to 0)
let take = 987 // Int | 获取的记录数 (optional) (default to 10)

// 推荐共同关注用户
UserFriendsAPI.userMutualFollowings(appKey: appKey, skip: skip, take: take) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **appKey** | **String** |  | 
 **skip** | **Int** | 跳过的记录数 | [optional] [default to 0]
 **take** | **Int** | 获取的记录数 | [optional] [default to 10]

### Return type

[**UserMutualFollowingsResultApiResponse**](UserMutualFollowingsResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userProfileById**
```swift
    open class func userProfileById(userId: Int64, appKey: String, completion: @escaping (_ data: GetUserProfileResultApiResponse?, _ error: Error?) -> Void)
```

获取用户资料

用于他人主页展示

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let userId = 987 // Int64 | 用户ID
let appKey = "appKey_example" // String | 

// 获取用户资料
UserFriendsAPI.userProfileById(userId: userId, appKey: appKey) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **Int64** | 用户ID | 
 **appKey** | **String** |  | 

### Return type

[**GetUserProfileResultApiResponse**](GetUserProfileResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userUnfollowUser**
```swift
    open class func userUnfollowUser(userId: Int64, appKey: String, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

取消关注

取消关注指定用户

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let userId = 987 // Int64 | 要取消关注的用户ID
let appKey = "appKey_example" // String | 

// 取消关注
UserFriendsAPI.userUnfollowUser(userId: userId, appKey: appKey) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **Int64** | 要取消关注的用户ID | 
 **appKey** | **String** |  | 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

