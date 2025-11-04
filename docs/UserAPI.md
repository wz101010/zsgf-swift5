# UserAPI

All URIs are relative to *https://api-dev.zashigaofa.cn*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userDeactivateHard**](UserAPI.md#userdeactivatehard) | **DELETE** /User/{appKey}/DeactivateHard | 注销账号
[**userEmailSignIn**](UserAPI.md#useremailsignin) | **POST** /User/{appKey}/EmailSignIn | 邮箱登录
[**userEmailSignUp**](UserAPI.md#useremailsignup) | **POST** /User/{appKey}/EmailSignUp | 邮箱注册
[**userPhoneSignIn**](UserAPI.md#userphonesignin) | **POST** /User/{appKey}/PhoneSignIn | 手机登录
[**userPhoneSignUp**](UserAPI.md#userphonesignup) | **POST** /User/{appKey}/PhoneSignUp | 手机注册
[**userProfile**](UserAPI.md#userprofile) | **GET** /User/{appKey}/Profile | 获取个人资料
[**userResetEmail**](UserAPI.md#userresetemail) | **PUT** /User/{appKey}/ResetEmail | 重置邮箱
[**userResetPhone**](UserAPI.md#userresetphone) | **PUT** /User/{appKey}/ResetPhone | 重置手机号
[**userResetPwd**](UserAPI.md#userresetpwd) | **POST** /User/{appKey}/ResetPwd | 重置密码
[**userSendEmailCode**](UserAPI.md#usersendemailcode) | **POST** /User/{appKey}/SendEmailCode | 发送邮箱验证码
[**userSendSMSCode**](UserAPI.md#usersendsmscode) | **POST** /User/{appKey}/SendSMSCode | 发送手机验证码
[**userSignIn**](UserAPI.md#usersignin) | **POST** /User/{appKey}/SignIn | 密码登录
[**userSignUp**](UserAPI.md#usersignup) | **POST** /User/{appKey}/SignUp | 账号注册
[**userTwoFactorAuth**](UserAPI.md#usertwofactorauth) | **GET** /User/{appKey}/TwoFactorAuth | 二次验证
[**userUnionIDSignIn**](UserAPI.md#userunionidsignin) | **POST** /User/{appKey}/UnionIDSignIn | UnionID登录
[**userUnionIDSignUp**](UserAPI.md#userunionidsignup) | **POST** /User/{appKey}/UnionIDSignUp | UnionID注册
[**userUpdateProfile**](UserAPI.md#userupdateprofile) | **PUT** /User/{appKey}/Profile | 更新个人资料


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

密码登录

使用账号密码进行登录

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let signInRequest = SignInRequest(userName: "userName_example", pwd: "pwd_example", twoFactorCode: "twoFactorCode_example") // SignInRequest | 登录请求参数 (optional)

// 密码登录
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

账号注册

使用账号密码进行注册

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 
let signUpRequest = SignUpRequest(userName: "userName_example", pwd: "pwd_example", nickName: "nickName_example", avatar: "avatar_example", data: "data_example", email: "email_example", emailCode: "emailCode_example", phone: "phone_example", phoneCode: "phoneCode_example") // SignUpRequest | 注册请求参数 (optional)

// 账号注册
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

二次验证

获取当前用户在指定应用下启用二次验证（2FA）所需的设置信息，主要包括二维码链接和手动密钥，用户可以将其录入在 Google Authenticator 等 TOTP 应用中，用于后续动态验证码验证。

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import ZSGF.Client

let appKey = "appKey_example" // String | 

// 二次验证
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

