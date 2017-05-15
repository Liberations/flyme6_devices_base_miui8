.class public Lcom/android/server/pm/PackageManagerServicePermissionProxy;
.super Ljava/lang/Object;
.source "PackageManagerServicePermissionProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static grantInstallPermission(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageManagerService;

    .local v3, "pms":Lcom/android/server/pm/PackageManagerService;
    iget-object v6, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v6

    :try_start_0
    iget-object v5, v3, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .local v2, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v4, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/SettingBase;

    .local v4, "sb":Lcom/android/server/pm/SettingBase;
    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v1

    .local v1, "permissionsState":Lcom/android/server/pm/PermissionsState;
    iget-object v5, v3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v5, v5, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/BasePermission;

    .local v0, "bp":Lcom/android/server/pm/BasePermission;
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/BasePermission;)I

    monitor-exit v6

    return-void

    .end local v0    # "bp":Lcom/android/server/pm/BasePermission;
    .end local v1    # "permissionsState":Lcom/android/server/pm/PermissionsState;
    .end local v2    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v4    # "sb":Lcom/android/server/pm/SettingBase;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method
