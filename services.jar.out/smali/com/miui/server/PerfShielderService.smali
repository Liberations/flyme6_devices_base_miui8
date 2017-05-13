.class public final Lcom/miui/server/PerfShielderService;
.super Lcom/android/internal/app/IPerfShielder$Stub;
.source "PerfShielderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;
    }
.end annotation


# static fields
.field private static final BIND_DIE_RETRY_TIME:J = 0x2bf20L

.field private static final BIND_FAIL_RETRY_TIME:J = 0xea60L

.field private static final BIND_RETRY_TIME:J = 0x1388L

.field private static final DEBUG:Z = true

.field private static final DELAY_TIME:J = 0x493e0L

.field private static final LAUNCH_TYPE_DEFAULT:I = 0x0

.field private static final LAUNCH_TYPE_FROM_HOME:I = 0x1

.field private static final MIUI_SYS_USER_CLASS:Ljava/lang/String; = "com.miui.daemon.performance.SysoptService"

.field private static final MIUI_SYS_USER_PACKAHE:Ljava/lang/String; = "com.miui.daemon"

.field static final MSG_BIND_MIUI_SYS_USER:I = 0x2

.field static final MSG_REBIND:I = 0x1

.field private static final PACKAGE_START_MAX_TIME:J = 0x2710L

.field private static final PERFORMANCE_CLASS:Ljava/lang/String; = "com.miui.daemon.performance.MiuiPerfService"

.field private static final PERFORMANCE_PACKAGE:Ljava/lang/String; = "com.miui.daemon"

.field private static final PROCESSGROUP_CGROUP_PATH:Ljava/lang/String; = "/acct"

.field private static final PROCESSGROUP_CGROUP_PROCS_FILE:Ljava/lang/String; = "/cgroup.procs"

.field private static final PROCESSGROUP_PID_PREFIX:Ljava/lang/String; = "pid_"

.field private static final PROCESSGROUP_UID_PREFIX:Ljava/lang/String; = "uid_"

.field public static final SELF_CAUSE_ANR:I = 0x7

