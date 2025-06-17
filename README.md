# ZSGF.Client 的 Swift5 API 客户端

![swift-json](https://img.shields.io/github/v/tag/wz101010/zsgf-swift5?label=version)

## 安装

### Carthage

运行 `carthage update`

### CocoaPods

运行 `pod install`

## API 端点文档

类 | 方法 | HTTP 请求 | 描述
------------ | ------------- | ------------- | -------------
*AccessTokenAPI* | [**accessTokenDelete**](docs/AccessTokenAPI.md#accesstokendelete) | **DELETE** /AccessToken/{appKey}/{id} | 删除令牌
*AccessTokenAPI* | [**accessTokenPost**](docs/AccessTokenAPI.md#accesstokenpost) | **POST** /AccessToken/{appKey} | 创建令牌
*AccessTokenAPI* | [**accessTokenPut**](docs/AccessTokenAPI.md#accesstokenput) | **PUT** /AccessToken/{appKey}/{id} | 更新令牌
*AccessTokenAPI* | [**accessTokens**](docs/AccessTokenAPI.md#accesstokens) | **GET** /AccessToken/{appKey} | 令牌列表
*AlipayAPI* | [**alipayCreateOrder**](docs/AlipayAPI.md#alipaycreateorder) | **POST** /Alipay/{appKey}/CreateOrder | 创建订单 - 当面付
*AlipayAPI* | [**alipayCreateOrderPagePay**](docs/AlipayAPI.md#alipaycreateorderpagepay) | **POST** /Alipay/{appKey}/CreateOrderPagePay | 创建订单 - PC支付
*AlipayAPI* | [**alipayCreateOrderWapPay**](docs/AlipayAPI.md#alipaycreateorderwappay) | **POST** /Alipay/{appKey}/CreateOrderWapPay | 创建订单 - WAP支付
*AlipayAPI* | [**alipayOrderDetail**](docs/AlipayAPI.md#alipayorderdetail) | **GET** /Alipay/{appKey}/OrderDetail | 订单详情
*AlipayAPI* | [**alipayOrderRefund**](docs/AlipayAPI.md#alipayorderrefund) | **POST** /Alipay/{appKey}/OrderRefund | 订单退款
*AlipayAPI* | [**alipayReturnPageNotify**](docs/AlipayAPI.md#alipayreturnpagenotify) | **POST** /Alipay/{appKey}/ReturnPageNotify | 支付成功同步通知
*AppAPI* | [**app**](docs/AppAPI.md#app) | **GET** /App/{appKey} | 应用详情
*AppAPI* | [**app2FA**](docs/AppAPI.md#app2fa) | **GET** /App/{appKey}/2FA | 双因素验证 获取
*AppAPI* | [**app2FACheck**](docs/AppAPI.md#app2facheck) | **GET** /App/{appKey}/2FACheck | 双因素验证 验证
*AppAPI* | [**appCheckVersion**](docs/AppAPI.md#appcheckversion) | **GET** /App/{appKey}/CheckVersion | 更新应用数据库
*AppAPI* | [**appDelete**](docs/AppAPI.md#appdelete) | **DELETE** /App/{appKey} | 删除应用
*AppAPI* | [**appInfo**](docs/AppAPI.md#appinfo) | **GET** /App/{appKey}/Info | 应用详情
*AppAPI* | [**appPost**](docs/AppAPI.md#apppost) | **POST** /App | 创建应用
*AppAPI* | [**appPut**](docs/AppAPI.md#appput) | **PUT** /App/{appKey} | 更新应用
*AppAPI* | [**appTransfer**](docs/AppAPI.md#apptransfer) | **GET** /App/{appKey}/Transfer | 转移应用
*AppAPI* | [**apps**](docs/AppAPI.md#apps) | **GET** /App | 应用列表
*AppSettingAPI* | [**appServiceSettingGroup**](docs/AppSettingAPI.md#appservicesettinggroup) | **GET** /AppSetting/{appKey}/Groups/{id} | 获取服务分组详情
*AppSettingAPI* | [**appServiceSettingGroupDelete**](docs/AppSettingAPI.md#appservicesettinggroupdelete) | **DELETE** /AppSetting/{appKey}/Groups/{id} | 删除服务分组
*AppSettingAPI* | [**appServiceSettingGroupPost**](docs/AppSettingAPI.md#appservicesettinggrouppost) | **POST** /AppSetting/{appKey}/Groups | 添加服务分组
*AppSettingAPI* | [**appServiceSettingGroupPut**](docs/AppSettingAPI.md#appservicesettinggroupput) | **PUT** /AppSetting/{appKey}/Groups/{id} | 更新服务分组
*AppSettingAPI* | [**appServiceSettingGroups**](docs/AppSettingAPI.md#appservicesettinggroups) | **GET** /AppSetting/{appKey}/Groups | 获取服务分组列表
*AppSettingAPI* | [**appServiceSettingItem**](docs/AppSettingAPI.md#appservicesettingitem) | **GET** /AppSetting/{appKey}/Items/{id} | 服务配置项详情
*AppSettingAPI* | [**appServiceSettingItemDelete**](docs/AppSettingAPI.md#appservicesettingitemdelete) | **DELETE** /AppSetting/{appKey}/Items/{id} | 删除服务配置项
*AppSettingAPI* | [**appServiceSettingItemPost**](docs/AppSettingAPI.md#appservicesettingitempost) | **POST** /AppSetting/{appKey}/Items | 添加服务配置项
*AppSettingAPI* | [**appServiceSettingItemPut**](docs/AppSettingAPI.md#appservicesettingitemput) | **PUT** /AppSetting/{appKey}/Items/{id} | 更新服务配置项
*AppSettingAPI* | [**appServiceSettingItems**](docs/AppSettingAPI.md#appservicesettingitems) | **GET** /AppSetting/{appKey}/Items | 服务配置项列表
*AppSettingAPI* | [**appServiceSettingProvider**](docs/AppSettingAPI.md#appservicesettingprovider) | **GET** /AppSetting/{appKey}/Providers/{id} | 获取服务商详情
*AppSettingAPI* | [**appServiceSettingProviderDelete**](docs/AppSettingAPI.md#appservicesettingproviderdelete) | **DELETE** /AppSetting/{appKey}/Providers/{id} | 删除服务商
*AppSettingAPI* | [**appServiceSettingProviderPost**](docs/AppSettingAPI.md#appservicesettingproviderpost) | **POST** /AppSetting/{appKey}/Providers | 添加服务商
*AppSettingAPI* | [**appServiceSettingProviderPut**](docs/AppSettingAPI.md#appservicesettingproviderput) | **PUT** /AppSetting/{appKey}/Providers/{id} | 更新服务商
*AppSettingAPI* | [**appServiceSettingProviders**](docs/AppSettingAPI.md#appservicesettingproviders) | **GET** /AppSetting/{appKey}/Providers | 获取服务商列表
*AppSettingAPI* | [**appSetting**](docs/AppSettingAPI.md#appsetting) | **GET** /AppSetting/{appKey}/{id} | 配置详情
*AppSettingAPI* | [**appSettingDelete**](docs/AppSettingAPI.md#appsettingdelete) | **DELETE** /AppSetting/{appKey}/{id} | 删除配置
*AppSettingAPI* | [**appSettingPost**](docs/AppSettingAPI.md#appsettingpost) | **POST** /AppSetting/{appKey} | 增加配置
*AppSettingAPI* | [**appSettingPut**](docs/AppSettingAPI.md#appsettingput) | **PUT** /AppSetting/{appKey}/{id} | 更新配置
*AppSettingAPI* | [**appSettings**](docs/AppSettingAPI.md#appsettings) | **GET** /AppSetting/{appKey} | 配置列表
*AuthorizePolicyAPI* | [**authorizePolicies**](docs/AuthorizePolicyAPI.md#authorizepolicies) | **GET** /AuthorizePolicy/{appKey} | 获取鉴权策略列表
*AuthorizePolicyAPI* | [**authorizePolicy**](docs/AuthorizePolicyAPI.md#authorizepolicy) | **GET** /AuthorizePolicy/{appKey}/{id} | 获取鉴权策略详情
*AuthorizePolicyAPI* | [**authorizePolicyDelete**](docs/AuthorizePolicyAPI.md#authorizepolicydelete) | **DELETE** /AuthorizePolicy/{appKey}/{id} | 删除鉴权策略
*AuthorizePolicyAPI* | [**authorizePolicyPost**](docs/AuthorizePolicyAPI.md#authorizepolicypost) | **POST** /AuthorizePolicy/{appKey} | 添加鉴权策略
*AuthorizePolicyAPI* | [**authorizePolicyPut**](docs/AuthorizePolicyAPI.md#authorizepolicyput) | **PUT** /AuthorizePolicy/{appKey}/{id} | 更新鉴权策略
*CurrencyAPI* | [**currencies**](docs/CurrencyAPI.md#currencies) | **GET** /Currency/{appKey} | 获取货币列表
*CurrencyAPI* | [**currency**](docs/CurrencyAPI.md#currency) | **GET** /Currency/{appKey}/{id} | 获取货币详情
*CurrencyAPI* | [**currencyDelete**](docs/CurrencyAPI.md#currencydelete) | **DELETE** /Currency/{appKey}/{id} | 删除货币
*CurrencyAPI* | [**currencyExchangeRateDelete**](docs/CurrencyAPI.md#currencyexchangeratedelete) | **DELETE** /Currency/{appKey}/ExchangeRates/{id} | 删除汇率
*CurrencyAPI* | [**currencyExchangeRatePut**](docs/CurrencyAPI.md#currencyexchangerateput) | **PUT** /Currency/{appKey}/ExchangeRates/{code} | 更新汇率
*CurrencyAPI* | [**currencyExchangeRates**](docs/CurrencyAPI.md#currencyexchangerates) | **GET** /Currency/{appKey}/ExchangeRates/{code} | 获取汇率列表
*CurrencyAPI* | [**currencyPost**](docs/CurrencyAPI.md#currencypost) | **POST** /Currency/{appKey} | 创建新货币
*CurrencyAPI* | [**currencyPut**](docs/CurrencyAPI.md#currencyput) | **PUT** /Currency/{appKey}/{id} | 更新货币信息
*CurrencyAPI* | [**currencyTransactions**](docs/CurrencyAPI.md#currencytransactions) | **GET** /Currency/{appKey}/Transactions | 获取货币交易记录
*DingTalkAPI* | [**dingTalkUserInfo**](docs/DingTalkAPI.md#dingtalkuserinfo) | **GET** /DingTalk/{appKey}/UserInfo | 获取用户资料
*FileAPI* | [**fileCreateFolder**](docs/FileAPI.md#filecreatefolder) | **POST** /File/{appKey}/CreateFolder | 创建文件夹
*FileAPI* | [**fileDelete**](docs/FileAPI.md#filedelete) | **DELETE** /File/{appKey} | 删除文件或文件夹
*FileAPI* | [**fileRename**](docs/FileAPI.md#filerename) | **POST** /File/{appKey}/Rename | 重命名文件或文件夹
*FileAPI* | [**fileUpload**](docs/FileAPI.md#fileupload) | **POST** /File/{appKey}/Upload | 上传文件
*FileAPI* | [**files**](docs/FileAPI.md#files) | **GET** /File/{appKey} | 获取文件列表
*OAuthAPI* | [**oAuthAuthorize**](docs/OAuthAPI.md#oauthauthorize) | **POST** /OAuth/{appKey}/Authorize | 获取access_token
*OAuthAPI* | [**oAuthConsents**](docs/OAuthAPI.md#oauthconsents) | **GET** /OAuth/{appKey}/Consents | 授权记录
*OAuthAPI* | [**oAuthDeleteConsent**](docs/OAuthAPI.md#oauthdeleteconsent) | **DELETE** /OAuth/{appKey}/Consents/{id} | 删除授权记录
*OAuthAPI* | [**oAuthGrantCode**](docs/OAuthAPI.md#oauthgrantcode) | **POST** /OAuth/{appKey}/GrantCode | 申请授权码
*OAuthAPI* | [**oAuthProfile**](docs/OAuthAPI.md#oauthprofile) | **GET** /OAuth/{appKey}/Profile | 获取个人资料
*OrderAPI* | [**order**](docs/OrderAPI.md#order) | **GET** /Order/{appKey}/{id} | 获取订单详情
*OrderAPI* | [**orderCreate**](docs/OrderAPI.md#ordercreate) | **POST** /Order/{appKey}/Create | 创建订单
*OrderAPI* | [**orders**](docs/OrderAPI.md#orders) | **GET** /Order/{appKey} | 获取订单列表
*ProjectAPI* | [**project**](docs/ProjectAPI.md#project) | **GET** /Project/{id} | 项目详情
*ProjectAPI* | [**projectDelete**](docs/ProjectAPI.md#projectdelete) | **DELETE** /Project/{id} | 删除项目
*ProjectAPI* | [**projectPost**](docs/ProjectAPI.md#projectpost) | **POST** /Project | 创建项目
*ProjectAPI* | [**projectPut**](docs/ProjectAPI.md#projectput) | **PUT** /Project/{id} | 更新项目
*ProjectAPI* | [**projects**](docs/ProjectAPI.md#projects) | **GET** /Project | 项目列表
*ServiceSettingAPI* | [**serviceSetting**](docs/ServiceSettingAPI.md#servicesetting) | **GET** /ServiceSetting/{id} | 获取配置详情
*ServiceSettingAPI* | [**serviceSettingDelete**](docs/ServiceSettingAPI.md#servicesettingdelete) | **DELETE** /ServiceSetting/{id} | 删除配置
*ServiceSettingAPI* | [**serviceSettingGroup**](docs/ServiceSettingAPI.md#servicesettinggroup) | **GET** /ServiceSetting/Groups/{id} | 获取服务分组详情
*ServiceSettingAPI* | [**serviceSettingGroupDelete**](docs/ServiceSettingAPI.md#servicesettinggroupdelete) | **DELETE** /ServiceSetting/Groups/{id} | 删除服务分组
*ServiceSettingAPI* | [**serviceSettingGroupPost**](docs/ServiceSettingAPI.md#servicesettinggrouppost) | **POST** /ServiceSetting/Groups | 添加服务分组
*ServiceSettingAPI* | [**serviceSettingGroupPut**](docs/ServiceSettingAPI.md#servicesettinggroupput) | **PUT** /ServiceSetting/Groups/{id} | 更新服务分组
*ServiceSettingAPI* | [**serviceSettingGroups**](docs/ServiceSettingAPI.md#servicesettinggroups) | **GET** /ServiceSetting/Groups | 获取服务分组列表
*ServiceSettingAPI* | [**serviceSettingItem**](docs/ServiceSettingAPI.md#servicesettingitem) | **GET** /ServiceSetting/Items/{id} | 服务配置详情
*ServiceSettingAPI* | [**serviceSettingItemDelete**](docs/ServiceSettingAPI.md#servicesettingitemdelete) | **DELETE** /ServiceSetting/Items/{id} | 删除服务配置
*ServiceSettingAPI* | [**serviceSettingItemPost**](docs/ServiceSettingAPI.md#servicesettingitempost) | **POST** /ServiceSetting/Items | 添加服务配置
*ServiceSettingAPI* | [**serviceSettingItemPut**](docs/ServiceSettingAPI.md#servicesettingitemput) | **PUT** /ServiceSetting/Items/{id} | 更新服务配置
*ServiceSettingAPI* | [**serviceSettingItems**](docs/ServiceSettingAPI.md#servicesettingitems) | **GET** /ServiceSetting/Items | 服务配置列表
*ServiceSettingAPI* | [**serviceSettingPost**](docs/ServiceSettingAPI.md#servicesettingpost) | **POST** /ServiceSetting | 增加配置
*ServiceSettingAPI* | [**serviceSettingProvider**](docs/ServiceSettingAPI.md#servicesettingprovider) | **GET** /ServiceSetting/Providers/{id} | 获取服务商详情
*ServiceSettingAPI* | [**serviceSettingProviderDelete**](docs/ServiceSettingAPI.md#servicesettingproviderdelete) | **DELETE** /ServiceSetting/Providers/{id} | 删除服务商
*ServiceSettingAPI* | [**serviceSettingProviderPost**](docs/ServiceSettingAPI.md#servicesettingproviderpost) | **POST** /ServiceSetting/Providers | 添加服务商
*ServiceSettingAPI* | [**serviceSettingProviderPut**](docs/ServiceSettingAPI.md#servicesettingproviderput) | **PUT** /ServiceSetting/Providers/{id} | 更新服务商
*ServiceSettingAPI* | [**serviceSettingProviders**](docs/ServiceSettingAPI.md#servicesettingproviders) | **GET** /ServiceSetting/Providers | 获取服务商列表
*ServiceSettingAPI* | [**serviceSettingPut**](docs/ServiceSettingAPI.md#servicesettingput) | **PUT** /ServiceSetting/{id} | 更新配置
*ServiceSettingAPI* | [**serviceSettings**](docs/ServiceSettingAPI.md#servicesettings) | **GET** /ServiceSetting | 获取配置列表
*StorageAPI* | [**storageAggregate**](docs/StorageAPI.md#storageaggregate) | **GET** /Storage/{appKey}/{table}/Aggregate | 聚合查询
*StorageAPI* | [**storageClear**](docs/StorageAPI.md#storageclear) | **DELETE** /Storage/{appKey}/{table}/Clear | 清空表数据
*StorageAPI* | [**storageDelete**](docs/StorageAPI.md#storagedelete) | **DELETE** /Storage/{appKey}/{table}/{id} | 删除数据
*StorageAPI* | [**storageDeleteIndex**](docs/StorageAPI.md#storagedeleteindex) | **DELETE** /Storage/{appKey}/{table}/indexes | 删除索引
*StorageAPI* | [**storageDetail**](docs/StorageAPI.md#storagedetail) | **GET** /Storage/{appKey}/{table}/{id} | 数据详情
*StorageAPI* | [**storageExecuteFunction**](docs/StorageAPI.md#storageexecutefunction) | **GET** /Storage/{appKey}/ExecuteFunction | 执行函数
*StorageAPI* | [**storageExport**](docs/StorageAPI.md#storageexport) | **GET** /Storage/{appKey}/{table}/Export | 导出数据
*StorageAPI* | [**storageImport**](docs/StorageAPI.md#storageimport) | **POST** /Storage/{appKey}/{table}/Import | 导入数据
*StorageAPI* | [**storageIndexes**](docs/StorageAPI.md#storageindexes) | **GET** /Storage/{appKey}/{table}/Indexes | 获取索引
*StorageAPI* | [**storageList**](docs/StorageAPI.md#storagelist) | **GET** /Storage/{appKey}/{table} | 查询数据
*StorageAPI* | [**storagePost**](docs/StorageAPI.md#storagepost) | **POST** /Storage/{appKey}/{table} | 添加数据
*StorageAPI* | [**storagePostIndex**](docs/StorageAPI.md#storagepostindex) | **POST** /Storage/{appKey}/{table}/indexes | 添加索引
*StorageAPI* | [**storagePut**](docs/StorageAPI.md#storageput) | **PUT** /Storage/{appKey}/{table}/{id} | 更新数据
*StorageAPI* | [**storageRemove**](docs/StorageAPI.md#storageremove) | **DELETE** /Storage/{appKey}/{table}/Remove | 删除表
*StorageAPI* | [**storageStats**](docs/StorageAPI.md#storagestats) | **GET** /Storage/{appKey}/{table}/Stats | 数据表统计
*StorageAPI* | [**storageTables**](docs/StorageAPI.md#storagetables) | **GET** /Storage/{appKey}/Tables | 获取数据表
*SystemFileAPI* | [**systemFileCreateFolder**](docs/SystemFileAPI.md#systemfilecreatefolder) | **POST** /SystemFile/CreateFolder | 创建文件夹
*SystemFileAPI* | [**systemFileDelete**](docs/SystemFileAPI.md#systemfiledelete) | **DELETE** /SystemFile | 删除文件
*SystemFileAPI* | [**systemFileRename**](docs/SystemFileAPI.md#systemfilerename) | **POST** /SystemFile/Rename | 重命名文件
*SystemFileAPI* | [**systemFileUpload**](docs/SystemFileAPI.md#systemfileupload) | **POST** /SystemFile | 上传文件
*SystemFileAPI* | [**systemFiles**](docs/SystemFileAPI.md#systemfiles) | **GET** /SystemFile | 获取文件列表
*TeamAPI* | [**teamDelete**](docs/TeamAPI.md#teamdelete) | **DELETE** /Team/{id} | 删除团队
*TeamAPI* | [**teamPost**](docs/TeamAPI.md#teampost) | **POST** /Team | 创建团队
*TeamAPI* | [**teamPut**](docs/TeamAPI.md#teamput) | **PUT** /Team/{id} | 更新团队信息
*TeamAPI* | [**teams**](docs/TeamAPI.md#teams) | **GET** /Team | 获取团队列表
*UserAPI* | [**user**](docs/UserAPI.md#user) | **GET** /User/{appKey}/{id} | 获取用户详情
*UserAPI* | [**userClear**](docs/UserAPI.md#userclear) | **DELETE** /User/{appKey}/Clear | 清空用户数据
*UserAPI* | [**userCommonInterests**](docs/UserAPI.md#usercommoninterests) | **GET** /User/{appKey}/Friends/CommonInterests | 有共同爱好的用户推荐
*UserAPI* | [**userDelete**](docs/UserAPI.md#userdelete) | **DELETE** /User/{appKey}/{id} | 删除用户
*UserAPI* | [**userEmailSignIn**](docs/UserAPI.md#useremailsignin) | **POST** /User/{appKey}/EmailSignIn | 邮箱登录
*UserAPI* | [**userEmailSignUp**](docs/UserAPI.md#useremailsignup) | **POST** /User/{appKey}/EmailSignUp | 邮箱注册
*UserAPI* | [**userExport**](docs/UserAPI.md#userexport) | **GET** /User/{appKey}/Export | 导出用户数据
*UserAPI* | [**userFollowUser**](docs/UserAPI.md#userfollowuser) | **POST** /User/{appKey}/Follower/{userId} | 关注用户
*UserAPI* | [**userFollowerPut**](docs/UserAPI.md#userfollowerput) | **PUT** /User/{appKey}/Follower/{id} | 更新粉丝
*UserAPI* | [**userFollowers**](docs/UserAPI.md#userfollowers) | **GET** /User/{appKey}/Followers | 获取我的粉丝列表
*UserAPI* | [**userFollowing**](docs/UserAPI.md#userfollowing) | **GET** /User/{appKey}/Following | 获取我的关注列表
*UserAPI* | [**userFriendsNearBy**](docs/UserAPI.md#userfriendsnearby) | **GET** /User/{appKey}/Friends/NearBy | 附近的用户推荐
*UserAPI* | [**userImport**](docs/UserAPI.md#userimport) | **POST** /User/{appKey}/Import | 导入用户数据
*UserAPI* | [**userLocation**](docs/UserAPI.md#userlocation) | **GET** /User/{appKey}/Location/{id} | 获取位置详情
*UserAPI* | [**userLocationDelete**](docs/UserAPI.md#userlocationdelete) | **DELETE** /User/{appKey}/Location/{id} | 删除位置
*UserAPI* | [**userLocationPost**](docs/UserAPI.md#userlocationpost) | **POST** /User/{appKey}/Location | 添加位置
*UserAPI* | [**userLocationPut**](docs/UserAPI.md#userlocationput) | **PUT** /User/{appKey}/Location/{id} | 更新位置
*UserAPI* | [**userLocations**](docs/UserAPI.md#userlocations) | **GET** /User/{appKey}/Locations | 获取位置列表
*UserAPI* | [**userMutualFollowers**](docs/UserAPI.md#usermutualfollowers) | **GET** /User/{appKey}/Friends/MutualFollowers | 有共同粉丝的用户推荐
*UserAPI* | [**userMutualFollowings**](docs/UserAPI.md#usermutualfollowings) | **GET** /User/{appKey}/Friends/MutualFollowings | 有共同关注的用户推荐
*UserAPI* | [**userOAuthAccountBind**](docs/UserAPI.md#useroauthaccountbind) | **POST** /User/{appKey}/OAuthAccountBind | 外部账号 绑定
*UserAPI* | [**userOAuthAccountSignIn**](docs/UserAPI.md#useroauthaccountsignin) | **POST** /User/{appKey}/OAuthAccountSignIn | 外部账号 登录
*UserAPI* | [**userOAuthAccounts**](docs/UserAPI.md#useroauthaccounts) | **GET** /User/{appKey}/OAuthAccounts | 外部账号 绑定列表
*UserAPI* | [**userOAuthAccountsPutBind**](docs/UserAPI.md#useroauthaccountsputbind) | **PUT** /User/{appKey}/OAuthAccounts/{id} | 外部账号 更新绑定
*UserAPI* | [**userOAuthAccountsUnBind**](docs/UserAPI.md#useroauthaccountsunbind) | **DELETE** /User/{appKey}/OAuthAccounts/{id} | 外部账号 删除绑定
*UserAPI* | [**userPhoneSignIn**](docs/UserAPI.md#userphonesignin) | **POST** /User/{appKey}/PhoneSignIn | 手机登录
*UserAPI* | [**userPhoneSignUp**](docs/UserAPI.md#userphonesignup) | **POST** /User/{appKey}/PhoneSignUp | 手机注册
*UserAPI* | [**userProfile**](docs/UserAPI.md#userprofile) | **GET** /User/{appKey}/Profile | 获取个人资料
*UserAPI* | [**userPut**](docs/UserAPI.md#userput) | **PUT** /User/{appKey}/{id} | 更新用户信息
*UserAPI* | [**userQRCodePreSignIn**](docs/UserAPI.md#userqrcodepresignin) | **POST** /User/{appKey}/QRCodePreSignIn | 微信小程序 - 预登陆
*UserAPI* | [**userQRCodeScan**](docs/UserAPI.md#userqrcodescan) | **POST** /User/{appKey}/QRCodeScan | 微信小程序 - 扫码
*UserAPI* | [**userQRCodeSignIn**](docs/UserAPI.md#userqrcodesignin) | **POST** /User/{appKey}/QRCodeSignIn | 微信小程序 - 网页登录
*UserAPI* | [**userQRCodeSignUp**](docs/UserAPI.md#userqrcodesignup) | **POST** /User/{appKey}/QRCodeSignUp | 微信小程序 - 注册
*UserAPI* | [**userResetPwd**](docs/UserAPI.md#userresetpwd) | **POST** /User/{appKey}/ResetPwd | 重置密码
*UserAPI* | [**userSendEmailCode**](docs/UserAPI.md#usersendemailcode) | **POST** /User/{appKey}/SendEmailCode | 发送邮箱验证码
*UserAPI* | [**userSendSMSCode**](docs/UserAPI.md#usersendsmscode) | **POST** /User/{appKey}/SendSMSCode | 发送手机验证码
*UserAPI* | [**userSignIn**](docs/UserAPI.md#usersignin) | **POST** /User/{appKey}/SignIn | 账号密码 登录
*UserAPI* | [**userSignUp**](docs/UserAPI.md#usersignup) | **POST** /User/{appKey}/SignUp | 账号密码 注册
*UserAPI* | [**userTwoFactorAuth**](docs/UserAPI.md#usertwofactorauth) | **GET** /User/{appKey}/TwoFactorAuth | 双因素验证
*UserAPI* | [**userUnfollowUser**](docs/UserAPI.md#userunfollowuser) | **DELETE** /User/{appKey}/Follower/{userId} | 取消关注
*UserAPI* | [**userUnionIDSignIn**](docs/UserAPI.md#userunionidsignin) | **POST** /User/{appKey}/UnionIDSignIn | UnionID登录
*UserAPI* | [**userUnionIDSignUp**](docs/UserAPI.md#userunionidsignup) | **POST** /User/{appKey}/UnionIDSignUp | UnionID注册
*UserAPI* | [**userUpdateProfile**](docs/UserAPI.md#userupdateprofile) | **PUT** /User/{appKey}/Profile | 更新个人资料
*UserAPI* | [**users**](docs/UserAPI.md#users) | **GET** /User/{appKey} | 获取用户列表
*UserCurrencyAPI* | [**userCurrencies**](docs/UserCurrencyAPI.md#usercurrencies) | **GET** /UserCurrency/{appKey}/{id} | 获取用户资产
*UserCurrencyAPI* | [**userCurrencyConsume**](docs/UserCurrencyAPI.md#usercurrencyconsume) | **POST** /UserCurrency/{appKey}/CurrencyConsume | 消费虚拟币
*UserCurrencyAPI* | [**userCurrencyExchange**](docs/UserCurrencyAPI.md#usercurrencyexchange) | **POST** /UserCurrency/{appKey}/CurrencyExchange | 兑换虚拟币
*UserCurrencyAPI* | [**userCurrencyRecharge**](docs/UserCurrencyAPI.md#usercurrencyrecharge) | **POST** /UserCurrency/{appKey}/CurrencyRecharge | 充值虚拟币
*UserCurrencyAPI* | [**userCurrencyTransactions**](docs/UserCurrencyAPI.md#usercurrencytransactions) | **GET** /UserCurrency/{appKey}/CurrencyTransactions | 虚拟币交易记录
*UserSettingAPI* | [**userSetting**](docs/UserSettingAPI.md#usersetting) | **GET** /UserSetting/{appKey}/{id} | 获取用户配置项详情
*UserSettingAPI* | [**userSettingDelete**](docs/UserSettingAPI.md#usersettingdelete) | **DELETE** /UserSetting/{appKey}/{id} | 删除用户配置项
*UserSettingAPI* | [**userSettingPost**](docs/UserSettingAPI.md#usersettingpost) | **POST** /UserSetting/{appKey} | 添加用户配置项
*UserSettingAPI* | [**userSettingPut**](docs/UserSettingAPI.md#usersettingput) | **PUT** /UserSetting/{appKey}/{id} | 更新用户配置项
*UserSettingAPI* | [**userSettings**](docs/UserSettingAPI.md#usersettings) | **GET** /UserSetting/{appKey} | 获取用户配置列表
*WechatAPI* | [**wechatDecrypt**](docs/WechatAPI.md#wechatdecrypt) | **GET** /Wechat/{appKey}/Decrypt | 小程序-解密数据
*WechatAPI* | [**wechatGenerateScheme**](docs/WechatAPI.md#wechatgeneratescheme) | **POST** /Wechat/{appKey}/GenerateScheme | 小程序-生成scheme码(该接口用于获取小程序 scheme 码，适用于短信、邮件、外部网页、微信内等拉起小程序的业务场景)
*WechatAPI* | [**wechatJSCode2Session**](docs/WechatAPI.md#wechatjscode2session) | **GET** /Wechat/{appKey}/JSCode2Session | 小程序-登录凭证校验
*WechatAPI* | [**wechatJSConfig**](docs/WechatAPI.md#wechatjsconfig) | **GET** /Wechat/{appKey}/JSConfig | 公众号H5-JS SDK Config
*WechatAPI* | [**wechatSubscribeMSG**](docs/WechatAPI.md#wechatsubscribemsg) | **POST** /Wechat/{appKey}/SubscribeMSG | 公众号H5-发送一次性订阅消息
*WechatAPI* | [**wechatSubscribeSend**](docs/WechatAPI.md#wechatsubscribesend) | **POST** /Wechat/{appKey}/SubscribeSend | 小程序-发送订阅消息
*WechatAPI* | [**wechatUrlLinkGenerate**](docs/WechatAPI.md#wechaturllinkgenerate) | **POST** /Wechat/{appKey}/UrlLinkGenerate | 小程序-生成网页跳转地址(获取小程序 URL Link，适用于短信、邮件、网页、微信内等拉起小程序的业务场景)
*WechatAPI* | [**wechatUserInfo**](docs/WechatAPI.md#wechatuserinfo) | **GET** /Wechat/{appKey}/UserInfo | 公众号H5-获取用户UnionID
*WechatAPI* | [**wechatWXACodeGet**](docs/WechatAPI.md#wechatwxacodeget) | **POST** /Wechat/{appKey}/WXACodeGet | 小程序-获取小程序码
*WechatAPI* | [**wechatWXACodeGetUnlimited**](docs/WechatAPI.md#wechatwxacodegetunlimited) | **POST** /Wechat/{appKey}/WXACodeGetUnlimited | 小程序-获取小程序码(无限制)


## 模型文档

 - [AccessTokenListResult](docs/AccessTokenListResult.md)
 - [AccessTokenListResultApiResponse](docs/AccessTokenListResultApiResponse.md)
 - [AccessTokenPostRequest](docs/AccessTokenPostRequest.md)
 - [AccessTokenPutRequest](docs/AccessTokenPutRequest.md)
 - [AlipayCreateOrderPagePayRequest](docs/AlipayCreateOrderPagePayRequest.md)
 - [AlipayCreateOrderRequest](docs/AlipayCreateOrderRequest.md)
 - [AlipayCreateOrderWapPayRequest](docs/AlipayCreateOrderWapPayRequest.md)
 - [AlipayTradeQueryResponse](docs/AlipayTradeQueryResponse.md)
 - [AlipayTradeQueryResponseApiResponse](docs/AlipayTradeQueryResponseApiResponse.md)
 - [AlipayTradeRefundResponse](docs/AlipayTradeRefundResponse.md)
 - [AlipayTradeRefundResponseApiResponse](docs/AlipayTradeRefundResponseApiResponse.md)
 - [App](docs/App.md)
 - [AppApiResponse](docs/AppApiResponse.md)
 - [AppCheckVersionResult](docs/AppCheckVersionResult.md)
 - [AppCheckVersionResultApiResponse](docs/AppCheckVersionResultApiResponse.md)
 - [AppInfoItem](docs/AppInfoItem.md)
 - [AppInfoResult](docs/AppInfoResult.md)
 - [AppInfoResultApiResponse](docs/AppInfoResultApiResponse.md)
 - [AppListResult](docs/AppListResult.md)
 - [AppListResultApiResponse](docs/AppListResultApiResponse.md)
 - [AppPostResult](docs/AppPostResult.md)
 - [AppPostResultApiResponse](docs/AppPostResultApiResponse.md)
 - [AppProperty](docs/AppProperty.md)
 - [AppSetting](docs/AppSetting.md)
 - [AppSettingApiResponse](docs/AppSettingApiResponse.md)
 - [AppSettingGroupPostResult](docs/AppSettingGroupPostResult.md)
 - [AppSettingGroupPostResultApiResponse](docs/AppSettingGroupPostResultApiResponse.md)
 - [AppSettingItemPostResult](docs/AppSettingItemPostResult.md)
 - [AppSettingItemPostResultApiResponse](docs/AppSettingItemPostResultApiResponse.md)
 - [AppSettingListApiResponse](docs/AppSettingListApiResponse.md)
 - [AppSettingProviderPostResult](docs/AppSettingProviderPostResult.md)
 - [AppSettingProviderPostResultApiResponse](docs/AppSettingProviderPostResultApiResponse.md)
 - [AppSettingSettingPostResult](docs/AppSettingSettingPostResult.md)
 - [AppSettingSettingPostResultApiResponse](docs/AppSettingSettingPostResultApiResponse.md)
 - [AppUserConsentModel](docs/AppUserConsentModel.md)
 - [AppUserConsentModelListApiResponse](docs/AppUserConsentModelListApiResponse.md)
 - [AppUserListResponse](docs/AppUserListResponse.md)
 - [AppUserResetPwdRequest](docs/AppUserResetPwdRequest.md)
 - [AuthorizePolicy](docs/AuthorizePolicy.md)
 - [AuthorizePolicyApiResponse](docs/AuthorizePolicyApiResponse.md)
 - [AuthorizePolicyListApiResponse](docs/AuthorizePolicyListApiResponse.md)
 - [AuthorizeResult](docs/AuthorizeResult.md)
 - [AuthorizeResultApiResponse](docs/AuthorizeResultApiResponse.md)
 - [BkAgentRespInfo](docs/BkAgentRespInfo.md)
 - [BooleanApiResponse](docs/BooleanApiResponse.md)
 - [ChargeInfo](docs/ChargeInfo.md)
 - [CommonFriendModel](docs/CommonFriendModel.md)
 - [ContributeDetail](docs/ContributeDetail.md)
 - [CreateOrderRequest](docs/CreateOrderRequest.md)
 - [CreateOrderResult](docs/CreateOrderResult.md)
 - [CreateOrderResultApiResponse](docs/CreateOrderResultApiResponse.md)
 - [CreatePostResult](docs/CreatePostResult.md)
 - [CreatePostResultApiResponse](docs/CreatePostResultApiResponse.md)
 - [Currency](docs/Currency.md)
 - [CurrencyApiResponse](docs/CurrencyApiResponse.md)
 - [CurrencyConsumeRequest](docs/CurrencyConsumeRequest.md)
 - [CurrencyExchangeRate](docs/CurrencyExchangeRate.md)
 - [CurrencyExchangeRateApiResponse](docs/CurrencyExchangeRateApiResponse.md)
 - [CurrencyListApiResponse](docs/CurrencyListApiResponse.md)
 - [CurrencyTransaction](docs/CurrencyTransaction.md)
 - [CurrencyTransactionListApiResponse](docs/CurrencyTransactionListApiResponse.md)
 - [DirectoryItem](docs/DirectoryItem.md)
 - [EmailSignInRequest](docs/EmailSignInRequest.md)
 - [EmailSignUpRequest](docs/EmailSignUpRequest.md)
 - [EnterprisePayInfo](docs/EnterprisePayInfo.md)
 - [ExchangeCurrencyRequest](docs/ExchangeCurrencyRequest.md)
 - [ExchangeRatePutRequest](docs/ExchangeRatePutRequest.md)
 - [ExecuteFunctionRequest](docs/ExecuteFunctionRequest.md)
 - [FileItem](docs/FileItem.md)
 - [FileListResult](docs/FileListResult.md)
 - [FileListResultApiResponse](docs/FileListResultApiResponse.md)
 - [FollowerModel](docs/FollowerModel.md)
 - [FollowerPutModel](docs/FollowerPutModel.md)
 - [FulfillmentDetail](docs/FulfillmentDetail.md)
 - [GeoLocationModel](docs/GeoLocationModel.md)
 - [GeoLocationModelApiResponse](docs/GeoLocationModelApiResponse.md)
 - [GeoLocationResponseModel](docs/GeoLocationResponseModel.md)
 - [GoodsDetail](docs/GoodsDetail.md)
 - [GrantRequest](docs/GrantRequest.md)
 - [GrantResult](docs/GrantResult.md)
 - [GrantResultApiResponse](docs/GrantResultApiResponse.md)
 - [HbFqPayInfo](docs/HbFqPayInfo.md)
 - [Int64ApiResponse](docs/Int64ApiResponse.md)
 - [IntactChargeInfo](docs/IntactChargeInfo.md)
 - [ListResponseItem](docs/ListResponseItem.md)
 - [ListResponseItemListApiResponse](docs/ListResponseItemListApiResponse.md)
 - [OAuthAccountBindRequest](docs/OAuthAccountBindRequest.md)
 - [OAuthAccountPutBindRequest](docs/OAuthAccountPutBindRequest.md)
 - [OAuthAccountSignInRequest](docs/OAuthAccountSignInRequest.md)
 - [ObjectApiResponse](docs/ObjectApiResponse.md)
 - [ObjectListApiResponse](docs/ObjectListApiResponse.md)
 - [Order](docs/Order.md)
 - [OrderApiResponse](docs/OrderApiResponse.md)
 - [OrderListResult](docs/OrderListResult.md)
 - [OrderListResultApiResponse](docs/OrderListResultApiResponse.md)
 - [PaymentInfoWithId](docs/PaymentInfoWithId.md)
 - [PhoneSignInRequest](docs/PhoneSignInRequest.md)
 - [PhoneSignUpRequest](docs/PhoneSignUpRequest.md)
 - [PostIndexRequest](docs/PostIndexRequest.md)
 - [PostResult](docs/PostResult.md)
 - [PostResultApiResponse](docs/PostResultApiResponse.md)
 - [PresetPayToolInfo](docs/PresetPayToolInfo.md)
 - [ProfileResult](docs/ProfileResult.md)
 - [ProfileResultApiResponse](docs/ProfileResultApiResponse.md)
 - [Project](docs/Project.md)
 - [ProjectApiResponse](docs/ProjectApiResponse.md)
 - [ProjectListResult](docs/ProjectListResult.md)
 - [ProjectListResultApiResponse](docs/ProjectListResultApiResponse.md)
 - [QRCodePreSignInRequest](docs/QRCodePreSignInRequest.md)
 - [QRCodeScanRequest](docs/QRCodeScanRequest.md)
 - [QRCodeSignInRequest](docs/QRCodeSignInRequest.md)
 - [QRCodeSignUpRequest](docs/QRCodeSignUpRequest.md)
 - [RechargePointRequest](docs/RechargePointRequest.md)
 - [RecommendFriend](docs/RecommendFriend.md)
 - [RefundChargeInfo](docs/RefundChargeInfo.md)
 - [RefundSubFee](docs/RefundSubFee.md)
 - [ReturnPageNotifyRequest](docs/ReturnPageNotifyRequest.md)
 - [SendEmailCodeRequest](docs/SendEmailCodeRequest.md)
 - [SendSMSCodeRequest](docs/SendSMSCodeRequest.md)
 - [ServiceGroup](docs/ServiceGroup.md)
 - [ServiceGroupApiResponse](docs/ServiceGroupApiResponse.md)
 - [ServiceGroupListApiResponse](docs/ServiceGroupListApiResponse.md)
 - [ServiceItem](docs/ServiceItem.md)
 - [ServiceItemApiResponse](docs/ServiceItemApiResponse.md)
 - [ServiceItemListApiResponse](docs/ServiceItemListApiResponse.md)
 - [ServiceProvider](docs/ServiceProvider.md)
 - [ServiceProviderApiResponse](docs/ServiceProviderApiResponse.md)
 - [ServiceProviderListApiResponse](docs/ServiceProviderListApiResponse.md)
 - [ServiceSettingGroupPostResult](docs/ServiceSettingGroupPostResult.md)
 - [ServiceSettingGroupPostResultApiResponse](docs/ServiceSettingGroupPostResultApiResponse.md)
 - [ServiceSettingItemPostResult](docs/ServiceSettingItemPostResult.md)
 - [ServiceSettingItemPostResultApiResponse](docs/ServiceSettingItemPostResultApiResponse.md)
 - [ServiceSettingProviderPostResult](docs/ServiceSettingProviderPostResult.md)
 - [ServiceSettingProviderPostResultApiResponse](docs/ServiceSettingProviderPostResultApiResponse.md)
 - [ServiceSettingSettingPostResult](docs/ServiceSettingSettingPostResult.md)
 - [ServiceSettingSettingPostResultApiResponse](docs/ServiceSettingSettingPostResultApiResponse.md)
 - [Settings](docs/Settings.md)
 - [SettingsApiResponse](docs/SettingsApiResponse.md)
 - [SettingsListApiResponse](docs/SettingsListApiResponse.md)
 - [SetupCode](docs/SetupCode.md)
 - [SetupCodeApiResponse](docs/SetupCodeApiResponse.md)
 - [SignInRequest](docs/SignInRequest.md)
 - [SignUpRequest](docs/SignUpRequest.md)
 - [StorageListResult](docs/StorageListResult.md)
 - [StorageListResultApiResponse](docs/StorageListResultApiResponse.md)
 - [StringApiResponse](docs/StringApiResponse.md)
 - [StringListApiResponse](docs/StringListApiResponse.md)
 - [SubFee](docs/SubFee.md)
 - [SystemDirectoryItem](docs/SystemDirectoryItem.md)
 - [SystemFileItem](docs/SystemFileItem.md)
 - [SystemFileListResult](docs/SystemFileListResult.md)
 - [SystemFileListResultApiResponse](docs/SystemFileListResultApiResponse.md)
 - [TapPayInfo](docs/TapPayInfo.md)
 - [Team](docs/Team.md)
 - [TokenModel](docs/TokenModel.md)
 - [TokenModelApiResponse](docs/TokenModelApiResponse.md)
 - [TradeFundBill](docs/TradeFundBill.md)
 - [TradeSettleDetail](docs/TradeSettleDetail.md)
 - [TradeSettleInfo](docs/TradeSettleInfo.md)
 - [UnionIDSignInRequest](docs/UnionIDSignInRequest.md)
 - [UnionIDSignUpRequest](docs/UnionIDSignUpRequest.md)
 - [UpdateProfileRequest](docs/UpdateProfileRequest.md)
 - [User](docs/User.md)
 - [UserAccessToken](docs/UserAccessToken.md)
 - [UserApiResponse](docs/UserApiResponse.md)
 - [UserCommonInterestsResult](docs/UserCommonInterestsResult.md)
 - [UserCommonInterestsResultApiResponse](docs/UserCommonInterestsResultApiResponse.md)
 - [UserCurrency](docs/UserCurrency.md)
 - [UserCurrencyCurrencyTransResult](docs/UserCurrencyCurrencyTransResult.md)
 - [UserCurrencyCurrencyTransResultApiResponse](docs/UserCurrencyCurrencyTransResultApiResponse.md)
 - [UserCurrencyListApiResponse](docs/UserCurrencyListApiResponse.md)
 - [UserFollowersResult](docs/UserFollowersResult.md)
 - [UserFollowersResultApiResponse](docs/UserFollowersResultApiResponse.md)
 - [UserFollowingResult](docs/UserFollowingResult.md)
 - [UserFollowingResultApiResponse](docs/UserFollowingResultApiResponse.md)
 - [UserFriendsNearByResult](docs/UserFriendsNearByResult.md)
 - [UserFriendsNearByResultApiResponse](docs/UserFriendsNearByResultApiResponse.md)
 - [UserListResult](docs/UserListResult.md)
 - [UserListResultApiResponse](docs/UserListResultApiResponse.md)
 - [UserLocationPostResult](docs/UserLocationPostResult.md)
 - [UserLocationPostResultApiResponse](docs/UserLocationPostResultApiResponse.md)
 - [UserLocationsResult](docs/UserLocationsResult.md)
 - [UserLocationsResultApiResponse](docs/UserLocationsResultApiResponse.md)
 - [UserLogins](docs/UserLogins.md)
 - [UserLoginsListApiResponse](docs/UserLoginsListApiResponse.md)
 - [UserMutualFollowersResult](docs/UserMutualFollowersResult.md)
 - [UserMutualFollowersResultApiResponse](docs/UserMutualFollowersResultApiResponse.md)
 - [UserMutualFollowingsResult](docs/UserMutualFollowingsResult.md)
 - [UserMutualFollowingsResultApiResponse](docs/UserMutualFollowingsResultApiResponse.md)
 - [UserProfileResult](docs/UserProfileResult.md)
 - [UserProfileResultApiResponse](docs/UserProfileResultApiResponse.md)
 - [UserQRCodeScanResult](docs/UserQRCodeScanResult.md)
 - [UserQRCodeScanResultApiResponse](docs/UserQRCodeScanResultApiResponse.md)
 - [UserSetting](docs/UserSetting.md)
 - [UserSettingApiResponse](docs/UserSettingApiResponse.md)
 - [UserSettingListApiResponse](docs/UserSettingListApiResponse.md)
 - [UserSettingPostResult](docs/UserSettingPostResult.md)
 - [UserSettingPostResultApiResponse](docs/UserSettingPostResultApiResponse.md)
 - [VoucherDetail](docs/VoucherDetail.md)
 - [WechatJSConfigResult](docs/WechatJSConfigResult.md)
 - [WechatJSConfigResultApiResponse](docs/WechatJSConfigResultApiResponse.md)