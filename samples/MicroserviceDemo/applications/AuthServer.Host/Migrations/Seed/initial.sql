# 创建角色
INSERT INTO `tb_roles` (`Id`,`ExtraProperties`,`ConcurrencyStamp`,`TenantId`,`Name`,`NormalizedName`,`IsDefault`,`IsStatic`,`IsPublic`) VALUES ('bb9bf521-7d99-71fa-1bdc-39ec4553efb2','{}','71eede6e-e7ac-4749-9795-f9db89a14369',NULL,'Administrator','ADMINISTRATOR',0,1,1);

# 创建角色权限
INSERT INTO `tb_permissiongrants` (`Id`,`TenantId`,`Name`,`ProviderName`,`ProviderKey`) VALUES ('01779a5a-6f0d-30e3-9cbe-39ec455437cc',NULL,'AbpIdentity.Users.Create','Role','Administrator');
INSERT INTO `tb_permissiongrants` (`Id`,`TenantId`,`Name`,`ProviderName`,`ProviderKey`) VALUES ('10a5d80b-86d0-d38c-46e2-39ec4554381c',NULL,'AbpIdentity.Users.ManagePermissions','Role','Administrator');
INSERT INTO `tb_permissiongrants` (`Id`,`TenantId`,`Name`,`ProviderName`,`ProviderKey`) VALUES ('184e4dab-3adb-8dad-12d0-39ec44611a81',NULL,'AbpIdentity','Role','Administrator');
INSERT INTO `tb_permissiongrants` (`Id`,`TenantId`,`Name`,`ProviderName`,`ProviderKey`) VALUES ('4b09dcd8-67fc-bdf5-1f1d-39ec45543721',NULL,'AbpIdentity.Roles','Role','Administrator');
INSERT INTO `tb_permissiongrants` (`Id`,`TenantId`,`Name`,`ProviderName`,`ProviderKey`) VALUES ('6853e338-ba16-f54b-7520-39ec455437b1',NULL,'AbpIdentity.Users','Role','Administrator');
INSERT INTO `tb_permissiongrants` (`Id`,`TenantId`,`Name`,`ProviderName`,`ProviderKey`) VALUES ('88c4b015-d4df-3acd-7dba-39ec45543761',NULL,'AbpIdentity.Roles.Update','Role','Administrator');
INSERT INTO `tb_permissiongrants` (`Id`,`TenantId`,`Name`,`ProviderName`,`ProviderKey`) VALUES ('8e410421-2997-64fb-d1d8-39ec4554377c',NULL,'AbpIdentity.Roles.Delete','Role','Administrator');
INSERT INTO `tb_permissiongrants` (`Id`,`TenantId`,`Name`,`ProviderName`,`ProviderKey`) VALUES ('9a9b85f1-f118-92fb-ae13-39ec455437e6',NULL,'AbpIdentity.Users.Update','Role','Administrator');
INSERT INTO `tb_permissiongrants` (`Id`,`TenantId`,`Name`,`ProviderName`,`ProviderKey`) VALUES ('a531646d-f8e1-cba1-8a43-39ec446120db',NULL,'AbpIdentity.UserLookup','Role','Administrator');
INSERT INTO `tb_permissiongrants` (`Id`,`TenantId`,`Name`,`ProviderName`,`ProviderKey`) VALUES ('bfc64b19-2ca6-a4e8-d6bd-39ec45543797',NULL,'AbpIdentity.Roles.ManagePermissions','Role','Administrator');
INSERT INTO `tb_permissiongrants` (`Id`,`TenantId`,`Name`,`ProviderName`,`ProviderKey`) VALUES ('dbbce852-8902-b26d-841f-39ec45543746',NULL,'AbpIdentity.Roles.Create','Role','Administrator');
INSERT INTO `tb_permissiongrants` (`Id`,`TenantId`,`Name`,`ProviderName`,`ProviderKey`) VALUES ('e99c00c3-97df-56a7-c39a-39ec45543801',NULL,'AbpIdentity.Users.Delete','Role','Administrator');

