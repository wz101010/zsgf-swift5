# UserAPI

All URIs are relative to *https://api.zashigaofa.cn*

Method | HTTP request | Description
------------- | ------------- | -------------
[**user**](UserAPI.md#user) | **GET** /User/{appKey}/{id} | 获取用户详情
[**userClear**](UserAPI.md#userclear) | **DELETE** /User/{appKey}/Clear | 清空用户数据
[**userCommonInterests**](UserAPI.md#usercommoninterests) | **GET** /User/{appKey}/Friends/CommonInterests | 有共同爱好的用户推荐
[**userDeactivateHard**](UserAPI.md#userdeactivatehard) | **DELETE** /User/{appKey}/DeactivateHard | 注销账号
[**userDelete**](UserAPI.md#userdelete) | **DELETE** /User/{appKey}/{id} | 删除用户
[**userEmailSignIn**](UserAPI.md#useremailsignin) | **POST** /User/{appKey}/EmailSignIn | 邮箱登录
[**userEmailSignUp**](UserAPI.md#useremailsignup) | **POST** /User/{appKey}/EmailSignUp | 邮箱注册
[**userExport**](UserAPI.md#userexport) | **GET** /User/{appKey}/Export | 导出用户数据
[**userFollowUser**](UserAPI.md#userfollowuser) | **POST** /User/{appKey}/Follower/{userId} | 关注用户
[**userFollowerPut**](UserAPI.md#userfollowerput) | **PUT** /User/{appKey}/Follower/{id} | 更新粉丝
[**userFollowers**](UserAPI.md#userfollowers) | **GET** /User/{appKey}/Followers | 获取我的粉丝列表
[**userFollowing**](UserAPI.md#userfollowing) | **GET** /User/{appKey}/Following | 获取当前用户的关注列表，或者判断是否关注某个特定用户。
[**userFriendsNearBy**](UserAPI.md#userfriendsnearby) | **GET** /User/{appKey}/Friends/NearBy | 获取附近的用户推荐列表
[**userImport**](UserAPI.md#userimport) | **POST** /User/{appKey}/Import | 导入用户数据
[**userLocation**](UserAPI.md#userlocation) | **GET** /User/{appKey}/Location/{id} | 获取位置详情
[**userLocationDelete**](UserAPI.md#userlocationdelete) | **DELETE** /User/{appKey}/Location/{id} | 删除位置
[**userLocationPost**](UserAPI.md#userlocationpost) | **POST** /User/{appKey}/Location | 添加位置
[**userLocationPut**](UserAPI.md#userlocationput) | **PUT** /User/{appKey}/Location/{id} | 更新位置
[**userLocations**](UserAPI.md#userlocations) | **GET** /User/{appKey}/Locations | 获取位置列表
[**userMutualFollowers**](UserAPI.md#usermutualfollowers) | **GET** /User/{appKey}/Friends/MutualFollowers | 有共同粉丝的用户推荐
[**userMutualFollowings**](UserAPI.md#usermutualfollowings) | **GET** /User/{appKey}/Friends/MutualFollowings | 有共同关注的用户推荐
[**userOAuthAccountBind**](UserAPI.md#useroauthaccountbind) | **POST** /User/{appKey}/OAuthAccountBind | 外部账号 绑定，如果已存在绑定则直接返回成功
[**userOAuthAccountSignIn**](UserAPI.md#useroauthaccountsignin) | **POST** /User/{appKey}/OAuthAccountSignIn | 外部账号 登录
[**userOAuthAccounts**](UserAPI.md#useroauthaccounts) | **GET** /User/{appKey}/OAuthAccounts | 外部账号 绑定列表
[**userOAuthAccountsPutBind**](UserAPI.md#useroauthaccountsputbind) | **PUT** /User/{appKey}/OAuthAccounts/{id} | 外部账号 更新绑定
[**userOAuthAccountsUnBind**](UserAPI.md#useroauthaccountsunbind) | **DELETE** /User/{appKey}/OAuthAccounts/{id} | 外部账号 删除绑定
[**userPhoneSignIn**](UserAPI.md#userphonesignin) | **POST** /User/{appKey}/PhoneSignIn | 手机登录
[**userPhoneSignUp**](UserAPI.md#userphonesignup) | **POST** /User/{appKey}/PhoneSignUp | 手机注册
[**userProfile**](UserAPI.md#userprofile) | **GET** /User/{appKey}/Profile | 获取个人资料
[**userProfileById**](UserAPI.md#userprofilebyid) | **GET** /User/{appKey}/Profile/{userId} | 获取指定用户资料
[**userPut**](UserAPI.md#userput) | **PUT** /User/{appKey}/{id} | 更新用户信息
[**userQRCodePreSignIn**](UserAPI.md#userqrcodepresignin) | **POST** /User/{appKey}/QRCodePreSignIn | 微信小程序 - 预登陆
[**userQRCodeScan**](UserAPI.md#userqrcodescan) | **POST** /User/{appKey}/QRCodeScan | 微信小程序 - 扫码
[**userQRCodeSignIn**](UserAPI.md#userqrcodesignin) | **POST** /User/{appKey}/QRCodeSignIn | 微信小程序 - 网页登录
[**userQRCodeSignUp**](UserAPI.md#userqrcodesignup) | **POST** /User/{appKey}/QRCodeSignUp | 微信小程序 - 注册
[**userResetEmail**](UserAPI.md#userresetemail) | **PUT** /User/{appKey}/ResetEmail | 重置邮箱
[**userResetPhone**](UserAPI.md#userresetphone) | **PUT** /User/{appKey}/ResetPhone | 重置手机号
[**userResetPwd**](UserAPI.md#userresetpwd) | **POST** /User/{appKey}/ResetPwd | 重置密码
[**userSendEmailCode**](UserAPI.md#usersendemailcode) | **POST** /User/{appKey}/SendEmailCode | 发送邮箱验证码
[**userSendSMSCode**](UserAPI.md#usersendsmscode) | **POST** /User/{appKey}/SendSMSCode | 发送手机验证码
[**userSignIn**](UserAPI.md#usersignin) | **POST** /User/{appKey}/SignIn | 账号密码 登录
[**userSignUp**](UserAPI.md#usersignup) | **POST** /User/{appKey}/SignUp | 账号密码 注册
[**userTwoFactorAuth**](UserAPI.md#usertwofactorauth) | **GET** /User/{appKey}/TwoFactorAuth | 双因素验证
[**userUnfollowUser**](UserAPI.md#userunfollowuser) | **DELETE** /User/{appKey}/Follower/{userId} | 取消关注
[**userUnionIDSignIn**](UserAPI.md#userunionidsignin) | **POST** /User/{appKey}/UnionIDSignIn | UnionID登录
[**userUnionIDSignUp**](UserAPI.md#userunionidsignup) | **POST** /User/{appKey}/UnionIDSignUp | UnionID注册
[**userUpdateProfile**](UserAPI.md#userupdateprofile) | **PUT** /User/{appKey}/Profile | 更新个人资料
[**users**](UserAPI.md#users) | **GET** /User/{appKey} | 获取用户列表


# **user**
```swift
    open class func user(id: Int64, appKey: String, completion: @escaping (_ data: UserApiResponse?, _ error: Error?) -> Void)
```

获取用户详情

根据用户ID获取用户详情

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 用户ID
let appKey = "appKey_example" // String | 

// 获取用户详情
UserAPI.user(id: id, appKey: appKey) { (response, error) in
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
 **id** | **Int64** | 用户ID | 
 **appKey** | **String** |  | 

### Return type

[**UserApiResponse**](UserApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userClear**
```swift
    open class func userClear(appKey: String, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

清空用户数据

清空用户数据

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 

// 清空用户数据
UserAPI.userClear(appKey: appKey) { (response, error) in
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

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCommonInterests**
```swift
    open class func userCommonInterests(appKey: String, tag: String? = nil, skip: Int? = nil, take: Int? = nil, completion: @escaping (_ data: UserCommonInterestsResultApiResponse?, _ error: Error?) -> Void)
```

有共同爱好的用户推荐

推荐有共同爱好的用户

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let tag = "tag_example" // String | 兴趣标签 (optional)
let skip = 987 // Int | 跳过的记录数 (optional) (default to 0)
let take = 987 // Int | 获取的记录数 (optional) (default to 10)

// 有共同爱好的用户推荐
UserAPI.userCommonInterests(appKey: appKey, tag: tag, skip: skip, take: take) { (response, error) in
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

# **userDeactivateHard**
```swift
    open class func userDeactivateHard(appKey: String, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

注销账号

清除用户所有附属数据，并注销账号

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 

// 注销账号
UserAPI.userDeactivateHard(appKey: appKey) { (response, error) in
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

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userDelete**
```swift
    open class func userDelete(id: Int64, appKey: String, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

删除用户

根据用户ID删除用户

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 用户ID
let appKey = "appKey_example" // String | 

// 删除用户
UserAPI.userDelete(id: id, appKey: appKey) { (response, error) in
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
 **id** | **Int64** | 用户ID | 
 **appKey** | **String** |  | 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userEmailSignIn**
```swift
    open class func userEmailSignIn(appKey: String, emailSignInRequest: EmailSignInRequest? = nil, completion: @escaping (_ data: TokenModelApiResponse?, _ error: Error?) -> Void)
```

邮箱登录

使用邮箱进行登录

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let emailSignInRequest = EmailSignInRequest(email: "email_example", verifyCode: "verifyCode_example", twoFactorCode: "twoFactorCode_example") // EmailSignInRequest | 登录请求参数 (optional)

// 邮箱登录
UserAPI.userEmailSignIn(appKey: appKey, emailSignInRequest: emailSignInRequest) { (response, error) in
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
 **emailSignInRequest** | [**EmailSignInRequest**](EmailSignInRequest.md) | 登录请求参数 | [optional] 

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userEmailSignUp**
```swift
    open class func userEmailSignUp(appKey: String, emailSignUpRequest: EmailSignUpRequest? = nil, completion: @escaping (_ data: TokenModelApiResponse?, _ error: Error?) -> Void)
```

邮箱注册

使用邮箱进行注册

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let emailSignUpRequest = EmailSignUpRequest(email: "email_example", pwd: "pwd_example", emailCode: "emailCode_example", phone: "phone_example", phoneCode: "phoneCode_example", nickName: "nickName_example", avatar: "avatar_example", data: "data_example") // EmailSignUpRequest | 注册请求参数 (optional)

// 邮箱注册
UserAPI.userEmailSignUp(appKey: appKey, emailSignUpRequest: emailSignUpRequest) { (response, error) in
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
 **emailSignUpRequest** | [**EmailSignUpRequest**](EmailSignUpRequest.md) | 注册请求参数 | [optional] 

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userExport**
```swift
    open class func userExport(appKey: String, completion: @escaping (_ data: URL?, _ error: Error?) -> Void)
```

导出用户数据

导出所有用户数据为Excel文件

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 

// 导出用户数据
UserAPI.userExport(appKey: appKey) { (response, error) in
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

### Return type

**URL**

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userFollowUser**
```swift
    open class func userFollowUser(userId: Int64, appKey: String, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

关注用户

关注指定用户

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let userId = 987 // Int64 | 要关注的用户ID
let appKey = "appKey_example" // String | 

// 关注用户
UserAPI.userFollowUser(userId: userId, appKey: appKey) { (response, error) in
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

更新粉丝

根据粉丝ID更新粉丝信息

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 粉丝ID
let appKey = "appKey_example" // String | 
let followerPutModel = FollowerPutModel(alias: "alias_example", closenessScore: 123, attentionScore: 123, tags: "tags_example", status: "status_example", remark: "remark_example") // FollowerPutModel | 更新粉丝的请求参数 (optional)

// 更新粉丝
UserAPI.userFollowerPut(id: id, appKey: appKey, followerPutModel: followerPutModel) { (response, error) in
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

获取我的粉丝列表

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

// 获取我的粉丝列表
UserAPI.userFollowers(appKey: appKey, tag: tag, status: status, targetUserId: targetUserId, skip: skip, take: take) { (response, error) in
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

获取当前用户的关注列表，或者判断是否关注某个特定用户。

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

// 获取当前用户的关注列表，或者判断是否关注某个特定用户。
UserAPI.userFollowing(appKey: appKey, tag: tag, status: status, targetUserId: targetUserId, skip: skip, take: take, checkUserId: checkUserId, onlyIDs: onlyIDs) { (response, error) in
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

获取附近的用户推荐列表

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

// 获取附近的用户推荐列表
UserAPI.userFriendsNearBy(longitude: longitude, latitude: latitude, appKey: appKey, country: country, state: state, city: city, district: district, gender: gender, ageS: ageS, ageE: ageE, tag: tag, distance: distance, skip: skip, take: take) { (response, error) in
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

# **userImport**
```swift
    open class func userImport(appKey: String, check: Bool? = nil, file: URL? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

导入用户数据

导入用户数据

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let check = true // Bool | 是否进行检查 (optional)
let file = URL(string: "https://example.com")! // URL | 导入的文件 (optional)

// 导入用户数据
UserAPI.userImport(appKey: appKey, check: check, file: file) { (response, error) in
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
 **check** | **Bool** | 是否进行检查 | [optional] 
 **file** | **URL** | 导入的文件 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userLocation**
```swift
    open class func userLocation(id: Int64, appKey: String, completion: @escaping (_ data: GeoLocationModelApiResponse?, _ error: Error?) -> Void)
```

获取位置详情

根据位置ID获取位置详情

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 位置ID
let appKey = "appKey_example" // String | 

// 获取位置详情
UserAPI.userLocation(id: id, appKey: appKey) { (response, error) in
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
 **id** | **Int64** | 位置ID | 
 **appKey** | **String** |  | 

### Return type

[**GeoLocationModelApiResponse**](GeoLocationModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userLocationDelete**
```swift
    open class func userLocationDelete(id: Int64, appKey: String, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

删除位置

根据位置ID删除位置信息

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 位置ID
let appKey = "appKey_example" // String | 

// 删除位置
UserAPI.userLocationDelete(id: id, appKey: appKey) { (response, error) in
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
 **id** | **Int64** | 位置ID | 
 **appKey** | **String** |  | 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userLocationPost**
```swift
    open class func userLocationPost(appKey: String, geoLocationModel: GeoLocationModel? = nil, completion: @escaping (_ data: UserLocationPostResultApiResponse?, _ error: Error?) -> Void)
```

添加位置

添加新的位置信息

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let geoLocationModel = GeoLocationModel(locationName: "locationName_example", latitude: 123, longitude: 123, locationType: "locationType_example", recipientName: "recipientName_example", phoneNumber: "phoneNumber_example", email: "email_example", country: "country_example", state: "state_example", city: "city_example", district: "district_example", street: "street_example", zipCode: "zipCode_example", address: "address_example", mapType: "mapType_example", remark: "remark_example", tags: "tags_example", enable: false, showIndex: 123, createDate: Date(), lastUpdate: Date()) // GeoLocationModel | 位置信息 (optional)

// 添加位置
UserAPI.userLocationPost(appKey: appKey, geoLocationModel: geoLocationModel) { (response, error) in
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
 **geoLocationModel** | [**GeoLocationModel**](GeoLocationModel.md) | 位置信息 | [optional] 

### Return type

[**UserLocationPostResultApiResponse**](UserLocationPostResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userLocationPut**
```swift
    open class func userLocationPut(id: Int64, appKey: String, geoLocationModel: GeoLocationModel? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

更新位置

此方法用于更新指定位置ID的位置信息。如果位置不存在，则创建一个新的位置。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 位置ID
let appKey = "appKey_example" // String | 
let geoLocationModel = GeoLocationModel(locationName: "locationName_example", latitude: 123, longitude: 123, locationType: "locationType_example", recipientName: "recipientName_example", phoneNumber: "phoneNumber_example", email: "email_example", country: "country_example", state: "state_example", city: "city_example", district: "district_example", street: "street_example", zipCode: "zipCode_example", address: "address_example", mapType: "mapType_example", remark: "remark_example", tags: "tags_example", enable: false, showIndex: 123, createDate: Date(), lastUpdate: Date()) // GeoLocationModel | 位置信息 (optional)

// 更新位置
UserAPI.userLocationPut(id: id, appKey: appKey, geoLocationModel: geoLocationModel) { (response, error) in
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
 **id** | **Int64** | 位置ID | 
 **appKey** | **String** |  | 
 **geoLocationModel** | [**GeoLocationModel**](GeoLocationModel.md) | 位置信息 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userLocations**
```swift
    open class func userLocations(appKey: String, tag: String? = nil, type: String? = nil, x: Double? = nil, y: Double? = nil, sphere: Int64? = nil, skip: Int? = nil, take: Int? = nil, completion: @escaping (_ data: UserLocationsResultApiResponse?, _ error: Error?) -> Void)
```

获取位置列表

根据条件获取位置列表

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let tag = "tag_example" // String | 标签 (optional)
let type = "type_example" // String | 分类 (optional)
let x = 987 // Double | 纬度 (optional)
let y = 987 // Double | 经度 (optional)
let sphere = 987 // Int64 | 附近距离，单位：米 (optional)
let skip = 987 // Int | 跳过的记录数 (optional)
let take = 987 // Int | 获取的记录数 (optional) (default to 10)

// 获取位置列表
UserAPI.userLocations(appKey: appKey, tag: tag, type: type, x: x, y: y, sphere: sphere, skip: skip, take: take) { (response, error) in
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
 **type** | **String** | 分类 | [optional] 
 **x** | **Double** | 纬度 | [optional] 
 **y** | **Double** | 经度 | [optional] 
 **sphere** | **Int64** | 附近距离，单位：米 | [optional] 
 **skip** | **Int** | 跳过的记录数 | [optional] 
 **take** | **Int** | 获取的记录数 | [optional] [default to 10]

### Return type

[**UserLocationsResultApiResponse**](UserLocationsResultApiResponse.md)

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

有共同粉丝的用户推荐

推荐有共同粉丝的用户

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let skip = 987 // Int | 跳过的记录数 (optional) (default to 0)
let take = 987 // Int | 获取的记录数 (optional) (default to 10)

// 有共同粉丝的用户推荐
UserAPI.userMutualFollowers(appKey: appKey, skip: skip, take: take) { (response, error) in
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

有共同关注的用户推荐

推荐有共同关注的用户

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let skip = 987 // Int | 跳过的记录数 (optional) (default to 0)
let take = 987 // Int | 获取的记录数 (optional) (default to 10)

// 有共同关注的用户推荐
UserAPI.userMutualFollowings(appKey: appKey, skip: skip, take: take) { (response, error) in
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

# **userOAuthAccountBind**
```swift
    open class func userOAuthAccountBind(appKey: String, oAuthAccountBindRequest: OAuthAccountBindRequest? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

外部账号 绑定，如果已存在绑定则直接返回成功

绑定外部账号

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let oAuthAccountBindRequest = OAuthAccountBindRequest(unionID: "unionID_example", platform: "platform_example", platformName: "platformName_example", avatar: "avatar_example", data: "data_example") // OAuthAccountBindRequest | 绑定请求参数 (optional)

// 外部账号 绑定，如果已存在绑定则直接返回成功
UserAPI.userOAuthAccountBind(appKey: appKey, oAuthAccountBindRequest: oAuthAccountBindRequest) { (response, error) in
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
 **oAuthAccountBindRequest** | [**OAuthAccountBindRequest**](OAuthAccountBindRequest.md) | 绑定请求参数 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userOAuthAccountSignIn**
```swift
    open class func userOAuthAccountSignIn(appKey: String, oAuthAccountSignInRequest: OAuthAccountSignInRequest? = nil, completion: @escaping (_ data: TokenModelApiResponse?, _ error: Error?) -> Void)
```

外部账号 登录

使用外部账号进行登录

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let oAuthAccountSignInRequest = OAuthAccountSignInRequest(unionID: "unionID_example", platform: "platform_example", twoFactorCode: "twoFactorCode_example") // OAuthAccountSignInRequest | 登录请求参数 (optional)

// 外部账号 登录
UserAPI.userOAuthAccountSignIn(appKey: appKey, oAuthAccountSignInRequest: oAuthAccountSignInRequest) { (response, error) in
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
 **oAuthAccountSignInRequest** | [**OAuthAccountSignInRequest**](OAuthAccountSignInRequest.md) | 登录请求参数 | [optional] 

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userOAuthAccounts**
```swift
    open class func userOAuthAccounts(appKey: String, completion: @escaping (_ data: UserLoginsListApiResponse?, _ error: Error?) -> Void)
```

外部账号 绑定列表

获取外部账号绑定列表

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 

// 外部账号 绑定列表
UserAPI.userOAuthAccounts(appKey: appKey) { (response, error) in
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

### Return type

[**UserLoginsListApiResponse**](UserLoginsListApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userOAuthAccountsPutBind**
```swift
    open class func userOAuthAccountsPutBind(id: Int64, appKey: String, oAuthAccountPutBindRequest: OAuthAccountPutBindRequest? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

外部账号 更新绑定

更新外部账号绑定信息

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 绑定ID
let appKey = "appKey_example" // String | 
let oAuthAccountPutBindRequest = OAuthAccountPutBindRequest(avatar: "avatar_example", data: "data_example", enable: false) // OAuthAccountPutBindRequest | 更新请求参数 (optional)

// 外部账号 更新绑定
UserAPI.userOAuthAccountsPutBind(id: id, appKey: appKey, oAuthAccountPutBindRequest: oAuthAccountPutBindRequest) { (response, error) in
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
 **id** | **Int64** | 绑定ID | 
 **appKey** | **String** |  | 
 **oAuthAccountPutBindRequest** | [**OAuthAccountPutBindRequest**](OAuthAccountPutBindRequest.md) | 更新请求参数 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userOAuthAccountsUnBind**
```swift
    open class func userOAuthAccountsUnBind(id: Int64, appKey: String, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

外部账号 删除绑定

删除外部账号绑定

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 绑定ID
let appKey = "appKey_example" // String | 

// 外部账号 删除绑定
UserAPI.userOAuthAccountsUnBind(id: id, appKey: appKey) { (response, error) in
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
 **id** | **Int64** | 绑定ID | 
 **appKey** | **String** |  | 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userPhoneSignIn**
```swift
    open class func userPhoneSignIn(appKey: String, phoneSignInRequest: PhoneSignInRequest? = nil, completion: @escaping (_ data: TokenModelApiResponse?, _ error: Error?) -> Void)
```

手机登录

使用手机号码进行登录

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let phoneSignInRequest = PhoneSignInRequest(phone: "phone_example", verifyCode: "verifyCode_example", twoFactorCode: "twoFactorCode_example") // PhoneSignInRequest | 登录请求参数 (optional)

// 手机登录
UserAPI.userPhoneSignIn(appKey: appKey, phoneSignInRequest: phoneSignInRequest) { (response, error) in
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
 **phoneSignInRequest** | [**PhoneSignInRequest**](PhoneSignInRequest.md) | 登录请求参数 | [optional] 

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userPhoneSignUp**
```swift
    open class func userPhoneSignUp(appKey: String, phoneSignUpRequest: PhoneSignUpRequest? = nil, completion: @escaping (_ data: TokenModelApiResponse?, _ error: Error?) -> Void)
```

手机注册

使用手机号码进行注册

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let phoneSignUpRequest = PhoneSignUpRequest(phone: "phone_example", phoneCode: "phoneCode_example", pwd: "pwd_example", email: "email_example", emailCode: "emailCode_example", nickName: "nickName_example", avatar: "avatar_example", data: "data_example") // PhoneSignUpRequest | 注册请求参数 (optional)

// 手机注册
UserAPI.userPhoneSignUp(appKey: appKey, phoneSignUpRequest: phoneSignUpRequest) { (response, error) in
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
 **phoneSignUpRequest** | [**PhoneSignUpRequest**](PhoneSignUpRequest.md) | 注册请求参数 | [optional] 

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userProfile**
```swift
    open class func userProfile(appKey: String, completion: @escaping (_ data: UserProfileResultApiResponse?, _ error: Error?) -> Void)
```

获取个人资料

获取当前用户的个人资料

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 

// 获取个人资料
UserAPI.userProfile(appKey: appKey) { (response, error) in
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

### Return type

[**UserProfileResultApiResponse**](UserProfileResultApiResponse.md)

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

获取指定用户资料

用于他人主页展示

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let userId = 987 // Int64 | 用户ID
let appKey = "appKey_example" // String | 

// 获取指定用户资料
UserAPI.userProfileById(userId: userId, appKey: appKey) { (response, error) in
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

# **userPut**
```swift
    open class func userPut(id: Int64, appKey: String, user: User? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

更新用户信息

根据用户ID更新用户信息

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let id = 987 // Int64 | 用户ID
let appKey = "appKey_example" // String | 
let user = User(id: 123, platform: "platform_example", unionID: "unionID_example", nickName: "nickName_example", avatar: "avatar_example", data: "data_example", userName: "userName_example", pwd: "pwd_example", email: "email_example", emailIsValid: false, phone: "phone_example", phoneIsValid: false, relationChain: "relationChain_example", interestTags: "interestTags_example", biography: "biography_example", gender: "gender_example", birthday: Date(), occupation: "occupation_example", education: "education_example", contact: "contact_example", languages: "languages_example", socialLinks: "socialLinks_example", relationshipStatus: "relationshipStatus_example", company: "company_example", industry: "industry_example", companyPosition: "companyPosition_example", privateSettings: "privateSettings_example", isLock: false, lockUntil: Date(), enableUserNameSignIn: false, enableEmailSignIn: false, enablePhoneSignIn: false, enableUnionIDSignIn: false, enableOAuth: false, enable2FAAuth: false, createDate: Date(), lastUpdate: Date()) // User | 用户信息 (optional)

// 更新用户信息
UserAPI.userPut(id: id, appKey: appKey, user: user) { (response, error) in
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
 **id** | **Int64** | 用户ID | 
 **appKey** | **String** |  | 
 **user** | [**User**](User.md) | 用户信息 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userQRCodePreSignIn**
```swift
    open class func userQRCodePreSignIn(appKey: String, qRCodePreSignInRequest: QRCodePreSignInRequest? = nil, completion: @escaping (_ data: Int64ApiResponse?, _ error: Error?) -> Void)
```

微信小程序 - 预登陆

使用微信小程序二维码进行预登陆

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let qRCodePreSignInRequest = QRCodePreSignInRequest(scopes: "scopes_example", remark: "remark_example", scheme: "scheme_example") // QRCodePreSignInRequest | 预登陆请求参数 (optional)

// 微信小程序 - 预登陆
UserAPI.userQRCodePreSignIn(appKey: appKey, qRCodePreSignInRequest: qRCodePreSignInRequest) { (response, error) in
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
 **qRCodePreSignInRequest** | [**QRCodePreSignInRequest**](QRCodePreSignInRequest.md) | 预登陆请求参数 | [optional] 

### Return type

[**Int64ApiResponse**](Int64ApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userQRCodeScan**
```swift
    open class func userQRCodeScan(appKey: String, qRCodeScanRequest: QRCodeScanRequest? = nil, completion: @escaping (_ data: UserQRCodeScanResultApiResponse?, _ error: Error?) -> Void)
```

微信小程序 - 扫码

使用微信小程序二维码进行扫码

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let qRCodeScanRequest = QRCodeScanRequest(signInKey: 123) // QRCodeScanRequest | 扫码请求参数 (optional)

// 微信小程序 - 扫码
UserAPI.userQRCodeScan(appKey: appKey, qRCodeScanRequest: qRCodeScanRequest) { (response, error) in
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
 **qRCodeScanRequest** | [**QRCodeScanRequest**](QRCodeScanRequest.md) | 扫码请求参数 | [optional] 

### Return type

[**UserQRCodeScanResultApiResponse**](UserQRCodeScanResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userQRCodeSignIn**
```swift
    open class func userQRCodeSignIn(appKey: String, qRCodeSignInRequest: QRCodeSignInRequest? = nil, completion: @escaping (_ data: TokenModelApiResponse?, _ error: Error?) -> Void)
```

微信小程序 - 网页登录

使用微信小程序二维码进行网页登录

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let qRCodeSignInRequest = QRCodeSignInRequest(signInKey: 123) // QRCodeSignInRequest | 登录请求参数 (optional)

// 微信小程序 - 网页登录
UserAPI.userQRCodeSignIn(appKey: appKey, qRCodeSignInRequest: qRCodeSignInRequest) { (response, error) in
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
 **qRCodeSignInRequest** | [**QRCodeSignInRequest**](QRCodeSignInRequest.md) | 登录请求参数 | [optional] 

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userQRCodeSignUp**
```swift
    open class func userQRCodeSignUp(appKey: String, qRCodeSignUpRequest: QRCodeSignUpRequest? = nil, completion: @escaping (_ data: TokenModelApiResponse?, _ error: Error?) -> Void)
```

微信小程序 - 注册

使用微信小程序二维码进行注册

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let qRCodeSignUpRequest = QRCodeSignUpRequest(signInKey: 123, unionID: "unionID_example", nickName: "nickName_example", avatar: "avatar_example", data: "data_example", email: "email_example", emailCode: "emailCode_example", phone: "phone_example", phoneCode: "phoneCode_example") // QRCodeSignUpRequest | 注册请求参数 (optional)

// 微信小程序 - 注册
UserAPI.userQRCodeSignUp(appKey: appKey, qRCodeSignUpRequest: qRCodeSignUpRequest) { (response, error) in
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
 **qRCodeSignUpRequest** | [**QRCodeSignUpRequest**](QRCodeSignUpRequest.md) | 注册请求参数 | [optional] 

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userResetEmail**
```swift
    open class func userResetEmail(appKey: String, appUserResetEmailRequest: AppUserResetEmailRequest? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

重置邮箱

通过邮箱验证码重置邮箱

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let appUserResetEmailRequest = AppUserResetEmailRequest(email: "email_example", code: "code_example") // AppUserResetEmailRequest | 重置邮箱的请求参数 (optional)

// 重置邮箱
UserAPI.userResetEmail(appKey: appKey, appUserResetEmailRequest: appUserResetEmailRequest) { (response, error) in
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
 **appUserResetEmailRequest** | [**AppUserResetEmailRequest**](AppUserResetEmailRequest.md) | 重置邮箱的请求参数 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userResetPhone**
```swift
    open class func userResetPhone(appKey: String, appUserResetPhoneRequest: AppUserResetPhoneRequest? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

重置手机号

通过手机号验证码重置手机号

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let appUserResetPhoneRequest = AppUserResetPhoneRequest(phone: "phone_example", code: "code_example") // AppUserResetPhoneRequest | 重置手机号的请求参数 (optional)

// 重置手机号
UserAPI.userResetPhone(appKey: appKey, appUserResetPhoneRequest: appUserResetPhoneRequest) { (response, error) in
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
 **appUserResetPhoneRequest** | [**AppUserResetPhoneRequest**](AppUserResetPhoneRequest.md) | 重置手机号的请求参数 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userResetPwd**
```swift
    open class func userResetPwd(appKey: String, appUserResetPwdRequest: AppUserResetPwdRequest? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

重置密码

通过手机号或邮箱重置密码

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let appUserResetPwdRequest = AppUserResetPwdRequest(pwd: "pwd_example", oldpwd: "oldpwd_example") // AppUserResetPwdRequest | 重置密码的请求参数 (optional)

// 重置密码
UserAPI.userResetPwd(appKey: appKey, appUserResetPwdRequest: appUserResetPwdRequest) { (response, error) in
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
 **appUserResetPwdRequest** | [**AppUserResetPwdRequest**](AppUserResetPwdRequest.md) | 重置密码的请求参数 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSendEmailCode**
```swift
    open class func userSendEmailCode(appKey: String, sendEmailCodeRequest: SendEmailCodeRequest? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

发送邮箱验证码

发送邮箱验证码用于注册或找回密码

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let sendEmailCodeRequest = SendEmailCodeRequest(email: "email_example", type: "type_example") // SendEmailCodeRequest | 发送邮箱验证码的请求参数 (optional)

// 发送邮箱验证码
UserAPI.userSendEmailCode(appKey: appKey, sendEmailCodeRequest: sendEmailCodeRequest) { (response, error) in
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
 **sendEmailCodeRequest** | [**SendEmailCodeRequest**](SendEmailCodeRequest.md) | 发送邮箱验证码的请求参数 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSendSMSCode**
```swift
    open class func userSendSMSCode(appKey: String, sendSMSCodeRequest: SendSMSCodeRequest? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

发送手机验证码

发送手机验证码用于注册或找回密码

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let sendSMSCodeRequest = SendSMSCodeRequest(phone: "phone_example", type: "type_example") // SendSMSCodeRequest | 发送手机验证码的请求参数 (optional)

// 发送手机验证码
UserAPI.userSendSMSCode(appKey: appKey, sendSMSCodeRequest: sendSMSCodeRequest) { (response, error) in
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
 **sendSMSCodeRequest** | [**SendSMSCodeRequest**](SendSMSCodeRequest.md) | 发送手机验证码的请求参数 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSignIn**
```swift
    open class func userSignIn(appKey: String, signInRequest: SignInRequest? = nil, completion: @escaping (_ data: TokenModelApiResponse?, _ error: Error?) -> Void)
```

账号密码 登录

使用账号密码进行登录

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let signInRequest = SignInRequest(userName: "userName_example", pwd: "pwd_example", twoFactorCode: "twoFactorCode_example") // SignInRequest | 登录请求参数 (optional)

// 账号密码 登录
UserAPI.userSignIn(appKey: appKey, signInRequest: signInRequest) { (response, error) in
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
 **signInRequest** | [**SignInRequest**](SignInRequest.md) | 登录请求参数 | [optional] 

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSignUp**
```swift
    open class func userSignUp(appKey: String, signUpRequest: SignUpRequest? = nil, completion: @escaping (_ data: TokenModelApiResponse?, _ error: Error?) -> Void)
```

账号密码 注册

使用账号密码进行注册

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let signUpRequest = SignUpRequest(userName: "userName_example", pwd: "pwd_example", nickName: "nickName_example", avatar: "avatar_example", data: "data_example", email: "email_example", emailCode: "emailCode_example", phone: "phone_example", phoneCode: "phoneCode_example") // SignUpRequest | 注册请求参数 (optional)

// 账号密码 注册
UserAPI.userSignUp(appKey: appKey, signUpRequest: signUpRequest) { (response, error) in
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
 **signUpRequest** | [**SignUpRequest**](SignUpRequest.md) | 注册请求参数 | [optional] 

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userTwoFactorAuth**
```swift
    open class func userTwoFactorAuth(appKey: String, completion: @escaping (_ data: SetupCodeApiResponse?, _ error: Error?) -> Void)
```

双因素验证

获取双因素验证的设置信息

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 

// 双因素验证
UserAPI.userTwoFactorAuth(appKey: appKey) { (response, error) in
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

### Return type

[**SetupCodeApiResponse**](SetupCodeApiResponse.md)

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
UserAPI.userUnfollowUser(userId: userId, appKey: appKey) { (response, error) in
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

# **userUnionIDSignIn**
```swift
    open class func userUnionIDSignIn(appKey: String, unionIDSignInRequest: UnionIDSignInRequest? = nil, completion: @escaping (_ data: TokenModelApiResponse?, _ error: Error?) -> Void)
```

UnionID登录

使用UnionID进行登录

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let unionIDSignInRequest = UnionIDSignInRequest(unionID: "unionID_example", platform: "platform_example", twoFactorCode: "twoFactorCode_example") // UnionIDSignInRequest | 登录请求参数 (optional)

// UnionID登录
UserAPI.userUnionIDSignIn(appKey: appKey, unionIDSignInRequest: unionIDSignInRequest) { (response, error) in
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
 **unionIDSignInRequest** | [**UnionIDSignInRequest**](UnionIDSignInRequest.md) | 登录请求参数 | [optional] 

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userUnionIDSignUp**
```swift
    open class func userUnionIDSignUp(appKey: String, unionIDSignUpRequest: UnionIDSignUpRequest? = nil, completion: @escaping (_ data: TokenModelApiResponse?, _ error: Error?) -> Void)
```

UnionID注册

使用UnionID进行注册

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let unionIDSignUpRequest = UnionIDSignUpRequest(userName: "userName_example", unionID: "unionID_example", platform: "platform_example", pwd: "pwd_example", nickName: "nickName_example", avatar: "avatar_example", data: "data_example", email: "email_example", emailCode: "emailCode_example", phone: "phone_example", phoneCode: "phoneCode_example") // UnionIDSignUpRequest | 注册请求参数 (optional)

// UnionID注册
UserAPI.userUnionIDSignUp(appKey: appKey, unionIDSignUpRequest: unionIDSignUpRequest) { (response, error) in
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
 **unionIDSignUpRequest** | [**UnionIDSignUpRequest**](UnionIDSignUpRequest.md) | 注册请求参数 | [optional] 

### Return type

[**TokenModelApiResponse**](TokenModelApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userUpdateProfile**
```swift
    open class func userUpdateProfile(appKey: String, updateProfileRequest: UpdateProfileRequest? = nil, completion: @escaping (_ data: BooleanApiResponse?, _ error: Error?) -> Void)
```

更新个人资料

更新当前用户的个人资料

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let updateProfileRequest = UpdateProfileRequest(avatar: "avatar_example", data: "data_example", nickName: "nickName_example", interestTags: "interestTags_example", biography: "biography_example", gender: "gender_example", birthday: Date(), occupation: "occupation_example", education: "education_example", contact: "contact_example", languages: "languages_example", socialLinks: "socialLinks_example", relationshipStatus: "relationshipStatus_example", company: "company_example", industry: "industry_example", companyPosition: "companyPosition_example", privateSettings: "privateSettings_example", enable2FAAuth: false, enableUserNameSignIn: false, enableEmailSignIn: false, enablePhoneSignIn: false, enableUnionIDSignIn: false, enableOAuth: false) // UpdateProfileRequest | 更新个人资料的请求参数 (optional)

// 更新个人资料
UserAPI.userUpdateProfile(appKey: appKey, updateProfileRequest: updateProfileRequest) { (response, error) in
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
 **updateProfileRequest** | [**UpdateProfileRequest**](UpdateProfileRequest.md) | 更新个人资料的请求参数 | [optional] 

### Return type

[**BooleanApiResponse**](BooleanApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json-patch+json, application/json, text/json, application/*+json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **users**
```swift
    open class func users(appKey: String, userName: String? = nil, email: String? = nil, phone: String? = nil, platform: String? = nil, unionId: String? = nil, role: String? = nil, skip: Int? = nil, take: Int? = nil, completion: @escaping (_ data: UserListResultApiResponse?, _ error: Error?) -> Void)
```

获取用户列表

根据条件获取用户列表

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let userName = "userName_example" // String | 用户名 (optional)
let email = "email_example" // String | 邮箱 (optional)
let phone = "phone_example" // String | 电话 (optional)
let platform = "platform_example" // String | 平台 (optional)
let unionId = "unionId_example" // String | 联合ID (optional)
let role = "role_example" // String | 角色 (optional)
let skip = 987 // Int | 跳过的记录数 (optional)
let take = 987 // Int | 获取的记录数 (optional)

// 获取用户列表
UserAPI.users(appKey: appKey, userName: userName, email: email, phone: phone, platform: platform, unionId: unionId, role: role, skip: skip, take: take) { (response, error) in
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
 **userName** | **String** | 用户名 | [optional] 
 **email** | **String** | 邮箱 | [optional] 
 **phone** | **String** | 电话 | [optional] 
 **platform** | **String** | 平台 | [optional] 
 **unionId** | **String** | 联合ID | [optional] 
 **role** | **String** | 角色 | [optional] 
 **skip** | **Int** | 跳过的记录数 | [optional] 
 **take** | **Int** | 获取的记录数 | [optional] 

### Return type

[**UserListResultApiResponse**](UserListResultApiResponse.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

