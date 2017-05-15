.class public Lmiui/security/SecurityManager;
.super Ljava/lang/Object;
.source "SecurityManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final FLAG_AC_ENABLED:I = 0x1

.field public static final FLAG_AC_PACKAGE_CANCELED:I = 0x8

.field public static final FLAG_AC_PACKAGE_ENABLED:I = 0x2

.field public static final FLAG_AC_PACKAGE_PASSED:I = 0x4

.field public static final MODE_EACH:I = 0x0

.field public static final MODE_LOCK_SCREEN:I = 0x1

.field public static final MODE_TIME_OUT:I = 0x2

.field private static final PACKAGE_SECURITYCENTER:Ljava/lang/String; = "com.miui.securitycenter"

.field public static final SKIP_INTERCEPT:Ljava/lang/String; = "skip_interception"

.field public static final SKIP_INTERCEPT_ACTIVITY:Ljava/lang/String; = "com.miui.gallery.activity.ExternalPhotoPageActivity"

.field public static final SKIP_INTERCEPT_PACKAGE:Ljava/lang/String; = "com.miui.gallery"

.field private static final START_ACTIVITY_CALLEE_PKGNAME:Ljava/lang/String; = "CalleePkgName"

.field private static final START_ACTIVITY_CALLER_PKGNAME:Ljava/lang/String; = "CallerPkgName"

.field private static final START_ACTIVITY_USERID:Ljava/lang/String; = "UserId"

.field private static final TAG:Ljava/lang/String; = "SecurityManager"

.field private static sActivityFinishMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final mService:Lmiui/security/ISecurityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const-class v3, Lmiui/security/SecurityManager;

    invoke-virtual {v3}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    sput-boolean v1, Lmiui/security/SecurityManager;->$assertionsDisabled:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-le v1, v2, :cond_0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_2

    const-class v1, Landroid/app/Activity;

    const-string v2, "finish"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmiui/security/SecurityManager;->sActivityFinishMethod:Ljava/lang/reflect/Method;

    :goto_1
    sget-object v1, Lmiui/security/SecurityManager;->sActivityFinishMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    const-string v1, "sechook"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    :try_start_1
    const-class v1, Landroid/app/Activity;

    const-string v2, "finish"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lmiui/security/SecurityManager;->sActivityFinishMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "SecurityManager"

    const-string v2, " SecurityManager static init error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public constructor <init>(Lmiui/security/ISecurityManager;)V
    .locals 0
    .param p1, "service"    # Lmiui/security/ISecurityManager;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    return-void
.end method