# 创建用户
INSERT INTO `tb_users` (`Id`,`ExtraProperties`,`ConcurrencyStamp`,`CreationTime`,`CreatorId`,`LastModificationTime`,`LastModifierId`,`IsDeleted`,`DeleterId`,`DeletionTime`,`TenantId`,`UserName`,`NormalizedUserName`,`Name`,`Surname`,`Email`,`NormalizedEmail`,`EmailConfirmed`,`PasswordHash`,`SecurityStamp`,`PhoneNumber`,`PhoneNumberConfirmed`,`TwoFactorEnabled`,`LockoutEnd`,`LockoutEnabled`,`AccessFailedCount`) VALUES ('595413fb-3fb6-a70d-382f-39ec4554efa4','{}','a35ed618495c4ce6b48680053fb1834a','2019-02-28 16:10:59.534407','58f9ffe0-b8a1-8ac4-614e-39ec446115fe','2019-02-28 16:11:00.028835','58f9ffe0-b8a1-8ac4-614e-39ec446115fe',0,NULL,NULL,NULL,'chenxm','CHENXM','晓明','陈','bmzhe@vip.qq.com','BMZHE@VIP.QQ.COM',0,'AQAAAAEAACcQAAAAEAgXoZSZOjiXsPvkoUFu6JThuxAnj6jTDdjkTtlJK824LPvvzwFkV/7Ez20u5hRyOg==','OGA4AE6HDGFCPDM7WPS3FQJWILZ24TCR','13585090307',0,0,NULL,1,0);

# 创建用户与角色关系
INSERT INTO `tb_userroles` (`UserId`,`RoleId`,`TenantId`) VALUES ('595413fb-3fb6-a70d-382f-39ec4554efa4','bb9bf521-7d99-71fa-1bdc-39ec4553efb2',NULL);

# 创建默认的终端
INSERT INTO `tb_clients` (`Id`, `ExtraProperties`, `ConcurrencyStamp`, `ClientId`, `ClientName`, `Enabled`, `ProtocolType`, `RequireClientSecret`, `RequireConsent`, `AllowRememberConsent`, `AlwaysIncludeUserClaimsInIdToken`, `RequirePkce`, `AllowPlainTextPkce`, `AllowAccessTokensViaBrowser`, `FrontChannelLogoutSessionRequired`, `BackChannelLogoutSessionRequired`, `AllowOfflineAccess`, `IdentityTokenLifetime`, `AccessTokenLifetime`, `AuthorizationCodeLifetime`, `ConsentLifetime`, `AbsoluteRefreshTokenLifetime`, `SlidingRefreshTokenLifetime`, `RefreshTokenUsage`, `UpdateAccessTokenClaimsOnRefresh`, `RefreshTokenExpiration`, `AccessTokenType`, `EnableLocalLogin`, `IncludeJwtId`, `AlwaysSendClientClaims`, `ClientClaimsPrefix`) VALUES ('00265494-2d70-9615-4bd0-39eb2af3cd33', '{}', '7d3aa3afec514b33bed01b93f5f0b546', 'backend-admin-app-client', 'backend-admin-app-client', 1, 'oidc', 1, 0, 1, 0, 0, 0, 0, 1, 1, 1, 300, 31536000, 300, 0, 2592000, 1296000, 1, 0, 1, 0, 1, 0, 0, 'client_');

# 创建终端密钥
INSERT INTO `tb_clientsecrets` (`Type`,`Value`,`ClientId`,`Description`,`Expiration`) VALUES ('SharedSecret','E5Xd4yMqjP5kjWFKrYgySBju6JVfCzMyFp7n2QmMrME=','00265494-2d70-9615-4bd0-39eb2af3cd33',NULL,NULL);

# 创建GrantTypes
INSERT INTO `tb_clientgranttypes` (`ClientId`,`GrantType`) VALUES ('00265494-2d70-9615-4bd0-39eb2af3cd33','hybrid');
INSERT INTO `tb_clientgranttypes` (`ClientId`,`GrantType`) VALUES ('00265494-2d70-9615-4bd0-39eb2af3cd33','password');

