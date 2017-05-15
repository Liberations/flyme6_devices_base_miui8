.class public abstract Lmiui/mqsas/IMQSNative$Stub;
.super Landroid/os/Binder;
.source "IMQSNative.java"

# interfaces
.implements Lmiui/mqsas/IMQSNative;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/mqsas/IMQSNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/mqsas/IMQSNative$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.mqsas.IMQSNative"

.field static final TRANSACTION_captureLog:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.mqsas.IMQSNative"

    invoke-virtual {p0, p0, v0}, Lmiui/mqsas/IMQSNative$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/mqsas/IMQSNative;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "miui.mqsas.IMQSNative"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/mqsas/IMQSNative;

    if-eqz v1, :cond_1

    check-cast v0, Lmiui/mqsas/IMQSNative;

    goto :goto_0

    :cond_1
    new-instance v0, Lmiui/mqsas/IMQSNative$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lmiui/mqsas/IMQSNative$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "miui.mqsas.IMQSNative"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v0, "miui.mqsas.IMQSNative"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .local v3, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .local v4, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x1

    .local v5, "_arg4":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg5":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v7, 0x1

    .local v7, "_arg6":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg7":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .local v9, "_arg8":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lmiui/mqsas/IMQSNative$Stub;->captureLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;ZIZLjava/lang/String;Ljava/util/List;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v0, 0x1

    goto :goto_0

    .end local v5    # "_arg4":Z
    .end local v6    # "_arg5":I
    .end local v7    # "_arg6":Z
    .end local v8    # "_arg7":Ljava/lang/String;
    .end local v9    # "_arg8":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .restart local v5    # "_arg4":Z
    .restart local v6    # "_arg5":I
    :cond_1
    const/4 v7, 0x0

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
