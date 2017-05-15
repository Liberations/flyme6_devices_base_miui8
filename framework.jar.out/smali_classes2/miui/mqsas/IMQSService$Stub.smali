.class public abstract Lmiui/mqsas/IMQSService$Stub;
.super Landroid/os/Binder;
.source "IMQSService.java"

# interfaces
.implements Lmiui/mqsas/IMQSService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/mqsas/IMQSService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mqsas/IMQSService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.mqsas.IMQSService"

.field static final TRANSACTION_onBootCompleted:I = 0x6

.field static final TRANSACTION_reportAnrEvent:I = 0x1

.field static final TRANSACTION_reportBroadcastEvent:I = 0x7

.field static final TRANSACTION_reportJavaExceptionEvent:I = 0x2

.field static final TRANSACTION_reportPackageEvent:I = 0x5

.field static final TRANSACTION_reportSimpleEvent:I = 0x4

.field static final TRANSACTION_reportWatchdogEvent:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.mqsas.IMQSService"

    invoke-virtual {p0, p0, v0}, Lmiui/mqsas/IMQSService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/mqsas/IMQSService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "miui.mqsas.IMQSService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/mqsas/IMQSService;

    if-eqz v1, :cond_1

    check-cast v0, Lmiui/mqsas/IMQSService;

    goto :goto_0

    :cond_1
    new-instance v0, Lmiui/mqsas/IMQSService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lmiui/mqsas/IMQSService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_0
    return v2

    :sswitch_0
    const-string v3, "miui.mqsas.IMQSService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v3, "miui.mqsas.IMQSService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lmiui/mqsas/sdk/event/AnrEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/AnrEvent;

    .local v0, "_arg0":Lmiui/mqsas/sdk/event/AnrEvent;
    :goto_1
    invoke-virtual {p0, v0}, Lmiui/mqsas/IMQSService$Stub;->reportAnrEvent(Lmiui/mqsas/sdk/event/AnrEvent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Lmiui/mqsas/sdk/event/AnrEvent;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lmiui/mqsas/sdk/event/AnrEvent;
    goto :goto_1

    .end local v0    # "_arg0":Lmiui/mqsas/sdk/event/AnrEvent;
    :sswitch_2
    const-string v3, "miui.mqsas.IMQSService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lmiui/mqsas/sdk/event/JavaExceptionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/JavaExceptionEvent;

    .local v0, "_arg0":Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    :goto_2
    invoke-virtual {p0, v0}, Lmiui/mqsas/IMQSService$Stub;->reportJavaExceptionEvent(Lmiui/mqsas/sdk/event/JavaExceptionEvent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    goto :goto_2

    .end local v0    # "_arg0":Lmiui/mqsas/sdk/event/JavaExceptionEvent;
    :sswitch_3
    const-string v3, "miui.mqsas.IMQSService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lmiui/mqsas/sdk/event/WatchdogEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/WatchdogEvent;

    .local v0, "_arg0":Lmiui/mqsas/sdk/event/WatchdogEvent;
    :goto_3
    invoke-virtual {p0, v0}, Lmiui/mqsas/IMQSService$Stub;->reportWatchdogEvent(Lmiui/mqsas/sdk/event/WatchdogEvent;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":Lmiui/mqsas/sdk/event/WatchdogEvent;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lmiui/mqsas/sdk/event/WatchdogEvent;
    goto :goto_3

    .end local v0    # "_arg0":Lmiui/mqsas/sdk/event/WatchdogEvent;
    :sswitch_4
    const-string v3, "miui.mqsas.IMQSService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lmiui/mqsas/IMQSService$Stub;->reportSimpleEvent(ILjava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_5
    const-string v3, "miui.mqsas.IMQSService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lmiui/mqsas/sdk/event/PackageEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/mqsas/sdk/event/PackageEvent;

    .local v0, "_arg0":Lmiui/mqsas/sdk/event/PackageEvent;
    :goto_4
    invoke-virtual {p0, v0}, Lmiui/mqsas/IMQSService$Stub;->reportPackageEvent(Lmiui/mqsas/sdk/event/PackageEvent;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Lmiui/mqsas/sdk/event/PackageEvent;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lmiui/mqsas/sdk/event/PackageEvent;
    goto :goto_4

    .end local v0    # "_arg0":Lmiui/mqsas/sdk/event/PackageEvent;
    :sswitch_6
    const-string v3, "miui.mqsas.IMQSService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/mqsas/IMQSService$Stub;->onBootCompleted()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_7
    const-string v3, "miui.mqsas.IMQSService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .local v0, "_arg0":Landroid/content/pm/ParceledListSlice;
    :goto_5
    invoke-virtual {p0, v0}, Lmiui/mqsas/IMQSService$Stub;->reportBroadcastEvent(Landroid/content/pm/ParceledListSlice;)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Landroid/content/pm/ParceledListSlice;
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/content/pm/ParceledListSlice;
    goto :goto_5

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
