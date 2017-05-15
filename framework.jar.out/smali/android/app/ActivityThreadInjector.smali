.class public Landroid/app/ActivityThreadInjector;
.super Ljava/lang/Object;
.source "ActivityThreadInjector.java"


# static fields
.field private static final AM_LIFECYCLE_SAMPLE_THRESHOLD:I

.field private static final LOG_AM_LIFECYCLE_SAMPLE:I = 0x7594

.field private static final mEnableLifecycleSample:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "persist.sys.handler.threshold"

    const/16 v1, 0xbb8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/app/ActivityThreadInjector;->AM_LIFECYCLE_SAMPLE_THRESHOLD:I

    sget v0, Landroid/app/ActivityThreadInjector;->AM_LIFECYCLE_SAMPLE_THRESHOLD:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/app/ActivityThreadInjector;->mEnableLifecycleSample:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkHandleMessageTime(JI)V
    .locals 6
    .param p0, "startTime"    # J
    .param p2, "MsgWhat"    # I

    .prologue
    sget-boolean v2, Landroid/app/ActivityThreadInjector;->mEnableLifecycleSample:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v0, v2, p0

    .local v0, "durationMs":J
    sget v2, Landroid/app/ActivityThreadInjector;->AM_LIFECYCLE_SAMPLE_THRESHOLD:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const/16 v2, 0x7594

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0
.end method

.method static checkHandleMessageTime(JLandroid/os/Message;)V
    .locals 2
    .param p0, "startTime"    # J
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    if-eqz p2, :cond_0

    iget v0, p2, Landroid/os/Message;->what:I

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/app/ActivityThreadInjector;->checkHandleMessageTime(JI)V

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static clearCachedDrawables()V
    .locals 4

    .prologue
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-le v2, v3, :cond_1

    const-string v2, "android.content.res.ResourcesImpl"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lmiui/util/ReflectionUtils;->tryFindClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .local v1, "clasz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "sCachedDrawables"

    invoke-static {v1, v2}, Lmiui/util/ReflectionUtils;->tryFindField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "cachedDrawables":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    const-string v2, "ActivityThreadInjector"

    const-string v3, "clearCachedDrawables."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "clasz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    return-void

    .end local v0    # "cachedDrawables":Ljava/lang/reflect/Field;
    :cond_1
    const-class v2, Landroid/content/res/Resources;

    const-string v3, "sCachedDrawables"

    invoke-static {v2, v3}, Lmiui/util/ReflectionUtils;->tryFindField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .restart local v0    # "cachedDrawables":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    const-string v2, "ActivityThreadInjector"

    const-string v3, "clearCachedDrawables."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static enableAppLogSwitch()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-static {v0}, Lmiui/log/SystemLogSwitchesConfigManager;->enableLogSwitch(Z)V

    return-void
.end method

.method public static enableStrictMode()V
    .locals 5

    .prologue
    sget-boolean v3, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v3, :cond_0

    .local v0, "isPenaltyDeath":Z
    .local v1, "threadPolicy":Landroid/os/StrictMode$ThreadPolicy$Builder;
    .local v2, "vmPolicy":Landroid/os/StrictMode$VmPolicy$Builder;
    :goto_0
    return-void

    .end local v0    # "isPenaltyDeath":Z
    .end local v1    # "threadPolicy":Landroid/os/StrictMode$ThreadPolicy$Builder;
    .end local v2    # "vmPolicy":Landroid/os/StrictMode$VmPolicy$Builder;
    :cond_0
    const-string v3, "persist.sys.strictmode.visual"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .restart local v0    # "isPenaltyDeath":Z
    new-instance v3, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    .restart local v1    # "threadPolicy":Landroid/os/StrictMode$ThreadPolicy$Builder;
    new-instance v3, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v3}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedClosableObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedRegistrationObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->detectLeakedSqlLiteObjects()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v2

    .restart local v2    # "vmPolicy":Landroid/os/StrictMode$VmPolicy$Builder;
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;

    :cond_1
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v3

    invoke-static {v3}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v2}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v3

    invoke-static {v3}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    goto :goto_0
.end method

.method static preloadSubActivity(Landroid/app/ActivityThread;ILandroid/app/LoadedApk;)V
    .locals 4
    .param p0, "thiz"    # Landroid/app/ActivityThread;
    .param p1, "theme"    # I
    .param p2, "info"    # Landroid/app/LoadedApk;

    .prologue
    if-lez p1, :cond_0

    :try_start_0
    invoke-static {p0, p2}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v0

    .local v0, "appContext":Landroid/content/Context;
    invoke-virtual {v0, p1}, Landroid/content/Context;->setTheme(I)V

    move-object v1, v0

    .local v1, "context":Landroid/content/Context;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Landroid/app/ActivityThreadInjector$1;

    invoke-direct {v3, v1}, Landroid/app/ActivityThreadInjector$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "appContext":Landroid/content/Context;
    .end local v1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static raiseThreadPriority()V
    .locals 0

    .prologue
    return-void
.end method

.method static updatePackageInfoForLogSwitch(Landroid/app/ActivityThread$AppBindData;)V
    .locals 1
    .param p0, "data"    # Landroid/app/ActivityThread$AppBindData;

    .prologue
    iget-object v0, p0, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/SystemLogSwitchesConfigManager;->updatePackageName(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    invoke-static {v0}, Lmiui/log/SystemLogSwitchesConfigManager;->updateProgramName(Ljava/lang/String;)V

    return-void
.end method
