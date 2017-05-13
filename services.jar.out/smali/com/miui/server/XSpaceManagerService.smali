.class public Lcom/miui/server/XSpaceManagerService;
.super Ljava/lang/Object;
.source "XSpaceManagerService.java"


# static fields
.field private static final EXTRA_XSPACE_CACHED_USERID:Ljava/lang/String; = "android.intent.extra.xspace_cached_uid"

.field private static final EXTRA_XSPACE_RESOLVE_INTENT_AGAIN:Ljava/lang/String; = "android.intent.extra.xspace_resolve_intent_again"

.field private static final EXTRA_XSPACE_USERID_SELECTED:Ljava/lang/String; = "android.intent.extra.xspace_userid_selected"

.field private static final PACKAGE_LINKER:Ljava/lang/String; = "@"

.field private static final SYSTEM_PROP_XSPACE_CREATED:Ljava/lang/String; = "persist.sys.xspace_created"

.field private static final TAG:Ljava/lang/String;

.field private static final XIAOMI_GAMECENTER_SDK_PKGNAME:Ljava/lang/String; = "com.xiaomi.gamecenter.sdk.service"

.field private static final XSPACE_APP_LIST_INIT_NUMBER:I

.field private static final sCachedCallingRelationSelfLocked:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sIsXSpaceActived:Z

.field public static sIsXSpaceCreated:Z

.field private static final sPackageCallback:Landroid/content/pm/LauncherApps$Callback;

.field private static final sPublicActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sResolver:Landroid/content/ContentResolver;

