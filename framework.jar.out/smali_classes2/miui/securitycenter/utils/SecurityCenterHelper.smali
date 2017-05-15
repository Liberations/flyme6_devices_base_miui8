.class public Lmiui/securitycenter/utils/SecurityCenterHelper;
.super Ljava/lang/Object;
.source "SecurityCenterHelper.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collapseStatusPanels(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .local v0, "sbm":Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    return-void
.end method

.method public static forceStopPackage(Landroid/app/ActivityManager;Ljava/lang/String;)V
    .locals 6
    .param p0, "am"    # Landroid/app/ActivityManager;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x14

    if-lt v4, v5, :cond_0

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .local v3, "packageManager":Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    const/16 v5, 0x3e7

    invoke-interface {v3, p1, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .local v2, "mgr":Landroid/app/IActivityManager;
    const/16 v4, 0x3e7

    invoke-interface {v2, p1, v4}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "mgr":Landroid/app/IActivityManager;
    .end local v3    # "packageManager":Landroid/content/pm/IPackageManager;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getApnsXml(Landroid/content/Context;)Landroid/content/res/XmlResourceParser;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1110000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getBrightnessDimInt(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11060004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public static getLabel(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .local v4, "pRes":Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, "assmgr":Landroid/content/res/AssetManager;
    const/4 v3, 0x0

    .local v3, "label":Ljava/lang/CharSequence;
    :try_start_0
    new-instance v1, Landroid/content/res/AssetManager;

    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "assmgr":Landroid/content/res/AssetManager;
    .local v1, "assmgr":Landroid/content/res/AssetManager;
    :try_start_1
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    new-instance v5, Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-direct {v5, v1, v6, v7}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    .local v5, "res":Landroid/content/res/Resources;
    iget v6, p2, Landroid/content/pm/ApplicationInfo;->labelRes:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v6, :cond_0

    :try_start_2
    iget v6, p2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    :cond_0
    :goto_0
    if-nez v3, :cond_1

    :try_start_3
    iget-object v6, p2, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v6, :cond_3

    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v6

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->close()V

    :cond_2
    move-object v0, v1

    .end local v1    # "assmgr":Landroid/content/res/AssetManager;
    .end local v5    # "res":Landroid/content/res/Resources;
    .restart local v0    # "assmgr":Landroid/content/res/AssetManager;
    :goto_2
    return-object v6

    .end local v0    # "assmgr":Landroid/content/res/AssetManager;
    .restart local v1    # "assmgr":Landroid/content/res/AssetManager;
    .restart local v5    # "res":Landroid/content/res/Resources;
    :cond_3
    :try_start_4
    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .end local v1    # "assmgr":Landroid/content/res/AssetManager;
    .end local v5    # "res":Landroid/content/res/Resources;
    .restart local v0    # "assmgr":Landroid/content/res/AssetManager;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_5
    const-string v6, "getLabel"

    const-string v7, "getLabel error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->close()V

    :cond_4
    const-string v6, ""

    goto :goto_2

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->close()V

    :cond_5
    throw v6

    .end local v0    # "assmgr":Landroid/content/res/AssetManager;
    .restart local v1    # "assmgr":Landroid/content/res/AssetManager;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "assmgr":Landroid/content/res/AssetManager;
    .restart local v0    # "assmgr":Landroid/content/res/AssetManager;
    goto :goto_4

    .end local v0    # "assmgr":Landroid/content/res/AssetManager;
    .restart local v1    # "assmgr":Landroid/content/res/AssetManager;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "assmgr":Landroid/content/res/AssetManager;
    .restart local v0    # "assmgr":Landroid/content/res/AssetManager;
    goto :goto_3

    .end local v0    # "assmgr":Landroid/content/res/AssetManager;
    .restart local v1    # "assmgr":Landroid/content/res/AssetManager;
    .restart local v5    # "res":Landroid/content/res/Resources;
    :catch_2
    move-exception v6

    goto :goto_0
.end method

.method public static getProcessPss([I)[J
    .locals 2
    .param p0, "pids"    # [I

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->getProcessPss([I)[J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getUserAll()Landroid/os/UserHandle;
    .locals 1

    .prologue
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    return-object v0
.end method

.method public static getUserId(I)I
    .locals 1
    .param p0, "uid"    # I

    .prologue
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public static isAutomaticBrightnessAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static packageHasActiveAdmins(Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;)Z
    .locals 1
    .param p0, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setBacklightBrightness(Landroid/os/PowerManager;I)V
    .locals 0
    .param p0, "powerManager"    # Landroid/os/PowerManager;
    .param p1, "brightness"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->setBacklightBrightness(I)V

    return-void
.end method