.field private static final SELF_CAUSE_NAMES:[Ljava/lang/String;

.field public static final SERVICE_NAME:Ljava/lang/String; = "perfshielder"

.field public static final TAG:Ljava/lang/String; = "PerfShielderService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentLaunchPackage:Ljava/lang/String;

.field mDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field final mHandler:Landroid/os/Handler;

.field private mLaunchTimes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LaunchTimeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mMiuiSysUserConnection:Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

.field mMiuiSysUserDeathHandler:Landroid/os/IBinder$DeathRecipient;

.field private mPackageStartTime:J

.field protected mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

.field private final mPerformanceConnection:Landroid/content/ServiceConnection;

.field private mReflectGetPssMethod:Ljava/lang/reflect/Method;

.field private mWMServiceConnection:Lcom/miui/server/WMServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 93
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Slow main thread"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Slow handle input"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Slow handle animation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Slow handle traversal"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Slow bitmap uploads"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Slow issue draw commands"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Slow swap buffers"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ANR"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/server/PerfShielderService;->SELF_CAUSE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/internal/app/IPerfShielder$Stub;-><init>()V

    .line 73
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/miui/server/PerfShielderService;->mPackageStartTime:J

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    .line 91
    new-instance v0, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;-><init>(Lcom/miui/server/PerfShielderService;Lcom/miui/server/PerfShielderService$1;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mMiuiSysUserConnection:Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

    .line 414
    new-instance v0, Lcom/miui/server/PerfShielderService$2;

    invoke-direct {v0, p0}, Lcom/miui/server/PerfShielderService$2;-><init>(Lcom/miui/server/PerfShielderService;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerformanceConnection:Landroid/content/ServiceConnection;

    .line 466
    new-instance v0, Lcom/miui/server/PerfShielderService$3;

    invoke-direct {v0, p0}, Lcom/miui/server/PerfShielderService$3;-><init>(Lcom/miui/server/PerfShielderService;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mMiuiSysUserDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 580
    new-instance v0, Lcom/miui/server/PerfShielderService$4;

    invoke-direct {v0, p0}, Lcom/miui/server/PerfShielderService$4;-><init>(Lcom/miui/server/PerfShielderService;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mDeathHandler:Landroid/os/IBinder$DeathRecipient;

    .line 588
    new-instance v0, Lcom/miui/server/PerfShielderService$5;

    invoke-direct {v0, p0}, Lcom/miui/server/PerfShielderService$5;-><init>(Lcom/miui/server/PerfShielderService;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mHandler:Landroid/os/Handler;

    .line 107
    iput-object p1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    .line 108
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/server/PerfShielderService$1;

    invoke-direct {v1, p0}, Lcom/miui/server/PerfShielderService$1;-><init>(Lcom/miui/server/PerfShielderService;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 114
    const-wide/16 v0, 0x1388

    invoke-direct {p0, v0, v1}, Lcom/miui/server/PerfShielderService;->sendBindMiuiSysUserMsg(J)V

    .line 115
    invoke-direct {p0}, Lcom/miui/server/PerfShielderService;->reflectDebugGetPssMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mReflectGetPssMethod:Ljava/lang/reflect/Method;

    .line 116
    new-instance v0, Lcom/miui/server/WMServiceConnection;

    invoke-direct {v0, p1}, Lcom/miui/server/WMServiceConnection;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/server/PerfShielderService;->mWMServiceConnection:Lcom/miui/server/WMServiceConnection;

    .line 117
    return-void
.end method

.method static synthetic access$100(Lcom/miui/server/PerfShielderService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/PerfShielderService;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/miui/server/PerfShielderService;->bindService()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/server/PerfShielderService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/PerfShielderService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/server/PerfShielderService;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/PerfShielderService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mPerformanceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/server/PerfShielderService;)Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/PerfShielderService;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mMiuiSysUserConnection:Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/server/PerfShielderService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/PerfShielderService;
    .param p1, "x1"    # J

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/miui/server/PerfShielderService;->sendBindMiuiSysUserMsg(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/server/PerfShielderService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/PerfShielderService;
    .param p1, "x1"    # J

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/miui/server/PerfShielderService;->sendRebindServiceMsg(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/server/PerfShielderService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/PerfShielderService;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/miui/server/PerfShielderService;->bindMiuiSysUser()V

    return-void
.end method

.method private bindMiuiSysUser()V
    .locals 5

    .prologue
    .line 482
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mMiuiSysUserConnection:Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

    # getter for: Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;->isServiceDisconnected:Z
    invoke-static {v1}, Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;->access$600(Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 483
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 484
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.daemon"

    const-string v2, "com.miui.daemon.performance.SysoptService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/server/PerfShielderService;->mMiuiSysUserConnection:Lcom/miui/server/PerfShielderService$MiuiSysUserServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 487
    const-wide/16 v2, 0x1388

    invoke-direct {p0, v2, v3}, Lcom/miui/server/PerfShielderService;->sendBindMiuiSysUserMsg(J)V

    .line 488
    const-string v1, "PerfShielderService"

    const-string v2, "MiuiSysUser: can\'t bind to com.miui.daemon.performance.SysoptService"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 490
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v1, "PerfShielderService"

    const-string v2, "MiuiSysUser service started"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private bindService()V
    .locals 5

    .prologue
    .line 401
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-nez v1, :cond_0

    .line 402
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 403
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.miui.daemon"

    const-string v2, "com.miui.daemon.performance.MiuiPerfService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/server/PerfShielderService;->mPerformanceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 406
    const-string v1, "PerfShielderService"

    const-string v2, "Miui performance: can\'t bind to com.miui.daemon.performance.MiuiPerfService"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const-wide/32 v2, 0xea60

    invoke-direct {p0, v2, v3}, Lcom/miui/server/PerfShielderService;->sendRebindServiceMsg(J)V

    .line 412
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 409
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v1, "PerfShielderService"

    const-string v2, "Miui performance service started"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkSystemPermission(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 574
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 575
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_0

    .line 576
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caller "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match caller of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " !!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 578
    :cond_0
    return-void
.end method

.method private convertUidPidToPath(II)Ljava/lang/String;
    .locals 3
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/acct"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "uid_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pid_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/cgroup.procs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getProceeSwapAndParentPid(I)[J
    .locals 8
    .param p1, "pid"    # I

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 261
    new-array v0, v5, [Ljava/lang/String;

    const-string v2, "VmSwap:"

    aput-object v2, v0, v3

    const-string v2, "PPid:"

    aput-object v2, v0, v4

    .line 262
    .local v0, "procStatusLabels":[Ljava/lang/String;
    new-array v1, v5, [J

    .line 263
    .local v1, "procStatusValues":[J
    aput-wide v6, v1, v3

    .line 264
    aput-wide v6, v1, v4

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 266
    return-object v1
.end method

.method private getProcessPss(I)J
    .locals 8
    .param p1, "pid"    # I

    .prologue
    .line 243
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mReflectGetPssMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 244
    const-wide/16 v2, 0x0

    .line 257
    :goto_0
    return-wide v2

    .line 246
    :cond_0
    const-wide/16 v2, 0x0

    .line 248
    .local v2, "pss":J
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v1, v4, :cond_1

    .line 249
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mReflectGetPssMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mReflectGetPssMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v2

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 255
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private needToLimit(ILjava/lang/String;)Z
    .locals 8
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;

    .prologue
    .line 132
    const/4 v2, 0x0

    .line 133
    .local v2, "limit":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/proc/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/cmdline"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "fileName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 136
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 138
    .local v3, "line":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 139
    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    if-eqz v6, :cond_0

    .line 140
    const/4 v2, 0x1

    .line 147
    :cond_0
    if-eqz v5, :cond_1

    .line 148
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    move-object v4, v5

    .line 154
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :goto_0
    return v2

    .line 150
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v4, v5

    .line 153
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 143
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "line":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 147
    if-eqz v4, :cond_2

    .line 148
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 150
    :catch_2
    move-exception v0

    .line 151
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 146
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 147
    :goto_2
    if-eqz v4, :cond_3

    .line 148
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 152
    :cond_3
    :goto_3
    throw v6

    .line 150
    :catch_3
    move-exception v0

    .line 151
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 146
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 143
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private reflectDebugGetPssMethod()Ljava/lang/reflect/Method;
    .locals 7

    .prologue
    .line 228
    const/4 v1, 0x0

    .line 230
    .local v1, "getPss":Ljava/lang/reflect/Method;
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 231
    const-class v2, Landroid/os/Debug;

    const-string v3, "getPss"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, [J

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, [J

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 239
    :goto_0
    return-object v1

    .line 233
    :cond_0
    const-class v2, Landroid/os/Debug;

    const-string v3, "getPss"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, [J

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 237
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private reportActivityLaunchRecords()V
    .locals 8

    .prologue
    .line 332
    :try_start_0
    iget-object v5, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 333
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v1, "bundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 335
    iget-object v5, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/LaunchTimeRecord;

    .line 336
    .local v4, "record":Lcom/android/internal/app/LaunchTimeRecord;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 337
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "PackageName"

    invoke-virtual {v4}, Lcom/android/internal/app/LaunchTimeRecord;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    const-string v5, "Activity"

    invoke-virtual {v4}, Lcom/android/internal/app/LaunchTimeRecord;->getActivity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v5, "LaunchStartTime"

    invoke-virtual {v4}, Lcom/android/internal/app/LaunchTimeRecord;->getLaunchStartTime()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 340
    const-string v5, "LaunchEndTime"

    invoke-virtual {v4}, Lcom/android/internal/app/LaunchTimeRecord;->getLaunchEndTime()J

    move-result-wide v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 341
    const-string v5, "Type"

    invoke-virtual {v4}, Lcom/android/internal/app/LaunchTimeRecord;->getType()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 342
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 344
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v4    # "record":Lcom/android/internal/app/LaunchTimeRecord;
    :cond_0
    iget-object v5, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    invoke-interface {v5, v1}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->reportActivityLaunchRecords(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .end local v1    # "bundles":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    .end local v3    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 346
    :catch_0
    move-exception v2

    .line 347
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private sendBindMiuiSysUserMsg(J)V
    .locals 3
    .param p1, "delayedTime"    # J

    .prologue
    .line 477
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 478
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 479
    return-void
.end method

.method private sendRebindServiceMsg(J)V
    .locals 3
    .param p1, "delayedTime"    # J

    .prologue
    const/4 v2, 0x1

    .line 395
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 396
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 397
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 398
    return-void
.end method


# virtual methods
.method public addActivityLaunchTime(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "launchStartTime"    # J
    .param p5, "launchEndTime"    # J
    .param p7, "fromHome"    # Z

    .prologue
    .line 304
    if-nez p1, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    const/4 v0, 0x0

    .line 308
    .local v0, "type":I
    new-instance v1, Lcom/android/internal/app/LaunchTimeRecord;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/LaunchTimeRecord;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 309
    .local v1, "record":Lcom/android/internal/app/LaunchTimeRecord;
    if-eqz p7, :cond_2

    .line 310
    const/4 v0, 0x1

    .line 311
    iput-object p1, p0, Lcom/miui/server/PerfShielderService;->mCurrentLaunchPackage:Ljava/lang/String;

    .line 312
    iput-wide p3, p0, Lcom/miui/server/PerfShielderService;->mPackageStartTime:J

    .line 313
    invoke-direct {p0}, Lcom/miui/server/PerfShielderService;->reportActivityLaunchRecords()V

    .line 314
    iget-object v2, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 324
    :goto_1
    iget-wide v2, p0, Lcom/miui/server/PerfShielderService;->mPackageStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 325
    invoke-virtual {v1, v0}, Lcom/android/internal/app/LaunchTimeRecord;->setType(I)V

    .line 326
    iget-object v2, p0, Lcom/miui/server/PerfShielderService;->mLaunchTimes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 315
    :cond_2
    iget-object v2, p0, Lcom/miui/server/PerfShielderService;->mCurrentLaunchPackage:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 316
    iget-wide v2, p0, Lcom/miui/server/PerfShielderService;->mPackageStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    iget-wide v2, p0, Lcom/miui/server/PerfShielderService;->mPackageStartTime:J

    sub-long v2, p5, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 317
    const/4 v0, 0x1

    goto :goto_1

    .line 319
    :cond_3
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/miui/server/PerfShielderService;->mPackageStartTime:J

    goto :goto_1

    .line 322
    :cond_4
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/miui/server/PerfShielderService;->mPackageStartTime:J

    goto :goto_1
.end method

.method public addTimeConsumingIntent([Ljava/lang/String;)V
    .locals 1
    .param p1, "actions"    # [Ljava/lang/String;

    .prologue
    .line 551
    const-string v0, "addTimeConsumingIntent"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 552
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    invoke-static {p1}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->addTimeConsumingIntent([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearTimeConsumingIntent()V
    .locals 1

    .prologue
    .line 569
    const-string v0, "clearTimeConsumingIntent"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 570
    invoke-static {}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->clearTimeConsumingIntent()V

    .line 571
    return-void
.end method

.method public closeCheckPriority()V
    .locals 1

    .prologue
    .line 538
    const-string v0, "closeCheckPriority"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 539
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->setEnable(Z)V

    .line 540
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->closeCheckPriority()V

    .line 541
    return-void
.end method

.method public deletePackageInfo(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 613
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/hybrid/hook/PermissionChecker;->check(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 614
    const-string v1, "PkgInfoHook"

    const-string v2, "Check permission failed when delete PackageInfo."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/miui/hybrid/hook/PkgInfoHook;->getInstance()Lcom/miui/hybrid/hook/PkgInfoHook;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/hybrid/hook/PkgInfoHook;->delete(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public deleteRedirectRule(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "destPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 634
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/hybrid/hook/PermissionChecker;->check(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 635
    const-string v1, "IntentHook"

    const-string v2, "Check permission failed when delete RedirectRule."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/miui/hybrid/hook/IntentHook;->getInstance()Lcom/miui/hybrid/hook/IntentHook;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/miui/hybrid/hook/IntentHook;->delete(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 367
    const/4 v2, 0x0

    .line 368
    .local v2, "opti":I
    :try_start_0
    array-length v3, p3

    if-ge v2, v3, :cond_0

    .line 369
    aget-object v1, p3, v2

    .line 370
    .local v1, "opt":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-eq v3, v4, :cond_2

    .line 386
    .end local v1    # "opt":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-eqz v3, :cond_1

    .line 387
    iget-object v3, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    invoke-interface {v3, p3}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->dump([Ljava/lang/String;)V

    .line 392
    :cond_1
    :goto_0
    return-void

    .line 373
    .restart local v1    # "opt":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 374
    const-string v3, "-h"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 375
    const-string v3, "PerfShielder dump options:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    const-string v3, "  [-h] ..."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    const-string v3, "  cmd may be one of:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 378
    const-string v3, "    launchtime [PACKAGE_NAME]: package launch time details."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 379
    const-string v3, "    janktracker [PACKAGE_NAME]: top jank record details."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 389
    .end local v1    # "opt":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 382
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "opt":Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; use -h for help"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getAllRunningProcessMemInfos()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getRunningProcessInfos()Ljava/util/List;

    move-result-object v3

    .line 194
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-nez v3, :cond_0

    .line 195
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .restart local v3    # "result":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 198
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v5, "pid"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 199
    .local v2, "pid":I
    const-string v5, "adj"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, -0x11

    if-gt v5, v6, :cond_2

    const-string v5, "zygote"

    const-string v6, "processName"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "zygote64"

    const-string v6, "processName"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 201
    :cond_2
    invoke-direct {p0, v2}, Lcom/miui/server/PerfShielderService;->getProceeSwapAndParentPid(I)[J

    move-result-object v4

    .line 202
    .local v4, "swapAndPPid":[J
    const-string v5, "swap"

    const/4 v6, 0x0

    aget-wide v6, v4, v6

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 203
    const-string v5, "ppid"

    const/4 v6, 0x1

    aget-wide v6, v4, v6

    long-to-int v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 206
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "pid":I
    .end local v4    # "swapAndPPid":[J
    :cond_3
    return-object v3
.end method

.method public getMemoryTrimLevel()I
    .locals 1

    .prologue
    .line 189
    invoke-static {}, Lcom/android/server/am/ExtraActivityManagerService;->getMemoryTrimLevel()I

    move-result v0

    return v0
.end method

.method public getPackageNameByPid(I)Ljava/lang/String;
    .locals 1
    .param p1, "pid"    # I

    .prologue
    .line 503
    const-string v0, "getPackageNameByPid"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 504
    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public insertPackageInfo(Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .param p1, "pInfo"    # Landroid/content/pm/PackageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 604
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/hybrid/hook/PermissionChecker;->check(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    const-string v0, "PkgInfoHook"

    const-string v1, "Check permission failed when insert PackageInfo."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/4 v0, 0x0

    .line 608
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/miui/hybrid/hook/PkgInfoHook;->getInstance()Lcom/miui/hybrid/hook/PkgInfoHook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/hybrid/hook/PkgInfoHook;->insert(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    goto :goto_0
.end method

.method public insertRedirectRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "callingPkg"    # Ljava/lang/String;
    .param p2, "destPkg"    # Ljava/lang/String;
    .param p3, "redirectPkgname"    # Ljava/lang/String;
    .param p4, "clsNameMap"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 623
    iget-object v0, p0, Lcom/miui/server/PerfShielderService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/hybrid/hook/PermissionChecker;->check(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 624
    const-string v0, "IntentHook"

    const-string v1, "Check permission failed when insert RedirectRule."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/4 v0, 0x0

    .line 628
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/miui/hybrid/hook/IntentHook;->getInstance()Lcom/miui/hybrid/hook/IntentHook;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/hybrid/hook/IntentHook;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public killUnusedApp(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 497
    const-string v0, "killUnusedApp"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 498
    invoke-static {p1, p2}, Lcom/android/server/am/ExtraActivityManagerService;->killUnusedApp(II)V

    .line 499
    return-void
.end method

.method public markPerceptibleJank(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    invoke-interface {v1, p1}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->markPerceptibleJank(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public removeServicePriority(Lcom/android/internal/app/MiuiServicePriority;Z)V
    .locals 1
    .param p1, "servicePriority"    # Lcom/android/internal/app/MiuiServicePriority;
    .param p2, "inBlacklist"    # Z

    .prologue
    .line 529
    const-string v0, "removeServicePriority"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 530
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/am/ExtraActivityManagerService;->removeServicePriority(Lcom/android/internal/app/MiuiServicePriority;Z)V

    goto :goto_0
.end method

.method public removeTimeConsumingIntent([Ljava/lang/String;)V
    .locals 1
    .param p1, "actions"    # [Ljava/lang/String;

    .prologue
    .line 560
    const-string v0, "removeTimeConsumingIntent"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 561
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 564
    :cond_1
    invoke-static {p1}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->removeTimeConsumingIntent([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public reportPerceptibleJank(IILjava/lang/String;JJJI)V
    .locals 10
    .param p1, "callingPid"    # I
    .param p2, "renderThreadTid"    # I
    .param p3, "windowName"    # Ljava/lang/String;
    .param p4, "totalDuration"    # J
    .param p6, "maxFrameDuration"    # J
    .param p8, "endTs"    # J
    .param p10, "appCause"    # I

    .prologue
    .line 271
    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->getPackageNameByPid(I)Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, "callingPkg":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 291
    :goto_0
    return-void

    .line 275
    :cond_0
    if-ltz p10, :cond_1

    sget-object v5, Lcom/miui/server/PerfShielderService;->SELF_CAUSE_NAMES:[Ljava/lang/String;

    array-length v5, v5

    move/from16 v0, p10

    if-ge v0, v5, :cond_1

    sget-object v5, Lcom/miui/server/PerfShielderService;->SELF_CAUSE_NAMES:[Ljava/lang/String;

    aget-object v4, v5, p10

    .line 276
    .local v4, "strAppCause":Ljava/lang/String;
    :goto_1
    const-string v5, "PerfShielderService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/32 v8, 0xf4240

    div-long v8, p4, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/32 v8, 0xf4240

    div-long v8, p6, v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p10

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 281
    .local v2, "bundle":Landroid/os/Bundle;
    const-string v5, "pid"

    invoke-virtual {v2, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 282
    const-string v5, "tid"

    invoke-virtual {v2, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 283
    const-string v5, "pkg"

    invoke-virtual {v2, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v5, "window"

    invoke-virtual {v2, v5, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v5, "totalDuration"

    invoke-virtual {v2, v5, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 286
    const-string v5, "maxFrameDuration"

    move-wide/from16 v0, p6

    invoke-virtual {v2, v5, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 287
    const-string v5, "endTs"

    move-wide/from16 v0, p8

    invoke-virtual {v2, v5, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 288
    const-string v5, "appCause"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v5, "systemCause"

    const-string v6, "Unknown"

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0, v2}, Lcom/miui/server/PerfShielderService;->markPerceptibleJank(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 275
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v4    # "strAppCause":Ljava/lang/String;
    :cond_1
    const-string v4, "Unknown"

    goto/16 :goto_1
.end method

.method public setForkedProcessGroup(IIILjava/lang/String;)V
    .locals 9
    .param p1, "puid"    # I
    .param p2, "ppid"    # I
    .param p3, "group"    # I
    .param p4, "processName"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lcom/miui/server/PerfShielderService;->convertUidPidToPath(II)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "fileName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 161
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 163
    .local v2, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 164
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 165
    .local v5, "subPid":I
    if-eq v5, p2, :cond_0

    .line 168
    if-eqz p4, :cond_1

    invoke-direct {p0, v5, p4}, Lcom/miui/server/PerfShielderService;->needToLimit(ILjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 171
    :cond_1
    invoke-static {v5, p3}, Landroid/os/Process;->setProcessGroup(II)V

    .line 172
    const-string v6, "PerfShielderService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sFPG ppid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " grp:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " forked:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pid:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 175
    .end local v5    # "subPid":I
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 176
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    if-eqz v3, :cond_2

    .line 180
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 186
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void

    .line 179
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_3
    if-eqz v4, :cond_4

    .line 180
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    move-object v3, v4

    .line 184
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 182
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 183
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 185
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 182
    .end local v2    # "line":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 183
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 178
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 179
    :goto_3
    if-eqz v3, :cond_5

    .line 180
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 184
    :cond_5
    :goto_4
    throw v6

    .line 182
    :catch_3
    move-exception v0

    .line 183
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 178
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 175
    .end local v2    # "line":Ljava/lang/String;
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method public setMiuiBroadcastDispatchEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 545
    const-string v0, "setMiuiBroadcastDispatchEnable"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 546
    invoke-static {p1}, Lcom/android/server/am/MiuiBroadcastDispatchHelper;->setMiuiBroadcastDispatchEnable(Z)V

    .line 547
    return-void
.end method

.method public setSchedFgPid(I)V
    .locals 2
    .param p1, "pid"    # I

    .prologue
    .line 352
    if-gtz p1, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    if-eqz v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/miui/server/PerfShielderService;->mPerfService:Lcom/miui/daemon/performance/server/IMiuiPerfService;

    invoke-interface {v1, p1}, Lcom/miui/daemon/performance/server/IMiuiPerfService;->setSchedFgPid(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 360
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setServicePriority(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 509
    .local p1, "servicePrioritys":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    const-string v0, "setServicePriority"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 510
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->setEnable(Z)V

    .line 514
    invoke-static {p1}, Lcom/android/server/am/ExtraActivityManagerService;->setServicePriority(Ljava/util/List;)V

    goto :goto_0
.end method

.method public setServicePriorityWithNoProc(Ljava/util/List;J)V
    .locals 2
    .param p2, "noProcDelayTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 519
    .local p1, "servicePrioritys":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/MiuiServicePriority;>;"
    const-string v0, "setServicePriorityWithNoProc"

    invoke-direct {p0, v0}, Lcom/miui/server/PerfShielderService;->checkSystemPermission(Ljava/lang/String;)V

    .line 520
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->setEnable(Z)V

    .line 524
    invoke-static {p1, p2, p3}, Lcom/android/server/am/ExtraActivityManagerService;->setServicePriority(Ljava/util/List;J)V

    goto :goto_0
.end method

.method public updateProcessPssByPids([I)[J
    .locals 6
    .param p1, "pids"    # [I

    .prologue
    .line 210
    array-length v3, p1

    new-array v2, v3, [J

    .line 211
    .local v2, "result":[J
    array-length v1, p1

    .line 212
    .local v1, "pidSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 213
    aget v3, p1, v0

    invoke-direct {p0, v3}, Lcom/miui/server/PerfShielderService;->getProcessPss(I)J

    move-result-wide v4

    aput-wide v4, v2, v0

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    :cond_0
    return-object v2
.end method

.method public updateProcessSwapByPids([I)[J
    .locals 6
    .param p1, "pids"    # [I

    .prologue
    .line 219
    array-length v3, p1

    new-array v2, v3, [J

    .line 220
    .local v2, "result":[J
    array-length v1, p1

    .line 221
    .local v1, "pidSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 222
    aget v3, p1, v0

    invoke-direct {p0, v3}, Lcom/miui/server/PerfShielderService;->getProceeSwapAndParentPid(I)[J

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v3, v4

    aput-wide v4, v2, v0

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 224
    :cond_0
    return-object v2
.end method
