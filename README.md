# ZSGF.Client Swift5 SDK

![swift-json](https://img.shields.io/github/v/tag/wz101010/zsgf-swift5?label=version)
![Platform](https://img.shields.io/badge/platform-iOS%20%7C%20macOS-lightgrey)
![Swift](https://img.shields.io/badge/swift-5.0%2B-orange)

## 📖 概述

ZSGF.Client Swift5 SDK 是一个功能完整的客户端库，为 iOS 和 macOS 应用提供了访问 ZSGF 平台服务的能力。支持用户认证、支付、存储、社交功能等多种服务。

## 🚀 快速开始

### 系统要求

- iOS 12.0+ / macOS 10.14+
- Xcode 12.0+
- Swift 5.0+

### 安装

#### 方式一：CocoaPods

1. 在您的 `Podfile` 中添加：
```ruby
pod 'ZSGFClient', '~> 1.0'
```

2. 安装依赖：
```bash
pod install
```

#### 方式二：Carthage

1. 在您的 `Cartfile` 中添加：
```
github "wz101010/zsgf-swift5"
```

2. 运行安装：
```bash
carthage update
```

### 基础配置

```swift
import ZSGFClient

// 初始化客户端
let client = ZSGFClient(appKey: "your_app_key")
```

## 📚 主要功能模块

### 🔐 用户认证 (UserAPI)

支持多种登录注册方式：

#### 邮箱注册/登录
```swift
// 邮箱注册
let signUpRequest = EmailSignUpRequest(email: "user@example.com", password: "password")
UserAPI.userEmailSignUp(appKey: appKey, emailSignUpRequest: signUpRequest) { result in
    // 处理结果
}

// 邮箱登录
let signInRequest = EmailSignInRequest(email: "user@example.com", password: "password")
UserAPI.userEmailSignIn(appKey: appKey, emailSignInRequest: signInRequest) { result in
    // 处理结果
}
```

#### 手机号注册/登录
```swift
// 发送验证码
let codeRequest = SendSMSCodeRequest(phone: "13800138000")
UserAPI.userSendSMSCode(appKey: appKey, sendSMSCodeRequest: codeRequest) { result in
    // 处理结果
}

// 手机号注册
let signUpRequest = PhoneSignUpRequest(phone: "13800138000", code: "123456")
UserAPI.userPhoneSignUp(appKey: appKey, phoneSignUpRequest: signUpRequest) { result in
    // 处理结果
}
```

### 💰 支付功能

#### 支付宝支付 (AlipayAPI)
```swift
// 创建当面付订单
let orderRequest = AlipayCreateOrderRequest(subject: "商品名称", totalAmount: "100.00")
AlipayAPI.alipayCreateOrder(appKey: appKey, alipayCreateOrderRequest: orderRequest) { result in
    // 处理支付结果
}
```

#### 微信支付 (WechatAPI)
```swift
// 生成小程序码
WechatAPI.wechatWXACodeGet(appKey: appKey, path: "pages/index") { result in
    // 处理结果
}
```

### 📁 文件管理 (FileAPI)

```swift
// 上传文件
FileAPI.fileUpload(appKey: appKey, file: fileData, fileName: "image.jpg") { result in
    // 处理上传结果
}

// 获取文件列表
FileAPI.files(appKey: appKey, path: "/") { result in
    // 处理文件列表
}
```

### 🗄️ 数据存储 (StorageAPI)

```swift
// 添加数据
let userData = ["name": "张三", "age": 18]
StorageAPI.storagePost(appKey: appKey, table: "users", data: userData) { result in
    // 处理结果
}

// 查询数据
StorageAPI.storageList(appKey: appKey, table: "users", limit: 10) { result in
    // 处理查询结果
}
```

### 👥 社交功能 (UserFriendsAPI)

```swift
// 关注用户
UserFriendsAPI.userFollowUser(appKey: appKey, userId: "user123") { result in
    // 处理结果
}

// 获取关注列表
UserFriendsAPI.userFollowing(appKey: appKey) { result in
    // 处理关注列表
}
```

## 🔧 高级功能

### OAuth 认证 (OAuthAPI)

```swift
// 获取授权码
let grantRequest = GrantRequest(clientId: "client_id", scope: "read")
OAuthAPI.oAuthGrantCode(appKey: appKey, grantRequest: grantRequest) { result in
    // 处理授权码
}
```

### 虚拟货币系统 (UserCurrencyAPI)

```swift
// 充值虚拟币
let rechargeRequest = RechargePointRequest(amount: 100, currency: "gold")
UserCurrencyAPI.userCurrencyRecharge(appKey: appKey, rechargePointRequest: rechargeRequest) { result in
    // 处理充值结果
}
```

### 位置服务 (UserLocationAPI)

```swift
// 添加位置信息
let location = GeoLocationModel(latitude: 39.9042, longitude: 116.4074, address: "北京市")
UserLocationAPI.userLocationPost(appKey: appKey, geoLocationModel: location) { result in
    // 处理结果
}
```

## 📋 API 分类速查

<details>
<summary><strong>🔐 用户认证相关</strong></summary>

| 功能 | API方法 | 说明 |
|------|---------|------|
| 密码登录 | `userSignIn` | 用户名密码登录 |
| 邮箱登录 | `userEmailSignIn` | 邮箱密码登录 |
| 手机登录 | `userPhoneSignIn` | 手机号验证码登录 |
| 账号注册 | `userSignUp` | 基础注册功能 |
| 邮箱注册 | `userEmailSignUp` | 邮箱注册 |
| 手机注册 | `userPhoneSignUp` | 手机号注册 |
| UnionID登录 | `userUnionIDSignIn` | 微信UnionID登录 |
| 重置密码 | `userResetPwd` | 忘记密码重置 |
| 个人资料 | `userProfile` | 获取用户信息 |
| 更新资料 | `userUpdateProfile` | 更新个人信息 |

</details>

<details>
<summary><strong>💰 支付相关</strong></summary>

| 功能 | API方法 | 说明 |
|------|---------|------|
| 支付宝当面付 | `alipayCreateOrder` | 创建线下支付订单 |
| 支付宝网页支付 | `alipayCreateOrderPagePay` | PC端支付 |
| 支付宝手机支付 | `alipayCreateOrderWapPay` | 移动端H5支付 |
| 订单查询 | `alipayOrderDetail` | 查询支付订单状态 |
| 订单退款 | `alipayOrderRefund` | 发起退款申请 |

</details>

<details>
<summary><strong>📁 文件管理</strong></summary>

| 功能 | API方法 | 说明 |
|------|---------|------|
| 文件上传 | `fileUpload` | 上传文件到云端 |
| 文件列表 | `files` | 获取文件目录 |
| 创建文件夹 | `fileCreateFolder` | 新建目录 |
| 文件重命名 | `fileRename` | 重命名文件/文件夹 |
| 删除文件 | `fileDelete` | 删除文件/文件夹 |

</details>

<details>
<summary><strong>🗄️ 数据存储</strong></summary>

| 功能 | API方法 | 说明 |
|------|---------|------|
| 添加数据 | `storagePost` | 新增数据记录 |
| 查询数据 | `storageList` | 条件查询数据 |
| 数据详情 | `storageDetail` | 获取单条数据 |
| 更新数据 | `storagePut` | 修改数据记录 |
| 删除数据 | `storageDelete` | 删除数据记录 |
| 聚合查询 | `storageAggregate` | 统计分析查询 |

</details>

<details>
<summary><strong>👥 社交功能</strong></summary>

| 功能 | API方法 | 说明 |
|------|---------|------|
| 关注用户 | `userFollowUser` | 添加关注 |
| 取消关注 | `userUnfollowUser` | 取消关注 |
| 关注列表 | `userFollowing` | 我的关注 |
| 粉丝列表 | `userFollowers` | 我的粉丝 |
| 附近的人 | `userFriendsNearBy` | 推荐附近用户 |
| 共同关注 | `userMutualFollowings` | 共同关注的人 |
| 兴趣推荐 | `userCommonInterests` | 相似兴趣用户 |

</details>

## 🛠️ 错误处理

```swift
UserAPI.userProfile(appKey: appKey) { result in
    switch result {
    case .success(let response):
        if let profile = response.data {
            print("用户信息: \(profile)")
        }
    case .failure(let error):
        switch error {
        case .networkError(let networkError):
            print("网络错误: \(networkError)")
        case .apiError(let apiError):
            print("API错误: \(apiError)")
        default:
            print("未知错误: \(error)")
        }
    }
}
```

## 📝 常见问题

### Q: 如何获取 AppKey？
A: 请联系 ZSGF 平台管理员获取您的应用 AppKey。

### Q: 支持哪些支付方式？
A: 目前支持支付宝支付（当面付、网页支付、手机支付）和微信支付。

### Q: 如何处理用户登录状态？
A: SDK 会自动管理用户的访问令牌，您只需要在登录成功后保存用户信息即可。

### Q: 文件上传有大小限制吗？
A: 单个文件上传限制为 10MB，如需上传更大文件，请联系技术支持。

## 完整 API 参考

### AccessTokenAPI - 访问令牌管理
- `accessTokenDelete` - 删除令牌
- `accessTokenPost` - 创建令牌
- `accessTokenPut` - 更新令牌
- `accessTokens` - 令牌列表

### AlipayAPI - 支付宝支付
- `alipayCreateOrder` - 创建当面付订单
- `alipayCreateOrderPagePay` - 创建PC支付订单
- `alipayCreateOrderWapPay` - 创建WAP支付订单
- `alipayOrderDetail` - 获取订单详情
- `alipayOrderRefund` - 发起订单退款
- `alipayReturnPageNotify` - 支付成功回调通知

### AppAPI - 应用管理
- `appInfo` - 应用详情

### DingTalkAPI - 钉钉集成
- `dingTalkUserInfo` - 获取用户资料

### ExternalAccountAPI - 外部账号
- `externalAccountSignIn` - 外部账号登录
- `userExternalAccountBind` - 绑定外部账号
- `userOAuthAccounts` - 外部账号列表
- `userOAuthAccountsPutBind` - 更新绑定账号
- `userOAuthAccountsUnBind` - 删除绑定账号

### FileAPI - 文件管理
- `fileCreateFolder` - 创建文件夹
- `fileDelete` - 删除文件/文件夹
- `fileRename` - 重命名文件/文件夹
- `fileUpload` - 上传文件
- `files` - 获取文件列表

### OAuthAPI - OAuth认证
- `oAuthAuthorize` - 获取访问令牌
- `oAuthConsents` - 获取授权记录
- `oAuthDeleteConsent` - 删除授权记录
- `oAuthGrantCode` - 获取授权码
- `oAuthProfile` - 获取用户资料

### OrderAPI - 订单管理
- `order` - 获取订单详情
- `orderCreate` - 创建订单
- `orders` - 获取订单列表

### StorageAPI - 数据存储
- `storageAggregate` - 聚合查询
- `storageDelete` - 删除数据
- `storageDetail` - 数据详情
- `storageList` - 查询数据
- `storagePost` - 添加数据
- `storagePut` - 更新数据

### UserAPI - 用户管理
- `userDeactivateHard` - 注销账号
- `userEmailSignIn` - 邮箱登录
- `userEmailSignUp` - 邮箱注册
- `userPhoneSignIn` - 手机登录
- `userPhoneSignUp` - 手机注册
- `userProfile` - 获取个人资料
- `userResetEmail` - 重置邮箱
- `userResetPhone` - 重置手机号
- `userResetPwd` - 重置密码
- `userSendEmailCode` - 发送邮箱验证码
- `userSendSMSCode` - 发送手机验证码
- `userSignIn` - 密码登录
- `userSignUp` - 账号注册
- `userTwoFactorAuth` - 二次验证
- `userUnionIDSignIn` - UnionID登录
- `userUnionIDSignUp` - UnionID注册
- `userUpdateProfile` - 更新个人资料

### UserCurrencyAPI - 虚拟货币
- `userCurrencies` - 获取用户资产
- `userCurrencyConsume` - 消费虚拟币
- `userCurrencyExchange` - 兑换虚拟币
- `userCurrencyRecharge` - 充值虚拟币
- `userCurrencyTransactions` - 虚拟币交易记录

### UserFriendsAPI - 社交功能
- `userCommonInterests` - 推荐相似兴趣用户
- `userFollowUser` - 添加关注
- `userFollowerPut` - 刷新粉丝数据
- `userFollowers` - 获取粉丝列表
- `userFollowing` - 获取关注列表/判断是否关注
- `userFriendsNearBy` - 推荐附近用户
- `userMutualFollowers` - 推荐共同粉丝用户
- `userMutualFollowings` - 推荐共同关注用户
- `userProfileById` - 获取用户资料
- `userUnfollowUser` - 取消关注

### UserLocationAPI - 位置服务
- `userLocation` - 获取位置详情
- `userLocationDelete` - 删除位置
- `userLocationPost` - 添加位置
- `userLocationPut` - 更新位置
- `userLocations` - 获取位置列表

### WechatAPI - 微信集成
- `confirmQRCodeLogin` - 确认二维码登录请求
- `confirmQRCodeRegistration` - 确认二维码注册请求
- `initiateQRAuthSession` - 初始化二维码认证会话
- `scanQRCodeForAuth` - 验证二维码扫描结果
- `wechatDecrypt` - 解密小程序用户数据
- `wechatGenerateScheme` - 生成小程序Scheme码
- `wechatJSCode2Session` - 校验小程序登录状态
- `wechatJSConfig` - 配置公众号JS SDK
- `wechatMsgSecCheck` - 小程序内容安全检测
- `wechatSubscribeMSG` - 发送公众号一次性订阅消息
- `wechatSubscribeSend` - 发送小程序订阅消息
- `wechatUrlLinkGenerate` - 生成小程序URL跳转链接
- `wechatUserInfo` - 获取公众号H5 UnionID
- `wechatWXACodeGet` - 获取小程序码（普通）
- `wechatWXACodeGetUnlimited` - 获取小程序码（无限制）

## 📁 数据模型

所有数据模型的详细文档请参考 [docs](docs/) 目录：

- [AccessTokenListResult](docs/AccessTokenListResult.md) - 访问令牌列表结果
- [AlipayTradeQueryResponse](docs/AlipayTradeQueryResponse.md) - 支付宝交易查询响应
- [AppInfoResult](docs/AppInfoResult.md) - 应用信息结果
- [AuthorizeResult](docs/AuthorizeResult.md) - 授权结果
- [CreateOrderResult](docs/CreateOrderResult.md) - 创建订单结果
- [FileListResult](docs/FileListResult.md) - 文件列表结果
- [GetUserProfileResult](docs/GetUserProfileResult.md) - 用户资料结果
- [Order](docs/Order.md) - 订单信息
- [StorageListResult](docs/StorageListResult.md) - 存储查询结果
- [UserCurrency](docs/UserCurrency.md) - 用户货币
- 更多模型请查看 docs 目录...

## 🔗 相关链接

- [完整 API 文档](./docs/)
- [问题反馈](https://github.com/wz101010/zsgf-swift5/issues)