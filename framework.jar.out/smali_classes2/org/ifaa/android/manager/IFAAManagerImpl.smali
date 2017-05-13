.class public Lorg/ifaa/android/manager/IFAAManagerImpl;
.super Lorg/ifaa/android/manager/IFAAManagerV2;
.source "IFAAManagerImpl.java"


# static fields
.field private static instance:Lorg/ifaa/android/manager/IFAAManagerImpl;


# instance fields
.field private CODE_PROCESS_CMD:I

.field private Debug:Z

.field private IFAA_TYPE_FINGER:I

.field private IFAA_TYPE_IRIS:I

.field private INTERFACE_DESCRIPTOR:Ljava/lang/String;

.field private SERVICE_NAME:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private mDevModel:Ljava/lang/String;

.field private mFingerActName:Ljava/lang/String;

.field private mFingerPackName:Ljava/lang/String;

.field private mService:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->instance:Lorg/ifaa/android/manager/IFAAManagerImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 19
    invoke-direct {p0}, Lorg/ifaa/android/manager/IFAAManagerV2;-><init>()V

    .line 20
    iput-boolean v1, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->Debug:Z

    .line 21
    const-string v0, "IfaaManagerImpl"

    iput-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->TAG:Ljava/lang/String;

    .line 23
    iput v1, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->IFAA_TYPE_FINGER:I

    .line 24
    const/4 v0, 0x2

    iput v0, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->IFAA_TYPE_IRIS:I

    .line 25
    const-string v0, "com.android.settings"

    iput-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mFingerPackName:Ljava/lang/String;

    .line 26
    const-string v0, "com.android.settings.NewFingerprintActivity"

    iput-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mFingerActName:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    .line 29
    const-string v0, "com.xiaomi.mlipayservice"

    iput-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->SERVICE_NAME:Ljava/lang/String;

    .line 30
    iput v1, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->CODE_PROCESS_CMD:I

    .line 31
    const-string/jumbo v0, "xiaomi.MlipayService"

    iput-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->INTERFACE_DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lorg/ifaa/android/manager/IFAAManagerV2;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->instance:Lorg/ifaa/android/manager/IFAAManagerImpl;

    if-nez v0, :cond_1

    .line 35
    const-class v1, Lorg/ifaa/android/manager/IFAAManagerImpl;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->instance:Lorg/ifaa/android/manager/IFAAManagerImpl;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lorg/ifaa/android/manager/IFAAManagerImpl;

    invoke-direct {v0}, Lorg/ifaa/android/manager/IFAAManagerImpl;-><init>()V

    sput-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->instance:Lorg/ifaa/android/manager/IFAAManagerImpl;

    .line 39
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_1
    sget-object v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->instance:Lorg/ifaa/android/manager/IFAAManagerImpl;

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getDeviceModel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 78
    iget-object v1, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 79
    const-string v1, "finger_alipay_ifaa_model"

    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "miuiFeature":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 81
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    .line 86
    .end local v0    # "miuiFeature":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->Debug:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDeviceModel devcieModel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_2
    iget-object v1, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    return-object v1

    .line 83
    .restart local v0    # "miuiFeature":Ljava/lang/String;
    :cond_3
    iput-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mDevModel:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSupportBIOTypes(Landroid/content/Context;)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    const-string v2, "persist.sys.ifaa"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 49
    .local v0, "ifaaProp":I
    iget v2, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->IFAA_TYPE_FINGER:I

    iget v3, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->IFAA_TYPE_IRIS:I

    or-int/2addr v2, v3

    and-int v1, v0, v2

    .line 50
    .local v1, "res":I
    iget-boolean v2, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->Debug:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSupportBIOTypes return:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " res:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    return v1
.end method

.method public getVersion()I
    .locals 3

    .prologue
    .line 95
    iget-boolean v0, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->Debug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVersion sdk:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IfaaVer:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/ifaa/android/manager/IFAAManagerImpl;->mIfaaVer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    sget v0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mIfaaVer:I

    return v0
.end method

.method public processCmdV2(Landroid/content/Context;[B)[B
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "param"    # [B

    .prologue
    .line 100
    iget-boolean v3, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->Debug:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCmdV2 sdk:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    iget-object v3, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mService:Landroid/os/IBinder;

    if-nez v3, :cond_1

    .line 102
    iget-object v3, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->SERVICE_NAME:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mService:Landroid/os/IBinder;

    .line 104
    :cond_1
    iget-object v3, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mService:Landroid/os/IBinder;

    if-nez v3, :cond_2

    .line 105
    iget-object v3, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->TAG:Ljava/lang/String;

    const-string v4, "processCmdV2, service found"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_0
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 107
    :cond_2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 108
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 110
    .local v2, "reply":Landroid/os/Parcel;
    :try_start_0
    iget-object v3, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->INTERFACE_DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 112
    iget-object v3, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mService:Landroid/os/IBinder;

    iget v4, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->CODE_PROCESS_CMD:I

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 113
    invoke-virtual {v2}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 118
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_1

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    iget-object v3, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processCmdV2 transact failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 118
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 117
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 118
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method public startBIOManager(Landroid/content/Context;I)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authType"    # I

    .prologue
    .line 62
    const/4 v1, -0x1

    .line 63
    .local v1, "res":I
    iget v2, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->IFAA_TYPE_FINGER:I

    if-ne v2, p2, :cond_0

    .line 64
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 65
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mFingerPackName:Ljava/lang/String;

    iget-object v3, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->mFingerActName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 68
    const/4 v1, 0x0

    .line 70
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    iget-boolean v2, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->Debug:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/ifaa/android/manager/IFAAManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startBIOManager authType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " res:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1
    return v1
.end method