# 写入终端的Scopes
INSERT INTO `tb_clientscopes` (`ClientId`,`Scope`) VALUES ('00265494-2d70-9615-4bd0-39eb2af3cd33','address');
INSERT INTO `tb_clientscopes` (`ClientId`,`Scope`) VALUES ('00265494-2d70-9615-4bd0-39eb2af3cd33','BackendAdminAppGateway');
INSERT INTO `tb_clientscopes` (`ClientId`,`Scope`) VALUES ('00265494-2d70-9615-4bd0-39eb2af3cd33','email');
INSERT INTO `tb_clientscopes` (`ClientId`,`Scope`) VALUES ('00265494-2d70-9615-4bd0-39eb2af3cd33','ExampleService');
INSERT INTO `tb_clientscopes` (`ClientId`,`Scope`) VALUES ('00265494-2d70-9615-4bd0-39eb2af3cd33','IdentityService');
INSERT INTO `tb_clientscopes` (`ClientId`,`Scope`) VALUES ('00265494-2d70-9615-4bd0-39eb2af3cd33','InfrastructureService');
INSERT INTO `tb_clientscopes` (`ClientId`,`Scope`) VALUES ('00265494-2d70-9615-4bd0-39eb2af3cd33','openid');
INSERT INTO `tb_clientscopes` (`ClientId`,`Scope`) VALUES ('00265494-2d70-9615-4bd0-39eb2af3cd33','phone');
INSERT INTO `tb_clientscopes` (`ClientId`,`Scope`) VALUES ('00265494-2d70-9615-4bd0-39eb2af3cd33','profile');
INSERT INTO `tb_clientscopes` (`ClientId`,`Scope`) VALUES ('00265494-2d70-9615-4bd0-39eb2af3cd33','role');

# 写入终端登录成功后回调的地址
INSERT INTO `tb_clientredirecturis` (`ClientId`,`RedirectUri`) VALUES ('00265494-2d70-9615-4bd0-39eb2af3cd33','http://localhost:51512/signin-oidc');
INSERT INTO `tb_clientredirecturis` (`ClientId`,`RedirectUri`) VALUES ('00265494-2d70-9615-4bd0-39eb2af3cd33','http://localhost:51954/signin-oidc');

# 写入终端注销成功后回调的地址
INSERT INTO `tb_clientpostlogoutredirecturis` (`ClientId`,`PostLogoutRedirectUri`) VALUES ('00265494-2d70-9615-4bd0-39eb2af3cd33','http://localhost:51512/signout-callback-oidc');
INSERT INTO `tb_clientpostlogoutredirecturis` (`ClientId`,`PostLogoutRedirectUri`) VALUES ('00265494-2d70-9615-4bd0-39eb2af3cd33','http://localhost:51954/signout-callback-oidc');

# 写入ApiReources
INSERT INTO `tb_apiresources` (`Id`,`ExtraProperties`,`ConcurrencyStamp`,`Name`,`DisplayName`,`Description`,`Enabled`) VALUES ('02156948-a9ca-c3d6-e57d-39eb0222a605','{}','65c657932a3446e4930d36da80e446db','IdentityService','IdentityService API',NULL,1);
INSERT INTO `tb_apiresources` (`Id`,`ExtraProperties`,`ConcurrencyStamp`,`Name`,`DisplayName`,`Description`,`Enabled`) VALUES ('22156948-a9ca-c3d6-e57d-39eb0222a605','{}','65c657932a3446e4930d36da80e446db','ExampleService','ExampleService API',NULL,1);
INSERT INTO `tb_apiresources` (`Id`,`ExtraProperties`,`ConcurrencyStamp`,`Name`,`DisplayName`,`Description`,`Enabled`) VALUES ('32156948-a9ca-c3d6-e57d-39eb0222a605','{}','65c657932a3446e4930d36da80e446db','InternalGateway','InternalGateway',NULL,1);
INSERT INTO `tb_apiresources` (`Id`,`ExtraProperties`,`ConcurrencyStamp`,`Name`,`DisplayName`,`Description`,`Enabled`) VALUES ('42156948-a9ca-c3d6-e57d-39eb0222a605','{}','65c657932a3446e4930d36da80e446db','BackendAdminAppGateway','BackendAdminAppGateway',NULL,1);
INSERT INTO `tb_apiresources` (`Id`,`ExtraProperties`,`ConcurrencyStamp`,`Name`,`DisplayName`,`Description`,`Enabled`) VALUES ('52156948-a9ca-c3d6-e57d-39eb0222a605','{}','65c657932a3446e4930d36da80e446db','InfrastructureService','InfrastructureService',NULL,1);