.field private static final sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 38
    const-class v0, Lcom/miui/server/XSpaceManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    .line 57
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.lbe.security.miui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sPublicActionList:Ljava/util/ArrayList;

    .line 68
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sPublicActionList:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sPublicActionList:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sPublicActionList:Ljava/util/ArrayList;

    const-string v1, "android.intent.action.SENDTO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    .line 76
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    sget-object v1, Lmiui/securityspace/XSpaceConstant;->REQUIRED_APPS:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 78
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    const-string v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    .line 85
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    const-string v1, "com.xiaomi.gamecenter.sdk.service"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sput v0, Lcom/miui/server/XSpaceManagerService;->XSPACE_APP_LIST_INIT_NUMBER:I

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sCachedCallingRelationSelfLocked:Ljava/util/HashMap;

    .line 270
    sput-boolean v2, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceCreated:Z

    .line 272
    sput-boolean v2, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceActived:Z

    .line 333
    new-instance v0, Lcom/miui/server/XSpaceManagerService$2;

    invoke-direct {v0}, Lcom/miui/server/XSpaceManagerService$2;-><init>()V

    sput-object v0, Lcom/miui/server/XSpaceManagerService;->sPackageCallback:Landroid/content/pm/LauncherApps$Callback;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Landroid/os/UserHandle;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p0, p1, p2}, Lcom/miui/server/XSpaceManagerService;->onPackageCallback(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private static checkCallXSpacePermission(Ljava/lang/String;)Z
    .locals 6
    .param p0, "callingPkg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 255
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 257
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-gtz v3, :cond_0

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0x3e8

    if-gt v3, v4, :cond_1

    .line 258
    :cond_0
    const/4 v2, 0x1

    .line 263
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    :goto_0
    return v2

    .line 260
    :catch_0
    move-exception v1

    .line 261
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read package info of: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static checkXSpaceControl(Landroid/content/Context;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;ZIILjava/lang/String;)Landroid/content/Intent;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "fromActivity"    # Z
    .param p4, "requestCode"    # I
    .param p5, "userId"    # I
    .param p6, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {p2}, Lcom/miui/server/XSpaceManagerService;->getAimPkg(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "aimPkg":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 97
    .local v3, "callingUserId":I
    sget-object v5, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkXSpaceControl, from:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", to:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", with act:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", callingUserId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", toUserId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-eqz v3, :cond_0

    const/16 v5, 0x3e7

    if-eq v3, v5, :cond_0

    move-object v4, p2

    .line 147
    .end local p2    # "intent":Landroid/content/Intent;
    .local v4, "intent":Landroid/content/Intent;
    :goto_0
    return-object v4

    .line 106
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local p2    # "intent":Landroid/content/Intent;
    :cond_0
    sget-object v5, Lcom/miui/server/XSpaceManagerService;->sCrossUserCallingPackagesWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v5, p6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/miui/server/XSpaceManagerService;->sPublicActionList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    sget-object v5, Lcom/miui/server/XSpaceManagerService;->sCrossUserAimPackagesWhiteList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    move-object v4, p2

    .line 109
    .end local p2    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 113
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local p2    # "intent":Landroid/content/Intent;
    :cond_3
    const-string v5, "android.intent.extra.xspace_userid_selected"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 115
    sget-object v5, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    const-string v6, "from XSpace ResolverActivity"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v5, "android.intent.extra.xspace_resolve_intent_again"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 118
    invoke-static {v1, p6}, Lcom/miui/server/XSpaceManagerService;->putCachedCallingRelation(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v4, p2

    .line 147
    .end local p2    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 121
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local p2    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-static {v1, p6}, Lcom/miui/server/XSpaceManagerService;->getToUserIdFromCachedCallingRelation(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 122
    .local v2, "cachedToUserId":I
    const/16 v5, -0x2710

    if-eq v2, v5, :cond_5

    .line 124
    sget-object v5, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    const-string v6, "using cached calling relation"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v5, "android.intent.extra.xspace_cached_uid"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    .line 128
    :cond_5
    sget-object v6, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    monitor-enter v6

    .line 129
    :try_start_0
    sget-object v5, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 130
    const-string v5, "android.intent.extra.auth_to_call_xspace"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {p6}, Lcom/miui/server/XSpaceManagerService;->checkCallXSpacePermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 132
    sget-object v5, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    const-string v7, "call XSpace directly"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    monitor-exit v6

    move-object v4, p2

    .end local p2    # "intent":Landroid/content/Intent;
    .restart local v4    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 136
    .end local v4    # "intent":Landroid/content/Intent;
    .restart local p2    # "intent":Landroid/content/Intent;
    :cond_6
    sget-object v5, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    const-string v7, "pop up ResolverActivity"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {p2, v1, p4}, Lcom/miui/server/XSpaceManagerService;->getResolverActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p2

    .line 143
    :cond_7
    :goto_2
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 138
    :cond_8
    :try_start_1
    sget-object v5, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v5, p6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 139
    sget-object v5, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    const-string v7, "XSpace installed App to normal App"

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    const-string v5, "android.intent.extra.xspace_cached_uid"

    const/4 v7, 0x0

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 141
    invoke-static {v1, p6}, Lcom/miui/server/XSpaceManagerService;->putCachedCallingRelation(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private static getAimPkg(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 229
    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, "aimPkg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 232
    .local v1, "componentName":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 236
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :cond_0
    return-object v0
.end method

.method public static getCachedUserId(Landroid/content/Intent;Ljava/lang/String;)I
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 168
    const/16 v1, -0x2710

    .line 169
    .local v1, "cachedUserId":I
    invoke-static {p0}, Lcom/miui/server/XSpaceManagerService;->getAimPkg(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "aimPkg":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.extra.xspace_cached_uid"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    const-string v2, "android.intent.extra.xspace_cached_uid"

    const/16 v3, -0x2710

    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 173
    const-string v2, "android.intent.extra.xspace_cached_uid"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 175
    :cond_0
    return v1
.end method

.method private static getPackageActionKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getResolverActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "aimPkg"    # Ljava/lang/String;
    .param p2, "requestCode"    # I

    .prologue
    const/4 v3, 0x1

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.ACTION_XSPACE_RESOLVER_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "resolverActivityIntent":Landroid/content/Intent;
    if-ltz p2, :cond_0

    .line 243
    const/high16 v1, 0x2000000

    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 245
    :cond_0
    const-string v1, "android.intent.extra.xspace_userid_selected"

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 246
    const-string v1, "android.intent.extra.xspace_resolver_activity_original_intent"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 247
    const-string v1, "android.intent.extra.xspace_resolver_activity_aim_package"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v1, "android"

    const-string v2, "com.android.internal.app.ResolverActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v1, "android.intent.extra.xspace_resolve_intent_again"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    return-object v0
.end method

.method private static getToUserIdFromCachedCallingRelation(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "aimPkg"    # Ljava/lang/String;
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 214
    const/16 v0, -0x2710

    .line 215
    .local v0, "cachedToUserId":I
    sget-object v4, Lcom/miui/server/XSpaceManagerService;->sCachedCallingRelationSelfLocked:Ljava/util/HashMap;

    monitor-enter v4

    .line 216
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "@"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "callingRelationKey":Ljava/lang/String;
    sget-object v3, Lcom/miui/server/XSpaceManagerService;->sCachedCallingRelationSelfLocked:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 218
    .local v2, "toUserIdObj":Ljava/lang/Integer;
    if-eqz v2, :cond_0

    .line 220
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 221
    sget-object v3, Lcom/miui/server/XSpaceManagerService;->sCachedCallingRelationSelfLocked:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v3, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got callingRelationKey :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", cachedToUserId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    monitor-exit v4

    .line 225
    return v0

    .line 224
    .end local v1    # "callingRelationKey":Ljava/lang/String;
    .end local v2    # "toUserIdObj":Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static init(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 277
    invoke-static {}, Lcom/miui/server/XSpaceManagerService;->initXSpaceAppList()V

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sput-object v1, Lcom/miui/server/XSpaceManagerService;->sResolver:Landroid/content/ContentResolver;

    .line 280
    sget-object v1, Lcom/miui/server/XSpaceManagerService;->sResolver:Landroid/content/ContentResolver;

    const-string v2, "xspace_enabled"

    invoke-static {v1, v2, v5}, Landroid/provider/MiuiSettings$Secure;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceActived:Z

    .line 282
    sget-object v1, Lcom/miui/server/XSpaceManagerService;->sResolver:Landroid/content/ContentResolver;

    const-string v2, "xspace_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/miui/server/XSpaceManagerService$1;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, v4}, Lcom/miui/server/XSpaceManagerService$1;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 294
    const-string v1, "launcherapps"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 295
    .local v0, "launcherApps":Landroid/content/pm/LauncherApps;
    sget-object v1, Lcom/miui/server/XSpaceManagerService;->sPackageCallback:Landroid/content/pm/LauncherApps$Callback;

    invoke-virtual {v0, v1}, Landroid/content/pm/LauncherApps;->registerCallback(Landroid/content/pm/LauncherApps$Callback;)V

    .line 297
    sget-object v1, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XSpace init, active:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceActived:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {p0}, Lmiui/securityspace/CrossUserUtils;->hasXSpaceUser(Landroid/content/Context;)Z

    move-result v1

    sput-boolean v1, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceCreated:Z

    .line 300
    sget-boolean v1, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceCreated:Z

    if-eqz v1, :cond_0

    .line 301
    const-string v1, "persist.sys.xspace_created"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-static {p0}, Lcom/miui/server/XSpaceManagerService;->startXSpaceService(Landroid/content/Context;)V

    .line 306
    :cond_0
    invoke-static {p0}, Lcom/android/server/pm/ExtraPackageManagerService;->checkExtraRestoreconFlag(Landroid/content/Context;)V

    .line 307
    return-void
.end method

.method private static initXSpaceAppList()V
    .locals 9

    .prologue
    .line 310
    const/4 v5, 0x0

    .line 312
    .local v5, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x3e7

    invoke-interface {v6, v7, v8}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 316
    :goto_0
    if-eqz v5, :cond_2

    .line 317
    invoke-virtual {v5}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    .line 318
    .local v1, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    sget-object v7, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    monitor-enter v7

    .line 319
    :try_start_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 320
    .local v4, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 321
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v6, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-gtz v6, :cond_0

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v8, 0x3e8

    if-le v6, v8, :cond_0

    .line 322
    sget-object v6, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 325
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 313
    .end local v1    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v2

    .line 314
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 325
    .end local v2    # "e":Landroid/os/RemoteException;
    .restart local v1    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 327
    .end local v1    # "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public static isPublicIntent(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 7
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v3

    .line 186
    :cond_1
    invoke-static {p0}, Lcom/miui/server/XSpaceManagerService;->getAimPkg(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "aimPkg":Ljava/lang/String;
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 190
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 192
    .local v2, "newIntent":Landroid/content/Intent;
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v5}, Lcom/miui/server/XSpaceManagerServiceCompat;->setBundleDefusable(Z)V

    .line 193
    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-static {v4}, Lcom/miui/server/XSpaceManagerServiceCompat;->setBundleDefusable(Z)V

    move v3, v4

    .line 201
    goto :goto_0

    .line 194
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_1
    sget-object v5, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    const-string v6, "Private intent"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    invoke-static {v4}, Lcom/miui/server/XSpaceManagerServiceCompat;->setBundleDefusable(Z)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    invoke-static {v4}, Lcom/miui/server/XSpaceManagerServiceCompat;->setBundleDefusable(Z)V

    throw v3
.end method

.method private static onPackageCallback(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 359
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update XSpace App: packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-static {p1}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUser(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    sput-boolean v3, Lcom/miui/server/XSpaceManagerService;->sIsXSpaceCreated:Z

    .line 362
    const-string v0, "persist.sys.xspace_created"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    sget-object v1, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    monitor-enter v1

    .line 365
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/miui/server/XSpaceManagerService;->updateXSpaceStatusLocked(Z)V

    .line 366
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    monitor-exit v1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 368
    :cond_1
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    sget-object v1, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    monitor-enter v1

    .line 370
    :try_start_1
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 371
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/server/XSpaceManagerService;->updateXSpaceStatusLocked(Z)V

    .line 372
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private static putCachedCallingRelation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "aimPkg"    # Ljava/lang/String;
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 205
    sget-object v3, Lcom/miui/server/XSpaceManagerService;->sCachedCallingRelationSelfLocked:Ljava/util/HashMap;

    monitor-enter v3

    .line 206
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "@"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 207
    .local v1, "callingRelationKey":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 208
    .local v0, "cachedUserId":I
    sget-object v2, Lcom/miui/server/XSpaceManagerService;->sCachedCallingRelationSelfLocked:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v2, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "putCachedCallingRelationm, callingRelationKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cachedUserId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    monitor-exit v3

    .line 211
    return-void

    .line 210
    .end local v0    # "cachedUserId":I
    .end local v1    # "callingRelationKey":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static shouldResolveAgain(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 6
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 151
    invoke-static {p0}, Lcom/miui/server/XSpaceManagerService;->getAimPkg(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "aimPkg":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 154
    .local v2, "newIntent":Landroid/content/Intent;
    :try_start_0
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.extra.xspace_resolve_intent_again"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    const-string v4, "android.intent.extra.xspace_resolve_intent_again"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    const/4 v3, 0x1

    .line 164
    :cond_0
    :goto_0
    return v3

    .line 159
    :catch_0
    move-exception v1

    .line 161
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/miui/server/XSpaceManagerService;->TAG:Ljava/lang/String;

    const-string v5, "Private intent: "

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static startXSpaceService(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 385
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 386
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.securitycore"

    const-string v3, "com.miui.xspace.service.XSpaceService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 387
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/miui/server/ServiceStarterRunnable;

    invoke-direct {v2, p0, v0}, Lcom/miui/server/ServiceStarterRunnable;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 388
    return-void
.end method

.method private static updateXSpaceStatusLocked(Z)V
    .locals 2
    .param p0, "isXSpaceActive"    # Z

    .prologue
    .line 379
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sXSpaceInstalledPackagesSelfLocked:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget v1, Lcom/miui/server/XSpaceManagerService;->XSPACE_APP_LIST_INIT_NUMBER:I

    if-ne v0, v1, :cond_0

    .line 380
    sget-object v0, Lcom/miui/server/XSpaceManagerService;->sResolver:Landroid/content/ContentResolver;

    const-string v1, "xspace_enabled"

    invoke-static {v0, v1, p0}, Landroid/provider/MiuiSettings$Secure;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 382
    :cond_0
    return-void
.end method
