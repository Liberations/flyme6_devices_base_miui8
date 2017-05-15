.class public Lcom/miui/server/BackupManagerService;
.super Lmiui/app/backup/IBackupManager$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/BackupManagerService$DeathLinker;,
        Lcom/miui/server/BackupManagerService$BackupHandler;,
        Lcom/miui/server/BackupManagerService$FullBackupRestoreObserver;
    }
.end annotation


# static fields
.field private static final COMPONENT_ENABLED_STATE_NONE:I = -0x1

.field private static final FD_NONE:I = -0x1

.field private static final PID_NONE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Backup:BackupManagerService"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mBackupReadSide:Landroid/os/ParcelFileDescriptor;

.field private mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

.field private mCallerFd:I

.field private mContext:Landroid/content/Context;

.field private mCurrentCompletedSize:J

.field private mCurrentTotalSize:J

.field private mCurrentWorkingFeature:I

.field private mCurrentWorkingPkg:Ljava/lang/String;

.field private mDeathLinker:Lcom/miui/server/BackupManagerService$DeathLinker;

.field private mEncryptedPwd:Ljava/lang/String;

.field private mEncryptedPwdInBakFile:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mICaller:Landroid/os/IBinder;

.field private mIsNeedBeKilled:Z

.field private mLastError:I

.field private mOwnerPid:I

.field private mPackageLastEnableState:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPackageStatsObserver:Landroid/content/pm/IPackageStatsObserver;

.field private final mPkgChangingLock:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mProgType:I

.field private mPwd:Ljava/lang/String;

.field private mState:I

.field private mStateObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lmiui/app/backup/IBackupServiceStateObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lmiui/app/backup/IBackupManager$Stub;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/miui/server/BackupManagerService;->mStateObservers:Landroid/os/RemoteCallbackList;

    iput v1, p0, Lcom/miui/server/BackupManagerService;->mOwnerPid:I

    iput-object v3, p0, Lcom/miui/server/BackupManagerService;->mICaller:Landroid/os/IBinder;

    new-instance v0, Lcom/miui/server/BackupManagerService$DeathLinker;

    invoke-direct {v0, p0, v3}, Lcom/miui/server/BackupManagerService$DeathLinker;-><init>(Lcom/miui/server/BackupManagerService;Lcom/miui/server/BackupManagerService$1;)V

    iput-object v0, p0, Lcom/miui/server/BackupManagerService;->mDeathLinker:Lcom/miui/server/BackupManagerService$DeathLinker;

    iput-object v3, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v3, p0, Lcom/miui/server/BackupManagerService;->mBackupReadSide:Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/server/BackupManagerService;->mIsNeedBeKilled:Z

    iput v1, p0, Lcom/miui/server/BackupManagerService;->mCallerFd:I

    iput v2, p0, Lcom/miui/server/BackupManagerService;->mState:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/miui/server/BackupManagerService;->mPkgChangingLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lcom/miui/server/BackupManagerService$1;

    invoke-direct {v0, p0}, Lcom/miui/server/BackupManagerService$1;-><init>(Lcom/miui/server/BackupManagerService;)V

    iput-object v0, p0, Lcom/miui/server/BackupManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    new-instance v0, Lcom/miui/server/BackupManagerService$4;

    invoke-direct {v0, p0}, Lcom/miui/server/BackupManagerService$4;-><init>(Lcom/miui/server/BackupManagerService;)V

    iput-object v0, p0, Lcom/miui/server/BackupManagerService;->mPackageStatsObserver:Landroid/content/pm/IPackageStatsObserver;

    iput-object p1, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/miui/server/BackupManagerService;->mActivityManager:Landroid/app/ActivityManager;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MiuiBackup"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/miui/server/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/miui/server/BackupManagerService$BackupHandler;

    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v3}, Lcom/miui/server/BackupManagerService$BackupHandler;-><init>(Lcom/miui/server/BackupManagerService;Landroid/os/Looper;Lcom/miui/server/BackupManagerService$1;)V

    iput-object v0, p0, Lcom/miui/server/BackupManagerService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/miui/server/BackupManagerService;->getPackageEnableStateFile()Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/server/BackupManagerService;->restoreLastPackageEnableState(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;

    .prologue
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/miui/server/BackupManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/miui/server/BackupManagerService;->mOwnerPid:I

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/server/BackupManagerService;)Lcom/miui/server/BackupManagerService$DeathLinker;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;

    .prologue
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mDeathLinker:Lcom/miui/server/BackupManagerService$DeathLinker;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/server/BackupManagerService;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;

    .prologue
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mICaller:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/miui/server/BackupManagerService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    iput-object p1, p0, Lcom/miui/server/BackupManagerService;->mICaller:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/miui/server/BackupManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/miui/server/BackupManagerService;->broadcastServiceIdle()V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/server/BackupManagerService;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;

    .prologue
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/server/BackupManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;

    .prologue
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/miui/server/BackupManagerService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;
    .param p1, "x1"    # J

    .prologue
    iput-wide p1, p0, Lcom/miui/server/BackupManagerService;->mCurrentTotalSize:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/miui/server/BackupManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;

    .prologue
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mPkgChangingLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/server/BackupManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;

    .prologue
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mPwd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/server/BackupManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;

    .prologue
    invoke-direct {p0}, Lcom/miui/server/BackupManagerService;->releaseBackupWriteStream()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/server/BackupManagerService;)Lmiui/app/backup/IPackageBackupRestoreObserver;
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;

    .prologue
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/server/BackupManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;

    .prologue
    iget v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I

    return v0