# 写入ApiScopes
INSERT INTO `tb_apiscopes` (`ApiResourceId`,`Name`,`DisplayName`,`Description`,`Required`,`Emphasize`,`ShowInDiscoveryDocument`) VALUES ('02156948-a9ca-c3d6-e57d-39eb0222a605','IdentityService','IdentityService',NULL,0,0,1);
INSERT INTO `tb_apiscopes` (`ApiResourceId`,`Name`,`DisplayName`,`Description`,`Required`,`Emphasize`,`ShowInDiscoveryDocument`) VALUES ('22156948-a9ca-c3d6-e57d-39eb0222a605','ExampleService','ExampleService',NULL,0,0,1);
INSERT INTO `tb_apiscopes` (`ApiResourceId`,`Name`,`DisplayName`,`Description`,`Required`,`Emphasize`,`ShowInDiscoveryDocument`) VALUES ('32156948-a9ca-c3d6-e57d-39eb0222a605','InternalGateway','InternalGateway',NULL,0,0,1);
INSERT INTO `tb_apiscopes` (`ApiResourceId`,`Name`,`DisplayName`,`Description`,`Required`,`Emphasize`,`ShowInDiscoveryDocument`) VALUES ('42156948-a9ca-c3d6-e57d-39eb0222a605','BackendAdminAppGateway','BackendAdminAppGateway',NULL,0,0,1);
INSERT INTO `tb_apiscopes` (`ApiResourceId`,`Name`,`DisplayName`,`Description`,`Required`,`Emphasize`,`ShowInDiscoveryDocument`) VALUES ('52156948-a9ca-c3d6-e57d-39eb0222a605','InfrastructureService','InfrastructureService',NULL,0,0,1);

INSERT INTO `tb_apiclaims` (`Type`,`ApiResourceId`) VALUES ('email','02156948-a9ca-c3d6-e57d-39eb0222a605');
INSERT INTO `tb_apiclaims` (`Type`,`ApiResourceId`) VALUES ('email_verified','02156948-a9ca-c3d6-e57d-39eb0222a605');
INSERT INTO `tb_apiclaims` (`Type`,`ApiResourceId`) VALUES ('name','02156948-a9ca-c3d6-e57d-39eb0222a605');
INSERT INTO `tb_apiclaims` (`Type`,`ApiResourceId`) VALUES ('phone_number','02156948-a9ca-c3d6-e57d-39eb0222a605');
INSERT INTO `tb_apiclaims` (`Type`,`ApiResourceId`) VALUES ('phone_number_verified','02156948-a9ca-c3d6-e57d-39eb0222a605');
INSERT INTO `tb_apiclaims` (`Type`,`ApiResourceId`) VALUES ('role','02156948-a9ca-c3d6-e57d-39eb0222a605');
INSERT INTO `tb_apiclaims` (`Type`,`ApiResourceId`) VALUES ('email','22156948-a9ca-c3d6-e57d-39eb0222a605');
INSERT INTO `tb_apiclaims` (`Type`,`ApiResourceId`) VALUES ('email_verified','22156948-a9ca-c3d6-e57d-39eb0222a605');
INSERT INTO `tb_apiclaims` (`Type`,`ApiResourceId`) VALUES ('name','22156948-a9ca-c3d6-e57d-39eb0222a605');
INSERT INTO `tb_apiclaims` (`Type`,`ApiResourceId`) VALUES ('phone_number','22156948-a9ca-c3d6-e57d-39eb0222a605');
INSERT INTO `tb_apiclaims` (`Type`,`ApiResourceId`) VALUES ('phone_number_verified','22156948-a9ca-c3d6-e57d-39eb0222a605');
INSERT INTO `tb_apiclaims` (`Type`,`ApiResourceId`) VALUES ('role','22156948-a9ca-c3d6-e57d-39eb0222a605');
INSERT INTO `tb_apiclaims` (`Type`,`ApiResourceId`) VALUES ('email','32156948-a9ca-c3d6-e57d-39eb0222a605');
INSERT INTO `tb_apiclaims` (`Type`,`ApiResourceId`) VALUES ('email_verified','32156948-a9ca-c3d6-e57d-39eb0222a605');
INSERT INTO `tb_apiclaims` (`Type`,`ApiResourceId`) VALUES ('name','32156948-a9ca-c3d6-e57d-39eb0222a605');
INSERT INTO `tb_apiclaims` (`Type`,`ApiResourceId`) VALUES ('phone_number','32156948-a9ca-c3d6-e57d-39eb0222a605');
INSERT INTO `tb_apiclaims` (`Type`,`ApiResourceId`) VALUES ('phone_number_verified','32156948-a9ca-c3d6-e57d-39eb0222a605');
INSERT INTO `tb_apiclaims` (`Type`,`ApiResourceId`) VALUES ('role','32156948-a9ca-c3d6-e57d-39eb0222a605');
INSERT INTO `tb_apiclaims` (`Type`,`ApiResourceId`) VALUES ('email','42156948-a9ca-c3d6-e57d-39eb0222a605');
INSERT INTO `tb_apiclaims` (`Type`,`ApiResourceId`) VALUES ('email_verified','42156948-a9ca-c3d6-e57d-39eb0222a605');
INSERT INTO `tb_apiclaims` (`Type`,`ApiResourceId`) VALUES ('name','42156948-a9ca-c3d6-e57d-39eb0222a605');
INSERT INTO `tb_apiclaims` (`Type`,`ApiResourceId`) VALUES ('phone_number','42156948-a9ca-c3d6-e57d-39eb0222a605');
INSERT INTO `tb_apiclaims` (`Type`,`ApiResourceId`) VALUES ('phone_number_verified','42156948-a9ca-c3d6-e57d-39eb0222a605');
INSERT INTO `tb_apiclaims` (`Type`,`ApiResourceId`) VALUES ('role','42156948-a9ca-c3d6-e57d-39eb0222a605');

