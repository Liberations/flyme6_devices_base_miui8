.class public abstract Lcom/android/internal/app/IMiuiSysUser$Stub;
.super Landroid/os/Binder;
.source "IMiuiSysUser.java"

# interfaces
.implements Lcom/android/internal/app/IMiuiSysUser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IMiuiSysUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IMiuiSysUser$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IMiuiSysUser"

.field static final TRANSACTION_notifyAMCreateActivity:I = 0x7

.field static final TRANSACTION_notifyAMDestroyActivity:I = 0x3

.field static final TRANSACTION_notifyAMPauseActivity:I = 0x4

.field static final TRANSACTION_notifyAMProcDied:I = 0x2

.field static final TRANSACTION_notifyAMProcStart:I = 0x1

.field static final TRANSACTION_notifyAMRestartActivity:I = 0x6

.field static final TRANSACTION_notifyAMResumeActivity:I = 0x5

.field static final TRANSACTION_notifyEvent:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.android.internal.app.IMiuiSysUser"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IMiuiSysUser$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMiuiSysUser;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 29
    :cond_0
    const-string v1, "com.android.internal.app.IMiuiSysUser"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IMiuiSysUser;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/android/internal/app/IMiuiSysUser;

    goto :goto_0

    .line 33
    :cond_1
    new-instance v0, Lcom/android/internal/app/IMiuiSysUser$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/app/IMiuiSysUser$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
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
    const/4 v0, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 168
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 45
    :sswitch_0
    const-string v1, "com.android.internal.app.IMiuiSysUser"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v1, "com.android.internal.app.IMiuiSysUser"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 54
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 56
    .local v4, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 58
    .local v5, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 60
    .local v6, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 67
    .local v7, "_arg4":Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, "_arg5":Ljava/lang/String;
    move-object v1, p0

    .line 68
    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/app/IMiuiSysUser$Stub;->notifyAMProcStart(JIILjava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    .end local v7    # "_arg4":Landroid/content/ComponentName;
    .end local v8    # "_arg5":Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "_arg4":Landroid/content/ComponentName;
    goto :goto_1

    .line 73
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    .end local v6    # "_arg3":Ljava/lang/String;
    .end local v7    # "_arg4":Landroid/content/ComponentName;
    :sswitch_2
    const-string v1, "com.android.internal.app.IMiuiSysUser"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 77
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/app/IMiuiSysUser$Stub;->notifyAMProcDied(ILjava/lang/String;)V

    goto :goto_0

    .line 83
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string v1, "com.android.internal.app.IMiuiSysUser"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 87
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 88
    .local v4, "_arg1":I
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/app/IMiuiSysUser$Stub;->notifyAMDestroyActivity(II)V

    goto :goto_0

    .line 93
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_4
    const-string v1, "com.android.internal.app.IMiuiSysUser"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 97
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 98
    .restart local v4    # "_arg1":I
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/app/IMiuiSysUser$Stub;->notifyAMPauseActivity(II)V

    goto :goto_0

    .line 103
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    :sswitch_5
    const-string v1, "com.android.internal.app.IMiuiSysUser"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 112
    .local v2, "_arg0":Landroid/content/ComponentName;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 114
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 115
    .restart local v5    # "_arg2":I
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/app/IMiuiSysUser$Stub;->notifyAMResumeActivity(Landroid/content/ComponentName;II)V

    goto/16 :goto_0

    .line 109
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    goto :goto_2

    .line 120
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :sswitch_6
    const-string v1, "com.android.internal.app.IMiuiSysUser"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 129
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 131
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 132
    .restart local v5    # "_arg2":I
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/app/IMiuiSysUser$Stub;->notifyAMRestartActivity(Landroid/content/ComponentName;II)V

    goto/16 :goto_0

    .line 126
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    goto :goto_3

    .line 137
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :sswitch_7
    const-string v1, "com.android.internal.app.IMiuiSysUser"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 140
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 146
    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 148
    .restart local v4    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 149
    .restart local v5    # "_arg2":I
    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/app/IMiuiSysUser$Stub;->notifyAMCreateActivity(Landroid/content/ComponentName;II)V

    goto/16 :goto_0

    .line 143
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v4    # "_arg1":I
    .end local v5    # "_arg2":I
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    goto :goto_4

    .line 154
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    :sswitch_8
    const-string v1, "com.android.internal.app.IMiuiSysUser"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 159
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 164
    .local v4, "_arg1":Landroid/os/Bundle;
    :goto_5
    invoke-virtual {p0, v2, v4}, Lcom/android/internal/app/IMiuiSysUser$Stub;->notifyEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 162
    .end local v4    # "_arg1":Landroid/os/Bundle;
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "_arg1":Landroid/os/Bundle;
    goto :goto_5

    .line 41
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
