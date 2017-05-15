.class public abstract Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;
.super Landroid/os/Binder;
.source "IPackageBackupRestoreObserver.java"

# interfaces
.implements Lmiui/app/backup/IPackageBackupRestoreObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/backup/IPackageBackupRestoreObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.app.backup.IPackageBackupRestoreObserver"

.field static final TRANSACTION_onBackupEnd:I = 0x2

.field static final TRANSACTION_onBackupStart:I = 0x1

.field static final TRANSACTION_onCustomProgressChange:I = 0x7

.field static final TRANSACTION_onError:I = 0x6

.field static final TRANSACTION_onRestoreEnd:I = 0x4

.field static final TRANSACTION_onRestoreError:I = 0x5

.field static final TRANSACTION_onRestoreStart:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {p0, p0, v0}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/app/backup/IPackageBackupRestoreObserver;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/app/backup/IPackageBackupRestoreObserver;

    if-eqz v1, :cond_1

    check-cast v0, Lmiui/app/backup/IPackageBackupRestoreObserver;

    goto :goto_0

    :cond_1
    new-instance v0, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    const-string v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    goto :goto_0

    :sswitch_1
    const-string v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onBackupStart(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_2
    const-string v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onBackupEnd(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_3
    const-string v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onRestoreStart(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_4
    const-string v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onRestoreEnd(Ljava/lang/String;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_5
    const-string v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onRestoreError(Ljava/lang/String;II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_6
    const-string v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg2":I
    invoke-virtual {p0, v1, v2, v3}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onError(Ljava/lang/String;II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto/16 :goto_0

    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_7
    const-string v0, "miui.app.backup.IPackageBackupRestoreObserver"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .local v4, "_arg3":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, "_arg4":J
    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lmiui/app/backup/IPackageBackupRestoreObserver$Stub;->onCustomProgressChange(Ljava/lang/String;IIJJ)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    goto/16 :goto_0

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