.end method

.method static synthetic access$900(Lcom/miui/server/BackupManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/BackupManagerService;

    .prologue
    invoke-direct {p0}, Lcom/miui/server/BackupManagerService;->waitForTheLastWorkingTask()V

    return-void
.end method

.method private appHasOwnBackupAgent(Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "has":Z
    :try_start_0
    iget-object v3, p0, Lcom/miui/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x40

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_0

    const-class v3, Lmiui/app/backup/FullBackupAgent;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private broadcastServiceIdle()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mStateObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mStateObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lmiui/app/backup/IBackupServiceStateObserver;

    invoke-interface {v2}, Lmiui/app/backup/IBackupServiceStateObserver;->onServiceStateIdle()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mStateObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    monitor-exit p0

    return-void

    .end local v0    # "cnt":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private disablePackageAndWait(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    invoke-direct {p0, p1, v4}, Lcom/miui/server/BackupManagerService;->enablePackage(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mPkgChangingLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mPkgChangingLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mPkgChangingLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mPkgChangingLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "Backup:BackupManagerService"

    const-string v3, "mPkgChangingLock wait error"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private enablePackage(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/miui/server/BackupManagerService;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v2, p0, Lcom/miui/server/BackupManagerService;->mPackageLastEnableState:I

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    invoke-direct {p0}, Lcom/miui/server/BackupManagerService;->getPackageEnableStateFile()Ljava/io/File;

    move-result-object v0

    .local v0, "pkgStateFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .end local v0    # "pkgStateFile":Ljava/io/File;
    :cond_1
    iget v1, p0, Lcom/miui/server/BackupManagerService;->mPackageLastEnableState:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/server/BackupManagerService;->mPackageLastEnableState:I

    :cond_2
    invoke-direct {p0}, Lcom/miui/server/BackupManagerService;->getPackageEnableStateFile()Ljava/io/File;

    move-result-object v1

    iget v2, p0, Lcom/miui/server/BackupManagerService;->mPackageLastEnableState:I

    invoke-direct {p0, v1, p1, v2}, Lcom/miui/server/BackupManagerService;->saveCurrentPackageEnableState(Ljava/io/File;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public static getCachedInstallFile()Ljava/io/File;
    .locals 4

    .prologue
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "system"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, "sysDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v2, "restoring_cached_file"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v0, "cachedFile":Ljava/io/File;
    return-object v0
.end method

.method private getPackageEnableStateFile()Ljava/io/File;
    .locals 4

    .prologue
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "system"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v1, "systemDir":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v2, "backup_pkg_enable_state"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v0, "pkgStateFile":Ljava/io/File;
    return-object v0
.end method

.method private isApplicationInstalled(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    iget-object v3, p0, Lcom/miui/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .local v1, "installedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v2, 0x0

    .local v2, "isInstalled":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isApplicationRunning(Ljava/lang/String;)Z
    .locals 9
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .local v5, "isRunning":Z
    if-eqz p1, :cond_2

    iget-object v8, p0, Lcom/miui/server/BackupManagerService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v8}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .local v3, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v6, :cond_0

    aget-object v7, v0, v2

    .local v7, "runningPkg":Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v6    # "len$":I
    .end local v7    # "runningPkg":Ljava/lang/String;
    :cond_2
    return v5
.end method

.method private static readHeaderLine(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x50

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, "buffer":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, "c":I
    if-ltz v1, :cond_0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private releaseBackupWriteStream()V
    .locals 5

    .prologue
    iget-object v3, p0, Lcom/miui/server/BackupManagerService;->mBackupReadSide:Landroid/os/ParcelFileDescriptor;

    if-eqz v3, :cond_1

    const/16 v3, 0x400

    new-array v0, v3, [B

    .local v0, "b":[B
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/miui/server/BackupManagerService;->mBackupReadSide:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .local v2, "fis":Ljava/io/FileInputStream;
    :cond_0
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-gtz v3, :cond_0

    .end local v0    # "b":[B
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :cond_1
    :goto_0
    return-void

    .restart local v0    # "b":[B
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    const-string v3, "Backup:BackupManagerService"

    const-string v4, "realeaseBackupReadStream"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private restoreLastPackageEnableState(Ljava/io/File;)V
    .locals 14
    .param p1, "pkgStateFile"    # Ljava/io/File;

    .prologue
    const/4 v13, 0x1

    invoke-static {}, Lcom/miui/server/BackupManagerService;->getCachedInstallFile()Ljava/io/File;

    move-result-object v3

    .local v3, "cachedFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v6, 0x0

    .local v6, "in":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .local v8, "pkg":Ljava/lang/String;
    const/high16 v10, -0x80000000

    .local v10, "state":I
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v6    # "in":Ljava/io/FileInputStream;
    .local v7, "in":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "buffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    :goto_0
    invoke-virtual {v7}, Ljava/io/FileInputStream;->read()I

    move-result v2

    .local v2, "c":I
    if-ltz v2, :cond_3

    int-to-byte v11, v2

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .end local v0    # "buffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v2    # "c":I
    :catch_0
    move-exception v4

    move-object v6, v7

    .end local v7    # "in":Ljava/io/FileInputStream;
    .local v4, "e":Ljava/io/IOException;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    :goto_1
    :try_start_2
    const-string v11, "Backup:BackupManagerService"

    const-string v12, "IOException"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_1

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    if-eqz v8, :cond_7

    const/high16 v11, -0x80000000

    if-eq v10, v11, :cond_7

    const-string v11, "Backup:BackupManagerService"

    const-string v12, "Unfinished backup package found, restore it\'s enable state"

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput v10, p0, Lcom/miui/server/BackupManagerService;->mPackageLastEnableState:I

    invoke-direct {p0, v8, v13}, Lcom/miui/server/BackupManagerService;->enablePackage(Ljava/lang/String;Z)V

    .end local v6    # "in":Ljava/io/FileInputStream;
    .end local v8    # "pkg":Ljava/lang/String;
    .end local v10    # "state":I
    :cond_2
    :goto_3
    return-void

    .restart local v0    # "buffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .restart local v2    # "c":I
    .restart local v7    # "in":Ljava/io/FileInputStream;
    .restart local v8    # "pkg":Ljava/lang/String;
    .restart local v10    # "state":I
    :cond_3
    :try_start_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v1, v11, [B

    .local v1, "bytes":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v5, v11, :cond_4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Byte;

    invoke-virtual {v11}, Ljava/lang/Byte;->byteValue()B

    move-result v11

    aput-byte v11, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v1}, Ljava/lang/String;-><init>([B)V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .local v9, "ss":[Ljava/lang/String;
    if-eqz v9, :cond_5

    array-length v11, v9

    const/4 v12, 0x2

    if-ne v11, v12, :cond_5

    const/4 v11, 0x0

    aget-object v8, v9, v11
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v11, 0x1

    :try_start_5
    aget-object v11, v9, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v10

    :cond_5
    :goto_5
    if-eqz v7, :cond_8

    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    move-object v6, v7

    .end local v7    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v6    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    const-string v11, "Backup:BackupManagerService"

    const-string v12, "IOEception"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v6, v7

    .end local v7    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0    # "buffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .end local v1    # "bytes":[B
    .end local v2    # "c":I
    .end local v5    # "i":I
    .end local v9    # "ss":[Ljava/lang/String;
    :catch_2
    move-exception v4

    const-string v11, "Backup:BackupManagerService"

    const-string v12, "IOEception"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    :goto_6
    if-eqz v6, :cond_6

    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_6
    :goto_7
    throw v11

    :catch_3
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    const-string v12, "Backup:BackupManagerService"

    const-string v13, "IOEception"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .end local v4    # "e":Ljava/io/IOException;
    :cond_7
    const-string v11, "Backup:BackupManagerService"

    const-string v12, "backup_pkg_enable_state file broken"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v6    # "in":Ljava/io/FileInputStream;
    .restart local v7    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v6, v7

    .end local v7    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    goto :goto_6

    :catch_4
    move-exception v4

    goto/16 :goto_1

    .end local v6    # "in":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    .restart local v1    # "bytes":[B
    .restart local v2    # "c":I
    .restart local v5    # "i":I
    .restart local v7    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "ss":[Ljava/lang/String;
    :catch_5
    move-exception v11

    goto :goto_5

    :cond_8
    move-object v6, v7

    .end local v7    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "in":Ljava/io/FileInputStream;
    goto/16 :goto_2
.end method

.method private saveCurrentPackageEnableState(Ljava/io/File;Ljava/lang/String;I)V
    .locals 7
    .param p1, "pkgStateFile"    # Ljava/io/File;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "state"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "out":Ljava/io/FileOutputStream;
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const-string v4, "Backup:BackupManagerService"

    const-string v5, "IOException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v4, "Backup:BackupManagerService"

    const-string v5, "IOException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v4, "Backup:BackupManagerService"

    const-string v5, "IOException"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_3
    throw v4

    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    const-string v5, "Backup:BackupManagerService"

    const-string v6, "IOException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method private waitForTheLastWorkingTask()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mBackupReadSide:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/server/BackupManagerService$3;

    invoke-direct {v2, p0}, Lcom/miui/server/BackupManagerService$3;-><init>(Lcom/miui/server/BackupManagerService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :try_start_2
    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :cond_1
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_2
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void
.end method


# virtual methods
.method public acquire(Lmiui/app/backup/IBackupServiceStateObserver;Landroid/os/IBinder;)Z
    .locals 3
    .param p1, "stateObserver"    # Lmiui/app/backup/IBackupServiceStateObserver;
    .param p2, "iCaller"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string v1, "Backup:BackupManagerService"

    const-string v2, "caller should not be null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/miui/server/BackupManagerService;->mOwnerPid:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/miui/server/BackupManagerService;->mOwnerPid:I

    iput-object p2, p0, Lcom/miui/server/BackupManagerService;->mICaller:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mICaller:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mDeathLinker:Lcom/miui/server/BackupManagerService$DeathLinker;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    const/4 v0, 0x1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mStateObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public addCompletedSize(J)V
    .locals 9
    .param p1, "size"    # J

    .prologue
    iget-wide v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentCompletedSize:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentCompletedSize:J

    iget v0, p0, Lcom/miui/server/BackupManagerService;->mProgType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    iget v2, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/miui/server/BackupManagerService;->mCurrentCompletedSize:J

    iget-wide v6, p0, Lcom/miui/server/BackupManagerService;->mCurrentTotalSize:J

    invoke-interface/range {v0 .. v7}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onCustomProgressChange(Ljava/lang/String;IIJJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v8

    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public backupPackage(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZLmiui/app/backup/IPackageBackupRestoreObserver;)V
    .locals 5
    .param p1, "outFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "readSide"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "feature"    # I
    .param p5, "pwd"    # Ljava/lang/String;
    .param p6, "encryptedPwd"    # Ljava/lang/String;
    .param p7, "includeApk"    # Z
    .param p8, "forceBackup"    # Z
    .param p9, "observer"    # Lmiui/app/backup/IPackageBackupRestoreObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .local v1, "pid":I
    iput-object p2, p0, Lcom/miui/server/BackupManagerService;->mBackupReadSide:Landroid/os/ParcelFileDescriptor;

    iget v2, p0, Lcom/miui/server/BackupManagerService;->mOwnerPid:I

    if-eq v1, v2, :cond_0

    const-string v2, "Backup:BackupManagerService"

    const-string v3, "You must acquire first to use the backup or restore service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mICaller:Landroid/os/IBinder;

    if-nez v2, :cond_1

    const-string v2, "Backup:BackupManagerService"

    const-string v3, "Caller is null You must acquire first with a binder"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iput-object p5, p0, Lcom/miui/server/BackupManagerService;->mPwd:Ljava/lang/String;

    iput-object p6, p0, Lcom/miui/server/BackupManagerService;->mEncryptedPwd:Ljava/lang/String;

    :cond_2
    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, p3}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .local v0, "isSystemApp":Z
    if-eqz v0, :cond_5

    invoke-direct {p0, p3}, Lcom/miui/server/BackupManagerService;->appHasOwnBackupAgent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/miui/server/BackupManagerService;->mIsNeedBeKilled:Z

    :goto_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/server/BackupManagerService;->mPackageLastEnableState:I

    if-nez v0, :cond_3

    const/4 v2, 0x0

    invoke-direct {p0, p3, v2}, Lcom/miui/server/BackupManagerService;->enablePackage(Ljava/lang/String;Z)V

    :cond_3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    iput v2, p0, Lcom/miui/server/BackupManagerService;->mCallerFd:I

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object p9, p0, Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

    iput p4, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I

    iput-object p3, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/server/BackupManagerService;->mLastError:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/server/BackupManagerService;->mProgType:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/miui/server/BackupManagerService;->mState:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/miui/server/BackupManagerService;->mCurrentCompletedSize:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/miui/server/BackupManagerService;->mCurrentTotalSize:J

    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/miui/server/BackupManagerService;->mPackageStatsObserver:Landroid/content/pm/IPackageStatsObserver;

    invoke-virtual {v2, p3, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    iget-object v3, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v2, v4

    invoke-static {p1, v2}, Lcom/miui/server/BackupManagerServiceProxy;->fullBackup(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_4

    const/4 v2, 0x1

    invoke-direct {p0, p3, v2}, Lcom/miui/server/BackupManagerService;->enablePackage(Ljava/lang/String;Z)V

    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/server/BackupManagerService;->mPwd:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/server/BackupManagerService;->mEncryptedPwd:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/server/BackupManagerService;->mIsNeedBeKilled:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/server/BackupManagerService;->mCallerFd:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/server/BackupManagerService;->mProgType:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/server/BackupManagerService;->mState:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/server/BackupManagerService;->mPackageLastEnableState:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/miui/server/BackupManagerService;->mCurrentTotalSize:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/miui/server/BackupManagerService;->mCurrentCompletedSize:J

    goto/16 :goto_0

    :cond_5
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/server/BackupManagerService;->mIsNeedBeKilled:Z

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public errorOccur(I)V
    .locals 3
    .param p1, "err"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lcom/miui/server/BackupManagerService;->mLastError:I

    if-nez v0, :cond_0

    iput p1, p0, Lcom/miui/server/BackupManagerService;->mLastError:I

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    iget v2, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I

    invoke-interface {v0, v1, v2, p1}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onError(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public getBackupTimeoutScale()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    iget v1, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I

    invoke-static {v0, v1}, Lmiui/app/backup/BackupManager;->isProgRecordApp(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurrentRunningPackage()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentWorkingFeature()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I

    return v0
.end method

.method public getState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lcom/miui/server/BackupManagerService;->mState:I

    return v0
.end method

.method public isNeedBeKilled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/server/BackupManagerService;->mIsNeedBeKilled:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRunningFromMiui(I)Z
    .locals 1
    .param p1, "fd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget v0, p0, Lcom/miui/server/BackupManagerService;->mCallerFd:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isServiceIdle()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/miui/server/BackupManagerService;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onApkInstalled()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    invoke-static {v0, v1}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/miui/server/BackupManagerService;->disablePackageAndWait(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public readMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;)V
    .locals 7
    .param p1, "inFileDescriptor"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v2, 0x0

    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .end local v2    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v3}, Lmiui/app/backup/BackupFileResolver;->readMiuiHeader(Ljava/io/InputStream;)Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;

    move-result-object v1

    .local v1, "header":Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;
    if-eqz v1, :cond_0

    iget v5, v1, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->version:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    iget-object v5, v1, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->packageName:Ljava/lang/String;

    iput-object v5, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    iget v5, v1, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->featureId:I

    iput v5, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I

    iget-boolean v5, v1, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->isEncrypted:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    :goto_0
    iput-object v5, p0, Lcom/miui/server/BackupManagerService;->mEncryptedPwdInBakFile:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    invoke-static {v5, v6}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .local v4, "isSystemApp":Z
    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/miui/server/BackupManagerService;->appHasOwnBackupAgent(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/miui/server/BackupManagerService;->isApplicationRunning(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/miui/server/BackupManagerService;->mIsNeedBeKilled:Z

    :goto_1
    if-nez v4, :cond_0

    iget-object v5, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/miui/server/BackupManagerService;->enablePackage(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v4    # "isSystemApp":Z
    :cond_0
    if-eqz v3, :cond_1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return-void

    :cond_2
    :try_start_3
    iget-object v5, v1, Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;->encryptedPwd:Ljava/lang/String;

    goto :goto_0

    .restart local v4    # "isSystemApp":Z
    :cond_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/miui/server/BackupManagerService;->mIsNeedBeKilled:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v1    # "header":Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;
    .end local v4    # "isSystemApp":Z
    :catchall_0
    move-exception v5

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :goto_2
    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_4
    throw v5

    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v1    # "header":Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "header":Lmiui/app/backup/BackupFileResolver$BackupFileMiuiHeader;
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    goto :goto_2
.end method

.method public release(Lmiui/app/backup/IBackupServiceStateObserver;)V
    .locals 2
    .param p1, "stateObserver"    # Lmiui/app/backup/IBackupServiceStateObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .local v0, "pid":I
    iget v1, p0, Lcom/miui/server/BackupManagerService;->mOwnerPid:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/miui/server/BackupManagerService;->waitForTheLastWorkingTask()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/server/BackupManagerService;->mOwnerPid:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/server/BackupManagerService;->mICaller:Landroid/os/IBinder;

    invoke-direct {p0}, Lcom/miui/server/BackupManagerService;->broadcastServiceIdle()V

    .end local v0    # "pid":I
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .restart local v0    # "pid":I
    :cond_1
    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mStateObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_0

    .end local v0    # "pid":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public restoreFile(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;ZLmiui/app/backup/IPackageBackupRestoreObserver;)V
    .locals 10
    .param p1, "bakFd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "forceBackup"    # Z
    .param p4, "observer"    # Lmiui/app/backup/IPackageBackupRestoreObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/miui/server/BackupManagerService;->getCallingPid()I

    move-result v1

    .local v1, "pid":I
    iget v2, p0, Lcom/miui/server/BackupManagerService;->mOwnerPid:I

    if-eq v1, v2, :cond_0

    const-string v2, "Backup:BackupManagerService"

    const-string v3, "You must acquire first to use the backup or restore service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mICaller:Landroid/os/IBinder;

    if-nez v2, :cond_1

    const-string v2, "Backup:BackupManagerService"

    const-string v3, "Caller is null You must acquire first with a binder"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iput-object p2, p0, Lcom/miui/server/BackupManagerService;->mPwd:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    iput v2, p0, Lcom/miui/server/BackupManagerService;->mCallerFd:I

    iput v6, p0, Lcom/miui/server/BackupManagerService;->mLastError:I

    iput v6, p0, Lcom/miui/server/BackupManagerService;->mProgType:I

    iput v7, p0, Lcom/miui/server/BackupManagerService;->mPackageLastEnableState:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/miui/server/BackupManagerService;->mState:I

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/server/BackupManagerService;->mCurrentTotalSize:J

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    :try_start_1
    iput-object p4, p0, Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

    const-string v2, "backup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/app/backup/IBackupManager;

    .local v0, "bm":Landroid/app/backup/IBackupManager;
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/miui/server/BackupManagerService;->mCurrentCompletedSize:J

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->fullRestore(Landroid/os/ParcelFileDescriptor;)V

    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    invoke-static {v2, v3}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    invoke-direct {p0, v2, v8}, Lcom/miui/server/BackupManagerService;->enablePackage(Ljava/lang/String;Z)V

    :cond_2
    iput-object v9, p0, Lcom/miui/server/BackupManagerService;->mPwd:Ljava/lang/String;

    iput-object v9, p0, Lcom/miui/server/BackupManagerService;->mEncryptedPwd:Ljava/lang/String;

    iput-object v9, p0, Lcom/miui/server/BackupManagerService;->mTaskLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v8, p0, Lcom/miui/server/BackupManagerService;->mIsNeedBeKilled:Z

    iput v7, p0, Lcom/miui/server/BackupManagerService;->mCallerFd:I

    iput v6, p0, Lcom/miui/server/BackupManagerService;->mProgType:I

    iput v6, p0, Lcom/miui/server/BackupManagerService;->mState:I

    iput v7, p0, Lcom/miui/server/BackupManagerService;->mPackageLastEnableState:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/miui/server/BackupManagerService;->mCurrentTotalSize:J

    goto :goto_0

    .end local v0    # "bm":Landroid/app/backup/IBackupManager;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public setCustomProgress(III)V
    .locals 8
    .param p1, "progType"    # I
    .param p2, "prog"    # I
    .param p3, "total"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iput p1, p0, Lcom/miui/server/BackupManagerService;->mProgType:I

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mBackupRestoreObserver:Lmiui/app/backup/IPackageBackupRestoreObserver;

    iget-object v1, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    iget v2, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I

    int-to-long v4, p2

    int-to-long v6, p3

    move v3, p1

    invoke-interface/range {v0 .. v7}, Lmiui/app/backup/IPackageBackupRestoreObserver;->onCustomProgressChange(Ljava/lang/String;IIJJ)V

    :cond_0
    return-void
.end method

.method public setIsNeedBeKilled(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "isNeedBeKilled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p2, p0, Lcom/miui/server/BackupManagerService;->mIsNeedBeKilled:Z

    :cond_0
    return-void
.end method

.method public startConfirmationUi(ILjava/lang/String;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "action"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/miui/server/BackupManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/server/BackupManagerService$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/server/BackupManagerService$2;-><init>(Lcom/miui/server/BackupManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public writeMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;)V
    .locals 7
    .param p1, "outFileDescriptor"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v1, 0x0

    .local v1, "os":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "os":Ljava/io/FileOutputStream;
    .local v2, "os":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v3, p0, Lcom/miui/server/BackupManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingPkg:Ljava/lang/String;

    iget v5, p0, Lcom/miui/server/BackupManagerService;->mCurrentWorkingFeature:I

    iget-object v6, p0, Lcom/miui/server/BackupManagerService;->mEncryptedPwd:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Lmiui/app/backup/BackupFileResolver;->writeMiuiHeader(Ljava/io/OutputStream;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    :goto_0
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_1
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    throw v3

    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v1    # "os":Ljava/io/FileOutputStream;
    goto :goto_0
.end method