.method private activityFinish(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget-object v1, Lmiui/security/SecurityManager;->sActivityFinishMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_2

    sget-object v1, Lmiui/security/SecurityManager;->sActivityFinishMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SecurityManager"

    const-string v2, " FinishMethod.invoke error "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    sget-object v1, Lmiui/security/SecurityManager;->sActivityFinishMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->finishAffinity()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static checkCallingPackage(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "whiteList"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    sget-boolean v11, Lmiui/security/SecurityManager;->$assertionsDisabled:Z

    if-nez v11, :cond_0

    if-nez p1, :cond_0

    new-instance v10, Ljava/lang/AssertionError;

    invoke-direct {v10}, Ljava/lang/AssertionError;-><init>()V

    throw v10

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .local v8, "uid":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .local v7, "pkgs":[Ljava/lang/String;
    if-nez v7, :cond_2

    :cond_1
    :goto_0
    return v10

    :cond_2
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v6, v0, v3

    .local v6, "pkg":Ljava/lang/String;
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v5, :cond_4

    aget-object v9, v1, v2

    .local v9, "validPkg":Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v10, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v9    # "validPkg":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_1
.end method

.method private static checkTime(JLjava/lang/String;)V
    .locals 6
    .param p0, "startTime"    # J
    .param p2, "where"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .local v0, "now":J
    sub-long v2, v0, p0

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const-string v2, "SecurityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MIUILOG-checkTime:Slow operation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v0, p0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms so far, now at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static getCheckAccessIntent(Ljava/lang/String;Landroid/content/Intent;IZI)Landroid/content/Intent;
    .locals 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "original"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "fromActivity"    # Z
    .param p4, "userId"    # I

    .prologue
    const/high16 v7, 0x20000000

    const/high16 v6, 0x10000000

    const/high16 v5, 0x2000000

    const-string v0, "android.app.action.CHECK_ACCESS_CONTROL"

    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.miui.securitycenter"

    .local v2, "targetPkg":Ljava/lang/String;
    const-string v3, "is_pad"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "android.app.action.CHECK_ACCESS_CONTROL_PAD"

    const-string v2, "com.android.settings"

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "result":Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v1, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x800000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/2addr v3, v5

    if-eqz v3, :cond_1

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_1
    const/high16 v3, 0x1000000

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p3, :cond_5

    if-ltz p2, :cond_2

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/2addr v3, v6

    if-nez v3, :cond_3

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_3
    :goto_0
    const-string v3, "android.intent.extra.INTENT"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_1
    const/16 v3, 0x3e7

    if-ne p4, v3, :cond_4

    const-string v3, "originating_uid"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    return-object v1

    :cond_5
    invoke-virtual {p1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x8000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_6
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public static getUserHandle(I)I
    .locals 1
    .param p0, "original"    # I

    .prologue
    invoke-static {p0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .end local p0    # "original":I
    :cond_0
    return p0
.end method

.method private static native hook()V
.end method

.method public static init()V
    .locals 0

    .prologue
    invoke-static {}, Lmiui/security/SecurityManager;->hook()V

    return-void
.end method


# virtual methods
.method public activityResume(Landroid/content/Intent;)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->activityResume(Landroid/content/Intent;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addAccessControlPass(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->addAccessControlPass(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addAccessControlPassForUser(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->addAccessControlPassForUser(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "addAccessControlPassForUser exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkAccessControl(Landroid/app/Activity;I)V
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userId"    # I

    .prologue
    const/4 v9, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .local v3, "packageName":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .local v5, "targetIntent":Landroid/content/Intent;
    new-instance v6, Landroid/content/ComponentName;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v6, "com.miui.gallery"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "com.miui.gallery.activity.ExternalPhotoPageActivity"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .local v4, "sourceIntent":Landroid/content/Intent;
    if-eqz v4, :cond_0

    const-string v6, "skip_interception"

    const-string v7, "skip_interception"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "sourceIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-virtual {p0, v5}, Lmiui/security/SecurityManager;->activityResume(Landroid/content/Intent;)I

    move-result v1

    .local v1, "flag":I
    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_1

    and-int/lit8 v6, v1, 0x2

    if-nez v6, :cond_2

    .end local v1    # "flag":I
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "targetIntent":Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v5    # "targetIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Throwable;
    const-string v6, "SecurityManager"

    const-string v7, "checkAccessControl sourceIntent"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "flag":I
    :cond_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    invoke-virtual {p1, v9}, Landroid/app/Activity;->setResult(I)V

    invoke-direct {p0, p1}, Lmiui/security/SecurityManager;->activityFinish(Landroid/app/Activity;)V

    goto :goto_1

    :cond_3
    and-int/lit8 v6, v1, 0x4

    if-nez v6, :cond_1

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-static {v3, v6, v7, v8, p2}, Lmiui/security/SecurityManager;->getCheckAccessIntent(Ljava/lang/String;Landroid/content/Intent;IZI)Landroid/content/Intent;

    move-result-object v2

    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "android.app.extra.PROTECTED_APP_TOKEN"

    invoke-virtual {p1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    :try_start_1
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v6, "SecurityManager"

    const-string v7, "checkAccessControl"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public checkAccessControlPass(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmiui/security/SecurityManager;->checkAccessControlPass(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public checkAccessControlPass(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .local v0, "retval":Z
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->checkAccessControlPass(Ljava/lang/String;Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public checkAccessControlPassAsUser(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lmiui/security/SecurityManager;->checkAccessControlPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public checkAccessControlPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "retval":Z
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/security/ISecurityManager;->checkAccessControlPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public checkAccessControlPattern(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lmiui/security/ISecurityManager;->checkAccessControlPattern(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Z
    .locals 4
    .param p1, "callerPkgName"    # Ljava/lang/String;
    .param p2, "calleePkgName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "userId"    # I

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .local v2, "startTime":J
    const/4 v0, 0x0

    .local v0, "retval":Z
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2, p3, p4}, Lmiui/security/ISecurityManager;->checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const-string v1, "checkAllowStartActivity"

    invoke-static {v2, v3, v1}, Lmiui/security/SecurityManager;->checkTime(JLjava/lang/String;)V

    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public checkSmsBlocked(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->checkSmsBlocked(Landroid/content/Intent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public finishAccessControl(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lmiui/security/ISecurityManager;->finishAccessControl(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getAppPermissionControlOpen(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->getAppPermissionControlOpen(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getApplicationAccessControlEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "retval":Z
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->getApplicationAccessControlEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "retval":Z
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->getApplicationAccessControlEnabledAsUser(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getApplicationChildrenControlEnabled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "retval":Z
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->getApplicationChildrenControlEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getCheckAccessControlIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;I)Landroid/content/Intent;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "userId"    # I

    .prologue
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    .local v4, "isFromActivity":Z
    :goto_0
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lmiui/security/SecurityManager;->getCheckAccessControlIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZII)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .end local v4    # "isFromActivity":Z
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getCheckAccessControlIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZII)Landroid/content/Intent;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "fromActivity"    # Z
    .param p5, "requestCode"    # I
    .param p6, "userId"    # I

    .prologue
    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p6}, Lmiui/security/SecurityManager;->isAccessControlActived(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/4 v0, 0x0

    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p2, v3, p6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_0

    if-eqz p3, :cond_2

    if-eqz v0, :cond_2

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-eq v2, v3, :cond_0

    :cond_2
    invoke-virtual {p0, p2, p3, p6}, Lmiui/security/SecurityManager;->checkAccessControlPassAsUser(Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2, p3, p5, p4, p6}, Lmiui/security/SecurityManager;->getCheckAccessIntent(Ljava/lang/String;Landroid/content/Intent;IZI)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getCheckIntent(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZIZII)Landroid/content/Intent;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callerAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "fromActivity"    # Z
    .param p7, "requestCode"    # I
    .param p8, "calleeAlreadyStarted"    # Z
    .param p9, "userId"    # I
    .param p10, "callingUid"    # I

    .prologue
    invoke-virtual/range {p0 .. p10}, Lmiui/security/SecurityManager;->getCheckStartActivityIntent(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZIZII)Landroid/content/Intent;

    move-result-object v7

    .local v7, "ret":Landroid/content/Intent;
    if-nez v7, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p5

    move v4, p6

    move v5, p7

    move/from16 v6, p9

    invoke-virtual/range {v0 .. v6}, Lmiui/security/SecurityManager;->getCheckAccessControlIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;ZII)Landroid/content/Intent;

    move-result-object v7

    :cond_0
    return-object v7
.end method

.method public getCheckStartActivityIntent(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;ZIZII)Landroid/content/Intent;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callerAppInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "fromActivity"    # Z
    .param p7, "requestCode"    # I
    .param p8, "calleeAlreadyStarted"    # Z
    .param p9, "userId"    # I
    .param p10, "callingUid"    # I

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .local v8, "startTime":J
    if-eqz p5, :cond_0

    if-nez p8, :cond_0

    sget-boolean v7, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-nez v7, :cond_0

    sget-boolean v7, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v7, :cond_1

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_1
    if-nez p2, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static/range {p10 .. p10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .local v4, "callingUserId":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    const/4 v10, 0x0

    invoke-interface {v7, p3, v10, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p2

    .end local v4    # "callingUserId":I
    :goto_1
    if-nez p2, :cond_3

    const/4 v6, 0x0

    goto :goto_0

    :catch_0
    move-exception v5

    .local v5, "e":Ljava/lang/Exception;
    const-string v7, "SecurityManager"

    const-string v10, "getCheckStartActivityIntent"

    invoke-static {v7, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v5    # "e":Ljava/lang/Exception;
    :cond_3
    iget v7, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x81

    if-nez v7, :cond_4

    iget v7, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v10, 0x2710

    if-ge v7, v10, :cond_5

    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    :cond_5
    const/4 v3, 0x0

    .local v3, "calleeAppInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    const/4 v10, 0x0

    move/from16 v0, p9

    invoke-interface {v7, p4, v10, v0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :goto_2
    if-nez v3, :cond_6

    const/4 v6, 0x0

    goto :goto_0

    :catch_1
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    const-string v7, "SecurityManager"

    const-string v10, "getCheckStartActivityIntent"

    invoke-static {v7, v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v5    # "e":Ljava/lang/Exception;
    :cond_6
    iget v7, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x81

    if-nez v7, :cond_7

    iget v7, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v10, 0x2710

    if-ge v7, v10, :cond_8

    :cond_7
    const/4 v6, 0x0

    goto :goto_0

    :cond_8
    iget-object v7, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    iget-object v7, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p5

    move/from16 v1, p9

    invoke-virtual {p0, v7, p4, v0, v1}, Lmiui/security/SecurityManager;->checkAllowStartActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_9
    const/4 v6, 0x0

    goto :goto_0

    :cond_a
    const-string v2, "android.app.action.CHECK_ALLOW_START_ACTIVITY"

    .local v2, "action":Ljava/lang/String;
    const-string v7, "is_pad"

    const/4 v10, 0x0

    invoke-static {v7, v10}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v6, 0x0

    goto :goto_0

    :cond_b
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v6, "result":Landroid/content/Intent;
    const-string v7, "CallerPkgName"

    iget-object v10, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "CalleePkgName"

    iget-object v10, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "UserId"

    move/from16 v0, p9

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v7, 0x800000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v7, "com.miui.securitycenter"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p5, :cond_e

    invoke-virtual/range {p5 .. p5}, Landroid/content/Intent;->getFlags()I

    move-result v7

    const/high16 v10, 0x2000000

    and-int/2addr v7, v10

    if-eqz v7, :cond_c

    const/high16 v7, 0x2000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_c
    const/high16 v7, 0x1000000

    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p6, :cond_f

    if-ltz p7, :cond_d

    const/high16 v7, 0x2000000

    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_d
    :goto_3
    const-string v7, "android.intent.extra.INTENT"

    move-object/from16 v0, p5

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_e
    const-string v7, "getCheckStartActivityIntent"

    invoke-static {v8, v9, v7}, Lmiui/security/SecurityManager;->checkTime(JLjava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const/high16 v7, 0x10000000

    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_3
.end method

.method public getPackageNameByPid(I)Ljava/lang/String;
    .locals 2
    .param p1, "pid"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->getPackageNameByPid(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSysAppCracked()I
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1}, Lmiui/security/ISecurityManager;->getSysAppCracked()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getWakePathCallListLog()Landroid/content/pm/ParceledListSlice;
    .locals 1

    .prologue
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0}, Lmiui/security/ISecurityManager;->getWakePathCallListLog()Landroid/content/pm/ParceledListSlice;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWakeUpTime(Ljava/lang/String;)J
    .locals 4
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->getWakeUpTime(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public grantInstallPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->grantInstallPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public grantRuntimePermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->grantRuntimePermission(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public haveAccessControlPattern()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lmiui/security/ISecurityManager;->haveAccessControlPattern(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isAccessControlActived(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lmiui/security/SecurityManager;->isAccessControlActived(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public isAccessControlActived(Landroid/content/Context;I)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p2}, Lmiui/security/SecurityManager;->getUserHandle(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_lock_enabled"

    invoke-static {v2, v3, v1, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public killNativePackageProcesses(ILjava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->killNativePackageProcesses(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public needFinishAccessControl(Landroid/os/IBinder;)Z
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1}, Lmiui/security/ISecurityManager;->needFinishAccessControl(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pushWakePathConfirmDialogWhiteList(ILjava/util/List;)V
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->pushWakePathConfirmDialogWhiteList(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SecurityManager"

    const-string v2, "pushWakePathConfirmDialogWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public pushWakePathData(ILandroid/content/pm/ParceledListSlice;I)V
    .locals 1
    .param p1, "wakeType"    # I
    .param p2, "wakePathRuleInfos"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "userId"    # I

    .prologue
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/security/ISecurityManager;->pushWakePathData(ILandroid/content/pm/ParceledListSlice;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public pushWakePathWhiteList(Ljava/util/List;I)V
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "wakePathWhiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2}, Lmiui/security/ISecurityManager;->pushWakePathWhiteList(Ljava/util/List;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public putSystemDataStringFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2}, Lmiui/security/ISecurityManager;->putSystemDataStringFile(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readSystemDataStringFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->readSystemDataStringFile(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerWakePathCallback(Lcom/android/internal/app/IWakePathCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/internal/app/IWakePathCallback;

    .prologue
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->registerWakePathCallback(Lcom/android/internal/app/IWakePathCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeAccessControlPass(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->removeAccessControlPass(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeAccessControlPassAsUser(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->removeAccessControlPassAsUser(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeWakePathData(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->removeWakePathData(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setAccessControlPattern(Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lmiui/security/ISecurityManager;->setAccessControlPattern(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setAppPermissionControlOpen(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->setAppPermissionControlOpen(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setApplicationAccessControlEnabled(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2}, Lmiui/security/ISecurityManager;->setApplicationAccessControlEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setApplicationAccessControlEnabledForUser(Ljava/lang/String;ZI)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2, p3}, Lmiui/security/ISecurityManager;->setApplicationAccessControlEnabledForUser(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "setApplicationAccessControlEnabledForUser exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setApplicationChildrenControlEnabled(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2}, Lmiui/security/ISecurityManager;->setApplicationChildrenControlEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCoreRuntimePermissionEnabled(ZI)V
    .locals 3
    .param p1, "grant"    # Z
    .param p2, "flags"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1, p1, p2}, Lmiui/security/ISecurityManager;->setCoreRuntimePermissionEnabled(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "security manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTrackWakePathCallListLogEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1}, Lmiui/security/ISecurityManager;->setTrackWakePathCallListLogEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setWakeUpTime(Ljava/lang/String;J)V
    .locals 2
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "timeInSeconds"    # J

    .prologue
    :try_start_0
    iget-object v0, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v0, p1, p2, p3}, Lmiui/security/ISecurityManager;->setWakeUpTime(Ljava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startInterceptSmsBySender(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sender"    # Ljava/lang/String;
    .param p3, "count"    # I

    .prologue
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v2, v1, p2, p3}, Lmiui/security/ISecurityManager;->startInterceptSmsBySender(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1    # "pkgName":Ljava/lang/String;
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public stopInterceptSmsBySender()Z
    .locals 2

    .prologue
    :try_start_0
    iget-object v1, p0, Lmiui/security/SecurityManager;->mService:Lmiui/security/ISecurityManager;

    invoke-interface {v1}, Lmiui/security/ISecurityManager;->stopInterceptSmsBySender()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method