# 写入IdentityReources
INSERT INTO `tb_identityresources` (`Id`,`ExtraProperties`,`ConcurrencyStamp`,`Name`,`DisplayName`,`Description`,`Enabled`,`Required`,`Emphasize`,`ShowInDiscoveryDocument`) VALUES ('28a19009-dc12-fc2d-9e65-39eb3f357fc4','{}','902414c077a44b90acaa5b0911b4bb81','phone','Your phone number',NULL,1,0,1,1);
INSERT INTO `tb_identityresources` (`Id`,`ExtraProperties`,`ConcurrencyStamp`,`Name`,`DisplayName`,`Description`,`Enabled`,`Required`,`Emphasize`,`ShowInDiscoveryDocument`) VALUES ('37fc7e68-9577-9e75-083c-39eb3f357fc2','{}','6a2ec8946a7b46aebb218a8477e899a0','email','Your email address',NULL,1,0,1,1);
INSERT INTO `tb_identityresources` (`Id`,`ExtraProperties`,`ConcurrencyStamp`,`Name`,`DisplayName`,`Description`,`Enabled`,`Required`,`Emphasize`,`ShowInDiscoveryDocument`) VALUES ('52615d6b-f7a0-da3f-d240-39eb3f357fbe','{}','c5e12f8899a44660a43d6b45a7655c7d','profile','User profile','Your user profile information (first name, last name, etc.)',1,0,1,1);
INSERT INTO `tb_identityresources` (`Id`,`ExtraProperties`,`ConcurrencyStamp`,`Name`,`DisplayName`,`Description`,`Enabled`,`Required`,`Emphasize`,`ShowInDiscoveryDocument`) VALUES ('61bec679-c781-c497-827f-39eb451d7a52','{}','b37e6307fa09463783d0158de0026995','role','Roles of the user',NULL,1,0,0,1);
INSERT INTO `tb_identityresources` (`Id`,`ExtraProperties`,`ConcurrencyStamp`,`Name`,`DisplayName`,`Description`,`Enabled`,`Required`,`Emphasize`,`ShowInDiscoveryDocument`) VALUES ('78ba26f1-e9f9-dd65-4258-39eb3f357fa2','{}','f898db0732764ce2a2c205a703629086','openid','Your user identifier',NULL,1,1,0,1);
INSERT INTO `tb_identityresources` (`Id`,`ExtraProperties`,`ConcurrencyStamp`,`Name`,`DisplayName`,`Description`,`Enabled`,`Required`,`Emphasize`,`ShowInDiscoveryDocument`) VALUES ('f8a73652-a179-bd22-225e-39eb3f357fc3','{}','bd2ec914b8ca411984bb7bd5a61ece25','address','Your postal address',NULL,1,0,1,1);

