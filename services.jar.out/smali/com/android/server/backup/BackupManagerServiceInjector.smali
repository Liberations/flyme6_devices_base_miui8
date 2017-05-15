.class public Lcom/android/server/backup/BackupManagerServiceInjector;
.super Ljava/lang/Object;
.source "BackupManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Backup:BackupManagerServiceInjector"

.field private static sBinderDeathLinker:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/backup/BackupManagerServiceInjector;->sBinderDeathLinker:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addRestoredSize(JI)V
    .locals 4
    .param p0, "size"    # J
    .param p2, "fd"    # I

    .prologue
    const-string v2, "MiuiBackup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_0
    invoke-interface {v0, p2}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, p0, p1}, Lmiui/app/backup/IBackupManager;->addCompletedSize(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Backup:BackupManagerServiceInjector"

    const-string v3, "addRestoredSize failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static errorOccur(II)V
    .locals 4
    .param p0, "errCode"    # I
    .param p1, "fd"    # I

    .prologue
    const-string v2, "MiuiBackup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_0
    invoke-interface {v0, p1}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, p0}, Lmiui/app/backup/IBackupManager;->errorOccur(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Backup:BackupManagerServiceInjector"

    const-string v3, "errorOccur failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static getApplicationInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "fd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const-string v3, "MiuiBackup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-interface {v0, p2}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0, p1}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x400

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Backup:BackupManagerServiceInjector"

    const-string v4, "getApplicationInfo failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    goto :goto_0
.end method

.method static getCachedInstallPath(Ljava/io/File;Ljava/lang/String;J)Ljava/io/File;
    .locals 10
    .param p0, "rootCacheDir"    # Ljava/io/File;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "realSize"    # J

    .prologue
    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .local v7, "sf":Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v4

    .local v4, "blockSize":J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    .local v0, "availableCount":J
    mul-long v2, v0, v4

    .local v2, "availableSize":J
    const/4 v6, 0x0

    .local v6, "f":Ljava/io/File;
    cmp-long v8, v2, p2

    if-lez v8, :cond_0

    new-instance v6, Ljava/io/File;

    .end local v6    # "f":Ljava/io/File;
    invoke-direct {v6, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v6    # "f":Ljava/io/File;
    :goto_0
    return-object v6

    :cond_0
    invoke-static {}, Lcom/miui/server/BackupManagerService;->getCachedInstallFile()Ljava/io/File;

    move-result-object v6

    goto :goto_0
.end method

.method static getPackageInfo(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "fd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const-string v3, "MiuiBackup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-interface {v0, p2}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0, p1}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x440

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Backup:BackupManagerServiceInjector"

    const-string v4, "getPackageInfo failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/16 v3, 0x40

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    goto :goto_0
.end method

.method static isForceAllowBackup(I)Z
    .locals 4
    .param p0, "fd"    # I

    .prologue
    const-string v2, "MiuiBackup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_0
    invoke-interface {v0, p0}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Backup:BackupManagerServiceInjector"

    const-string v3, "isForceAllowBackup error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static isForceAllowSysAppBackup(Landroid/content/pm/PackageInfo;I)Z
    .locals 1
    .param p0, "info"    # Landroid/content/pm/PackageInfo;
    .param p1, "fd"    # I

    .prologue
    invoke-static {p0}, Lmiui/app/backup/BackupManager;->isSysAppForBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/backup/BackupManagerServiceInjector;->isForceAllowBackup(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isNeedBeKilled(Ljava/lang/String;I)Z
    .locals 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "fd"    # I

    .prologue
    const/4 v2, 0x1

    .local v2, "is":Z
    const-string v3, "MiuiBackup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_0
    invoke-interface {v0, p1}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, p0}, Lmiui/app/backup/IBackupManager;->isNeedBeKilled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Backup:BackupManagerServiceInjector"

    const-string v4, "isNeedBeKilled failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static linkToDeath(Landroid/app/IBackupAgent;I)V
    .locals 5
    .param p0, "backupAgent"    # Landroid/app/IBackupAgent;
    .param p1, "fd"    # I

    .prologue
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/app/IBackupAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, "agentBinder":Landroid/os/IBinder;
    new-instance v1, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;

    invoke-direct {v1, v0, p1}, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;-><init>(Landroid/os/IBinder;I)V

    .local v1, "deathLinker":Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;
    sget-object v3, Lcom/android/server/backup/BackupManagerServiceInjector;->sBinderDeathLinker:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v0, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "agentBinder":Landroid/os/IBinder;
    .end local v1    # "deathLinker":Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "agentBinder":Landroid/os/IBinder;
    .restart local v1    # "deathLinker":Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Backup:BackupManagerServiceInjector"

    const-string v4, "linkToDeath failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static needUpdateToken(Landroid/app/IBackupAgent;I)Z
    .locals 4
    .param p0, "backupAgent"    # Landroid/app/IBackupAgent;
    .param p1, "token"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "needUpdateToken":Z
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/app/IBackupAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    sget-object v2, Lcom/android/server/backup/BackupManagerServiceInjector;->sBinderDeathLinker:Ljava/util/HashMap;

    invoke-interface {p0}, Landroid/app/IBackupAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;

    .local v0, "deathLinker":Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;->setToken(I)V

    .end local v0    # "deathLinker":Lcom/android/server/backup/BackupManagerServiceInjector$DeathLinker;
    :cond_0
    return v1
.end method

.method static onApkInstalled(I)V
    .locals 4
    .param p0, "fd"    # I

    .prologue
    const-string v2, "MiuiBackup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_0
    invoke-interface {v0, p0}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lmiui/app/backup/IBackupManager;->onApkInstalled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Backup:BackupManagerServiceInjector"

    const-string v3, "onApkInstalled failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static prepareOperationTimeout(Lcom/android/server/backup/BackupManagerService;IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;I)V
    .locals 6
    .param p0, "thiz"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "token"    # I
    .param p2, "interval"    # J
    .param p4, "callback"    # Lcom/android/server/backup/BackupManagerService$BackupRestoreTask;
    .param p5, "fd"    # I

    .prologue
    const-string v3, "MiuiBackup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lmiui/app/backup/IBackupManager;

    .local v1, "bm":Lmiui/app/backup/IBackupManager;
    const/4 v0, 0x1

    .local v0, "backupTimeoutScale":I
    :try_start_0
    invoke-interface {v1, p5}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Lmiui/app/backup/IBackupManager;->getBackupTimeoutScale()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    const-string v3, "Backup:BackupManagerServiceInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareOperationTimeout backupTimeoutScale = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v4, v0

    mul-long/2addr v4, p2

    invoke-virtual {p0, p1, v4, v5, p4}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;)V

    return-void

    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Backup:BackupManagerServiceInjector"

    const-string v4, "prepareOperationTimeout failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static readMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;I)V
    .locals 4
    .param p0, "in"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "fd"    # I

    .prologue
    const-string v2, "MiuiBackup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_0
    invoke-interface {v0, p1}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, p0}, Lmiui/app/backup/IBackupManager;->readMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Backup:BackupManagerServiceInjector"

    const-string v3, "readMiuiBackupHeader failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static restoreFileEnd(Lcom/android/server/backup/BackupManagerService;Landroid/app/IBackupAgent;Landroid/app/backup/IBackupManager;I)V
    .locals 20
    .param p0, "thiz"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "agent"    # Landroid/app/IBackupAgent;
    .param p2, "backupManagerBinder"    # Landroid/app/backup/IBackupManager;
    .param p3, "fd"    # I

    .prologue
    if-eqz p1, :cond_0

    const-string v2, "MiuiBackup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    check-cast v18, Lmiui/app/backup/IBackupManager;

    .local v18, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_0
    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-interface {v0, v1}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService;->generateToken()I

    move-result v3

    .local v3, "token":I
    const-wide/32 v4, 0x493e0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    move/from16 v7, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/backup/BackupManagerServiceInjector;->prepareOperationTimeout(Lcom/android/server/backup/BackupManagerService;IJLcom/android/server/backup/BackupManagerService$BackupRestoreTask;I)V

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    sget-object v10, Lmiui/app/backup/BackupManager;->DOMAIN_END:Ljava/lang/String;

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 v5, p1

    move/from16 v16, v3

    move-object/from16 v17, p2

    invoke-interface/range {v5 .. v17}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/server/backup/BackupManagerServiceInjector;->needUpdateToken(Landroid/app/IBackupAgent;I)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "token":I
    .end local v18    # "bm":Lmiui/app/backup/IBackupManager;
    :cond_0
    :goto_0
    return-void

    .restart local v18    # "bm":Lmiui/app/backup/IBackupManager;
    :catch_0
    move-exception v19

    .local v19, "e":Landroid/os/RemoteException;
    const-string v2, "Backup:BackupManagerServiceInjector"

    const-string v4, "restoreFileEnd failed"

    move-object/from16 v0, v19

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static routeSocketDataToOutput(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Ljava/io/OutputStream;I)V
    .locals 12
    .param p0, "thiz"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "inPipe"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "outFd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v8, "MiuiBackup"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_0
    invoke-interface {v0, p3}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v6, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .local v6, "raw":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v4, "in":Ljava/io/DataInputStream;
    const v8, 0x8000

    new-array v1, v8, [B

    .local v1, "buffer":[B
    :cond_0
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .local v2, "chunkTotal":I
    if-lez v2, :cond_3

    :goto_0
    if-lez v2, :cond_0

    array-length v8, v1

    if-le v2, v8, :cond_1

    array-length v7, v1

    .local v7, "toRead":I
    :goto_1
    const/4 v8, 0x0

    invoke-virtual {v4, v1, v8, v7}, Ljava/io/DataInputStream;->read([BII)I

    move-result v5

    .local v5, "nRead":I
    const/4 v8, 0x0

    invoke-virtual {p2, v1, v8, v5}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v8, v5

    invoke-interface {v0, v8, v9}, Lmiui/app/backup/IBackupManager;->addCompletedSize(J)V

    sub-int/2addr v2, v5

    goto :goto_0

    .end local v5    # "nRead":I
    .end local v7    # "toRead":I
    :cond_1
    move v7, v2

    goto :goto_1

    .end local v1    # "buffer":[B
    .end local v2    # "chunkTotal":I
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v6    # "raw":Ljava/io/FileInputStream;
    :cond_2
    const-string v8, "routeSocketDataToOutput"

    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object p2, v10, v11

    invoke-static {p0, v8, v9, v10}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_2
    return-void

    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    const-string v8, "Backup:BackupManagerServiceInjector"

    const-string v9, "routeSocketDataToOutput failed"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v3    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v8, "Backup:BackupManagerServiceInjector"

    const-string v9, "routeSocketDataToOutput failed"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v8, Ljava/io/IOException;

    invoke-direct {v8}, Ljava/io/IOException;-><init>()V

    throw v8
.end method

.method static setOutputFileDescriptor(Lcom/android/server/backup/BackupManagerService$FullBackupEngine;Landroid/os/ParcelFileDescriptor;)V
    .locals 0
    .param p0, "engine"    # Lcom/android/server/backup/BackupManagerService$FullBackupEngine;
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    if-eqz p0, :cond_0

    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    :cond_0
    return-void
.end method

.method static startConfirmationUi(Lcom/android/server/backup/BackupManagerService;ILjava/lang/String;I)Z
    .locals 4
    .param p0, "thiz"    # Lcom/android/server/backup/BackupManagerService;
    .param p1, "token"    # I
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "fd"    # I

    .prologue
    const-string v2, "MiuiBackup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_0
    invoke-interface {v0, p3}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, p1, p2}, Lmiui/app/backup/IBackupManager;->startConfirmationUi(ILjava/lang/String;)V

    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/backup/BackupManagerService;->startConfirmationUi(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Backup:BackupManagerServiceInjector"

    const-string v3, "confirmation failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_1
.end method

.method static tearDownAgentAndKill(Landroid/app/IActivityManager;Landroid/content/pm/ApplicationInfo;I)Z
    .locals 5
    .param p0, "activityManager"    # Landroid/app/IActivityManager;
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "fd"    # I

    .prologue
    const/4 v2, 0x0

    .local v2, "handle":Z
    const-string v3, "MiuiBackup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_0
    invoke-interface {v0, p2}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, p2}, Lcom/android/server/backup/BackupManagerServiceInjector;->isNeedBeKilled(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    invoke-interface {p0, p1}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Backup:BackupManagerServiceInjector"

    const-string v4, "isNeedBeKilled failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static unlinkToDeath(Landroid/app/IBackupAgent;)V
    .locals 3
    .param p0, "backupAgent"    # Landroid/app/IBackupAgent;

    .prologue
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/app/IBackupAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .local v0, "agentBinder":Landroid/os/IBinder;
    sget-object v1, Lcom/android/server/backup/BackupManagerServiceInjector;->sBinderDeathLinker:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    sget-object v1, Lcom/android/server/backup/BackupManagerServiceInjector;->sBinderDeathLinker:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v0    # "agentBinder":Landroid/os/IBinder;
    :cond_0
    return-void
.end method

.method static writeMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;I)V
    .locals 4
    .param p0, "out"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "fd"    # I

    .prologue
    const-string v2, "MiuiBackup"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lmiui/app/backup/IBackupManager;

    .local v0, "bm":Lmiui/app/backup/IBackupManager;
    :try_start_0
    invoke-interface {v0, p1}, Lmiui/app/backup/IBackupManager;->isRunningFromMiui(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, p0}, Lmiui/app/backup/IBackupManager;->writeMiuiBackupHeader(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Backup:BackupManagerServiceInjector"

    const-string v3, "writeMiuiBackupHeader failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
