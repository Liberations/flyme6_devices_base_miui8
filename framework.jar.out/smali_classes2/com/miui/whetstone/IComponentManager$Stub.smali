.class public abstract Lcom/miui/whetstone/IComponentManager$Stub;
.super Landroid/os/Binder;
.source "IComponentManager.java"

# interfaces
.implements Lcom/miui/whetstone/IComponentManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/IComponentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/IComponentManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.miui.whetstone.IComponentManager"

.field static final TRANSACTION_control:I = 0x3

.field static final TRANSACTION_getComponentStartInfo:I = 0x2

.field static final TRANSACTION_handleComponentStart:I = 0x1

.field static final TRANSACTION_handleComponentStartV1:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.miui.whetstone.IComponentManager"

    invoke-virtual {p0, p0, v0}, Lcom/miui/whetstone/IComponentManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IComponentManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.miui.whetstone.IComponentManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/miui/whetstone/IComponentManager;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/miui/whetstone/IComponentManager;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/miui/whetstone/IComponentManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/miui/whetstone/IComponentManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    const-string v0, "com.miui.whetstone.IComponentManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v0, "com.miui.whetstone.IComponentManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .local v7, "_arg6":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "_arg7":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/miui/whetstone/IComponentManager$Stub;->handleComponentStart(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;II)I

    move-result v10

    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Ljava/lang/String;
    .end local v7    # "_arg6":I
    .end local v8    # "_arg7":I
    .end local v10    # "_result":I
    :sswitch_2
    const-string v0, "com.miui.whetstone.IComponentManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/whetstone/IComponentManager$Stub;->getComponentStartInfo(Ljava/lang/String;Ljava/lang/String;III)Landroid/os/Bundle;

    move-result-object v10

    .local v10, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v10    # "_result":Landroid/os/Bundle;
    :sswitch_3
    const-string v0, "com.miui.whetstone.IComponentManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_2
    invoke-virtual {p0, v1, v2}, Lcom/miui/whetstone/IComponentManager$Stub;->control(ILandroid/os/Bundle;)I

    move-result v10

    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v10    # "_result":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_2

    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_4
    const-string v0, "com.miui.whetstone.IComponentManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "_arg5":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .restart local v7    # "_arg6":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .restart local v8    # "_arg7":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/Bundle;

    .local v9, "_arg8":Landroid/os/Bundle;
    :goto_3
    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/miui/whetstone/IComponentManager$Stub;->handleComponentStartV1(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILandroid/os/Bundle;)I

    move-result v10

    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x1

    goto/16 :goto_0

    .end local v9    # "_arg8":Landroid/os/Bundle;
    .end local v10    # "_result":I
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "_arg8":Landroid/os/Bundle;
    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