INSERT INTO `tb_identityclaims` (`Type`,`IdentityResourceId`) VALUES ('phone_number','28a19009-dc12-fc2d-9e65-39eb3f357fc4');
INSERT INTO `tb_identityclaims` (`Type`,`IdentityResourceId`) VALUES ('phone_number_verified','28a19009-dc12-fc2d-9e65-39eb3f357fc4');
INSERT INTO `tb_identityclaims` (`Type`,`IdentityResourceId`) VALUES ('email','37fc7e68-9577-9e75-083c-39eb3f357fc2');
INSERT INTO `tb_identityclaims` (`Type`,`IdentityResourceId`) VALUES ('email_verified','37fc7e68-9577-9e75-083c-39eb3f357fc2');
INSERT INTO `tb_identityclaims` (`Type`,`IdentityResourceId`) VALUES ('birthdate','52615d6b-f7a0-da3f-d240-39eb3f357fbe');
INSERT INTO `tb_identityclaims` (`Type`,`IdentityResourceId`) VALUES ('family_name','52615d6b-f7a0-da3f-d240-39eb3f357fbe');
INSERT INTO `tb_identityclaims` (`Type`,`IdentityResourceId`) VALUES ('gender','52615d6b-f7a0-da3f-d240-39eb3f357fbe');
INSERT INTO `tb_identityclaims` (`Type`,`IdentityResourceId`) VALUES ('given_name','52615d6b-f7a0-da3f-d240-39eb3f357fbe');
INSERT INTO `tb_identityclaims` (`Type`,`IdentityResourceId`) VALUES ('locale','52615d6b-f7a0-da3f-d240-39eb3f357fbe');
INSERT INTO `tb_identityclaims` (`Type`,`IdentityResourceId`) VALUES ('middle_name','52615d6b-f7a0-da3f-d240-39eb3f357fbe');
INSERT INTO `tb_identityclaims` (`Type`,`IdentityResourceId`) VALUES ('name','52615d6b-f7a0-da3f-d240-39eb3f357fbe');
INSERT INTO `tb_identityclaims` (`Type`,`IdentityResourceId`) VALUES ('nickname','52615d6b-f7a0-da3f-d240-39eb3f357fbe');
INSERT INTO `tb_identityclaims` (`Type`,`IdentityResourceId`) VALUES ('picture','52615d6b-f7a0-da3f-d240-39eb3f357fbe');
INSERT INTO `tb_identityclaims` (`Type`,`IdentityResourceId`) VALUES ('preferred_username','52615d6b-f7a0-da3f-d240-39eb3f357fbe');
INSERT INTO `tb_identityclaims` (`Type`,`IdentityResourceId`) VALUES ('profile','52615d6b-f7a0-da3f-d240-39eb3f357fbe');
INSERT INTO `tb_identityclaims` (`Type`,`IdentityResourceId`) VALUES ('updated_at','52615d6b-f7a0-da3f-d240-39eb3f357fbe');
INSERT INTO `tb_identityclaims` (`Type`,`IdentityResourceId`) VALUES ('website','52615d6b-f7a0-da3f-d240-39eb3f357fbe');
INSERT INTO `tb_identityclaims` (`Type`,`IdentityResourceId`) VALUES ('zoneinfo','52615d6b-f7a0-da3f-d240-39eb3f357fbe');
INSERT INTO `tb_identityclaims` (`Type`,`IdentityResourceId`) VALUES ('role','61bec679-c781-c497-827f-39eb451d7a52');
INSERT INTO `tb_identityclaims` (`Type`,`IdentityResourceId`) VALUES ('sub','78ba26f1-e9f9-dd65-4258-39eb3f357fa2');
INSERT INTO `tb_identityclaims` (`Type`,`IdentityResourceId`) VALUES ('address','f8a73652-a179-bd22-225e-39eb3f357fc3');