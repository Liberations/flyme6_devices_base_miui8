.class public Lcom/android/server/location/MetokWatcher;
.super Ljava/lang/Object;
.source "MetokWatcher.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final D:Z = false

.field public static final EXTRA_SERVICE_IS_MULTIUSER:Ljava/lang/String; = "serviceIsMultiuser"

.field public static final EXTRA_SERVICE_VERSION:Ljava/lang/String; = "serviceVersion"

.field public static final SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.xiaomi.metok"

.field private static final TAG:Ljava/lang/String; = "MetokWatcher"


# instance fields
.field private final mAction:Ljava/lang/String;

.field private mBinder:Landroid/os/IBinder;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsMultiuser:Z

.field private mLock:Ljava/lang/Object;

.field private final mNewServiceWork:Ljava/lang/Runnable;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPackageName:Ljava/lang/String;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private mVersion:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "newServiceWork"    # Ljava/lang/Runnable;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/server/location/MetokWatcher;->mVersion:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/MetokWatcher;->mIsMultiuser:Z

    new-instance v0, Lcom/android/server/location/MetokWatcher$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/MetokWatcher$2;-><init>(Lcom/android/server/location/MetokWatcher;)V

    iput-object v0, p0, Lcom/android/server/location/MetokWatcher;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iput-object p1, p0, Lcom/android/server/location/MetokWatcher;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/location/MetokWatcher;->mAction:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/MetokWatcher;->mPm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/server/location/MetokWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/server/location/MetokWatcher;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/MetokWatcher;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/MetokWatcher;

    .prologue
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/location/MetokWatcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/location/MetokWatcher;

    .prologue
    invoke-direct {p0}, Lcom/android/server/location/MetokWatcher;->unbindLocked()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/MetokWatcher;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/MetokWatcher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/location/MetokWatcher;->bindPackageLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private bindPackageLocked(Ljava/lang/String;)Z
    .locals 14
    .param p1, "targetPackage"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    new-instance v4, Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/server/location/MetokWatcher;->mAction:Ljava/lang/String;

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/server/location/MetokWatcher;->mPm:Landroid/content/pm/PackageManager;

    const/16 v12, 0x80

    invoke-virtual {v11, v4, v12, v10}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v8

    .local v8, "rInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/high16 v1, -0x80000000

    .local v1, "bestVersion":I
    const/4 v0, 0x0

    .local v0, "bestIsMultiuser":Z
    const/4 v2, 0x0

    .local v2, "found":Z
    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .local v7, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .local v6, "packageName":Ljava/lang/String;
    const-string v11, "com.xiaomi.metok"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/high16 v9, -0x80000000

    .local v9, "version":I
    const/4 v5, 0x0

    .local v5, "isMultiuser":Z
    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v11, :cond_1

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v12, "serviceVersion"

    const/high16 v13, -0x80000000

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v12, "serviceIsMultiuser"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    :cond_1
    if-le v9, v1, :cond_0

    move v1, v9

    move v0, v5

    const/4 v2, 0x1

    goto :goto_0

    .end local v5    # "isMultiuser":Z
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v9    # "version":I
    :cond_2
    if-eqz v2, :cond_3

    const-string v10, "com.xiaomi.metok"

    invoke-direct {p0, v10, v1, v0}, Lcom/android/server/location/MetokWatcher;->bindToPackageLocked(Ljava/lang/String;IZ)V

    const/4 v10, 0x1

    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    return v10
.end method

.method private bindToPackageLocked(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "isMultiuser"    # Z

    .prologue
    invoke-direct {p0}, Lcom/android/server/location/MetokWatcher;->unbindLocked()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iput-object p1, p0, Lcom/android/server/location/MetokWatcher;->mPackageName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/location/MetokWatcher;->mVersion:I

    iput-boolean p3, p0, Lcom/android/server/location/MetokWatcher;->mIsMultiuser:Z

    iget-object v2, p0, Lcom/android/server/location/MetokWatcher;->mContext:Landroid/content/Context;

    const v3, 0x40000005    # 2.0000012f

    iget-boolean v1, p0, Lcom/android/server/location/MetokWatcher;->mIsMultiuser:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    :goto_0
    invoke-virtual {v2, v0, p0, v3, v1}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void

    :cond_0
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    goto :goto_0
.end method

.method private unbindLocked()V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/server/location/MetokWatcher;->mVersion:I

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mPackageName:Ljava/lang/String;

    .local v0, "pkg":Ljava/lang/String;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/location/MetokWatcher;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/location/MetokWatcher;->mIsMultiuser:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mBinder:Landroid/os/IBinder;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mPackageName:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVersion()I
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/android/server/location/MetokWatcher;->mVersion:I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    iget-object v2, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-object p2, p0, Lcom/android/server/location/MetokWatcher;->mBinder:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/location/MetokWatcher;->mNewServiceWork:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    :cond_1
    const-string v1, "MetokWatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected onServiceConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    iget-object v2, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/location/MetokWatcher;->mBinder:Landroid/os/IBinder;

    :cond_0
    monitor-exit v2

    return-void

    .end local v0    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v0, "com.xiaomi.metok"

    invoke-direct {p0, v0}, Lcom/android/server/location/MetokWatcher;->bindPackageLocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/location/MetokWatcher$1;

    invoke-direct {v1, p0}, Lcom/android/server/location/MetokWatcher$1;-><init>(Lcom/android/server/location/MetokWatcher;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, p0, Lcom/android/server/location/MetokWatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/location/MetokWatcher;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v4, v2, v6}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    :cond_1
    move v0, v6

    goto :goto_0

    .end local v3    # "intentFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public switchUser()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/server/location/MetokWatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/location/MetokWatcher;->mIsMultiuser:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/location/MetokWatcher;->unbindLocked()V

    const-string v0, "com.xiaomi.metok"

    invoke-direct {p0, v0}, Lcom/android/server/location/MetokWatcher;->bindPackageLocked(Ljava/lang/String;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
