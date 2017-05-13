.class public Lcom/android/server/display/DisplayFeatureService;
.super Lcom/android/server/SystemService;
.source "DisplayFeatureService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayFeatureService$BinderService;
    }
.end annotation


# static fields
.field private static final DEFALUT_SCREEN_COLOR:I = 0x2

.field private static final DEFAULT_SCREEN_SATURATION:I = 0xb

.field private static final PROPERTY_SCREEN_COLOR:Ljava/lang/String; = "persist.sys.display_prefer"

.field private static final PROPERTY_SCREEN_SATURATION:Ljava/lang/String; = "persist.sys.display_ce"

.field private static final QCOM_COLOR_SERVICE:Ljava/lang/String; = "com.qti.snapdragon.sdk.display.IColorService"

.field private static final QCOM_COLOR_SERVICE_CLASS:Ljava/lang/String; = "com.qti.service.colorservice.ColorServiceApp"

.field private static final QCOM_COLOR_SERVICE_PACKAGE:Ljava/lang/String; = "com.qti.service.colorservice"

.field private static final SERVICE_NAME:Ljava/lang/String; = "DisplayFeatureControl"

.field private static final TRANSACTION_setActiveMode:I = 0x6

.field private static final TRANSACTION_setDefaultMode:I = 0xc


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object p1, p0, Lcom/android/server/display/DisplayFeatureService;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/DisplayFeatureService;Landroid/os/IBinder;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayFeatureService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayFeatureService;->setActiveMode(Landroid/os/IBinder;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayFeatureService;Landroid/os/IBinder;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayFeatureService;
    .param p1, "x1"    # Landroid/os/IBinder;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayFeatureService;->setDefaultMode(Landroid/os/IBinder;II)I

    move-result v0

    return v0
.end method

.method private setActiveMode(Landroid/os/IBinder;II)I
    .locals 5
    .param p1, "colorService"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "modeId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 121
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 124
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {p1, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 128
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 129
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 131
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 134
    return v2

    .line 131
    .end local v2    # "result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 132
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method private setDefaultMode(Landroid/os/IBinder;II)I
    .locals 5
    .param p1, "colorService"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "modeId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 141
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 144
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {p1, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 148
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 149
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 151
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 154
    return v2

    .line 151
    .end local v2    # "result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 4
    .param p1, "phase"    # I

    .prologue
    .line 52
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    .line 53
    const-string v1, "persist.sys.display_prefer"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Landroid/os/ColorAdjust;->setGamma(J)Z

    .line 55
    const-string v1, "persist.sys.display_ce"

    const/16 v2, 0xb

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Landroid/os/ColorAdjust;->setCe(J)Z

    .line 58
    const-string v1, "com.qti.snapdragon.sdk.display.IColorService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 59
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.qti.service.colorservice"

    const-string v2, "com.qti.service.colorservice.ColorServiceApp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Lcom/android/server/display/DisplayFeatureService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/display/DisplayFeatureService$1;

    invoke-direct {v2, p0}, Lcom/android/server/display/DisplayFeatureService$1;-><init>(Lcom/android/server/display/DisplayFeatureService;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 72
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 47
    const-string v0, "DisplayFeatureControl"

    new-instance v1, Lcom/android/server/display/DisplayFeatureService$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/DisplayFeatureService$BinderService;-><init>(Lcom/android/server/display/DisplayFeatureService;Lcom/android/server/display/DisplayFeatureService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/DisplayFeatureService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 48
    return-void
.end method
