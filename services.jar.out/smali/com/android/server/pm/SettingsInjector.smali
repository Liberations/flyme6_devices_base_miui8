.class public Lcom/android/server/pm/SettingsInjector;
.super Ljava/lang/Object;
.source "SettingsInjector.java"


# static fields
.field private static final ANDROID_INSTALLER:Ljava/lang/String; = "com.android.packageinstaller"

.field private static final GOOGLE_INSTALLER:Ljava/lang/String; = "com.google.android.packageinstaller"

.field private static final MIUI_ACTION_PACKAGE_FIRST_LAUNCH:Ljava/lang/String; = "miui.intent.action.PACKAGE_FIRST_LAUNCH"

.field private static final MIUI_INSTALLER:Ljava/lang/String; = "com.miui.packageinstaller"

.field private static final MIUI_PERMISSION:Ljava/lang/String; = "miui.permission.USE_INTERNAL_GENERAL_API"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/android/server/pm/SettingsInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/SettingsInjector;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/android/server/pm/SettingsInjector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static checkXSpaceApp(Lcom/android/server/pm/PackageSetting;I)Z
    .locals 8
    .param p0, "ps"    # Lcom/android/server/pm/PackageSetting;
    .param p1, "userHandle"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 30
    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 31
    sget-object v6, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 32
    invoke-virtual {p0, v5, p1}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 36
    :goto_0
    sget-object v4, Lmiui/securityspace/XSpaceConstant;->SPECIAL_APPS:Ljava/util/Map;

    iget-object v6, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 37
    sget-object v4, Lmiui/securityspace/XSpaceConstant;->SPECIAL_APPS:Ljava/util/Map;

    iget-object v6, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 38
    .local v3, "requiredComponent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v1, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Component;>;"
    iget-object v4, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 40
    iget-object v4, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 41
    iget-object v4, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 42
    iget-object v4, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->providers:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 43
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Component;

    .line 44
    .local v0, "component":Landroid/content/pm/PackageParser$Component;
    iget-object v4, v0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 47
    iget-object v4, v0, Landroid/content/pm/PackageParser$Component;->className:Ljava/lang/String;

    invoke-virtual {p0, v4, p1}, Lcom/android/server/pm/PackageSetting;->addDisabledComponent(Ljava/lang/String;I)V

    goto :goto_1

    .line 34
    .end local v0    # "component":Landroid/content/pm/PackageParser$Component;
    .end local v1    # "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Component;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "requiredComponent":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {p0, v4, p1}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto :goto_0

    .line 52
    :cond_2
    invoke-static {p1}, Lmiui/securityspace/CrossUserUtils;->isAirLockUser(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 53
    invoke-virtual {p0, v4, p1}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 72
    :cond_3
    :goto_2
    return v5

    .line 57
    :cond_4
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_8

    sget-boolean v6, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v6, :cond_8

    sget-boolean v6, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v6, :cond_8

    .line 58
    const-string v6, "com.miui.packageinstaller"

    iget-object v7, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 59
    sget-boolean v6, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-nez v6, :cond_5

    move v4, v5

    :cond_5
    invoke-virtual {p0, v4, p1}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto :goto_2

    .line 62
    :cond_6
    const-string v6, "com.google.android.packageinstaller"

    iget-object v7, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 63
    sget-boolean v4, Lmiui/os/Build;->IS_CTS_BUILD:Z

    invoke-virtual {p0, v4, p1}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto :goto_2

    .line 66
    :cond_7
    const-string v6, "com.android.packageinstaller"

    iget-object v7, p0, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 67
    sget-boolean v4, Lmiui/os/Build;->IS_CTS_BUILD:Z

    invoke-virtual {p0, v4, p1}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    goto :goto_2

    :cond_8
    move v5, v4

    .line 72
    goto :goto_2
.end method

.method private static isSystem(Lcom/android/server/pm/PackageSetting;)Z
    .locals 1
    .param p0, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;

    .prologue
    .line 76
    iget v0, p0, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static noftifyFirstLaunch(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;I)V
    .locals 3
    .param p0, "pms"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "pkgSetting"    # Lcom/android/server/pm/PackageSetting;
    .param p2, "userId"    # I

    .prologue
    .line 81
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/android/server/pm/SettingsInjector;->isSystem(Lcom/android/server/pm/PackageSetting;)Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    new-instance v0, Lcom/android/server/pm/SettingsInjector$1;

    invoke-direct {v0, p1, p2}, Lcom/android/server/pm/SettingsInjector$1;-><init>(Lcom/android/server/pm/PackageSetting;I)V

    .line 103
    .local v0, "task":Ljava/lang/Runnable;
    if-eqz p0, :cond_2

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    if-eqz v1, :cond_2

    .line 105
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 108
    :cond_2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method
