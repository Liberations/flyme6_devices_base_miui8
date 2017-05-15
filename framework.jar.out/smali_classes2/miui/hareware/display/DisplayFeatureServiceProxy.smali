.class Lmiui/hareware/display/DisplayFeatureServiceProxy;
.super Ljava/lang/Object;
.source "DisplayFeatureServiceProxy.java"


# static fields
.field private static final INTERFACE_DESCRIPTOR:Ljava/lang/String; = "miui.hardware.display.IDisplayFeatureService"

.field private static final TRANSACTION_setAd:I = 0x3

.field private static final TRANSACTION_setCABC:I = 0x5

.field private static final TRANSACTION_setCE:I = 0x4

.field private static final TRANSACTION_setColorPrefer:I = 0x1

.field private static final TRANSACTION_setEyeCare:I = 0x2

.field private static final TRANSACTION_setFeature:I = 0x64

.field private static final TRANSACTION_setGamutMode:I = 0x6


# instance fields
.field private mDescriptor:Ljava/lang/String;

.field private mService:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/hareware/display/DisplayFeatureServiceProxy;->mService:Landroid/os/IBinder;

    :try_start_0
    iget-object v0, p0, Lmiui/hareware/display/DisplayFeatureServiceProxy;->mService:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/hareware/display/DisplayFeatureServiceProxy;->mDescriptor:Ljava/lang/String;

    iget-object v0, p0, Lmiui/hareware/display/DisplayFeatureServiceProxy;->mDescriptor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "miui.hardware.display.IDisplayFeatureService"

    iput-object v0, p0, Lmiui/hareware/display/DisplayFeatureServiceProxy;->mDescriptor:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private varargs callTransact(I[I)I
    .locals 9
    .param p1, "transactId"    # I
    .param p2, "params"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .local v5, "reply":Landroid/os/Parcel;
    const/4 v6, -0x1

    .local v6, "result":I
    :try_start_0
    iget-object v7, p0, Lmiui/hareware/display/DisplayFeatureServiceProxy;->mDescriptor:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    move-object v0, p2

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v4, v0, v2

    .local v4, "param":I
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4    # "param":I
    :cond_0
    iget-object v7, p0, Lmiui/hareware/display/DisplayFeatureServiceProxy;->mService:Landroid/os/IBinder;

    const/4 v8, 0x0

    invoke-interface {v7, p1, v1, v5, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    :cond_1
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return v6

    .end local v0    # "arr$":[I
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catchall_0
    move-exception v7

    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v7
.end method


# virtual methods
.method setAd(III)I
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "enable"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    new-array v0, v2, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    invoke-direct {p0, v2, v0}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->callTransact(I[I)I

    move-result v0

    return v0
.end method

.method setCABC(II)I
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-direct {p0, v0, v1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->callTransact(I[I)I

    move-result v0

    return v0
.end method

.method setCE(II)I
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x4

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-direct {p0, v0, v1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->callTransact(I[I)I

    move-result v0

    return v0
.end method

.method setColorPrefer(II)I
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    aput p2, v0, v2

    invoke-direct {p0, v2, v0}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->callTransact(I[I)I

    move-result v0

    return v0
.end method

.method setEyeCare(II)I
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    new-array v0, v2, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-direct {p0, v2, v0}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->callTransact(I[I)I

    move-result v0

    return v0
.end method

.method setFeature(IIII)I
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "mode"    # I
    .param p3, "value"    # I
    .param p4, "cookie"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x64

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x2

    aput p3, v1, v2

    const/4 v2, 0x3

    aput p4, v1, v2

    invoke-direct {p0, v0, v1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->callTransact(I[I)I

    move-result v0

    return v0
.end method

.method setGamutMode(II)I
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x6

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-direct {p0, v0, v1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->callTransact(I[I)I

    move-result v0

    return v0
.end method
