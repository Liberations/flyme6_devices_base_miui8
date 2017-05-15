.class Lcom/android/server/am/MiuiSysUserServiceHelper$UserHandler;
.super Landroid/os/Handler;
.source "MiuiSysUserServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MiuiSysUserServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UserHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    # setter for: Lcom/android/server/am/MiuiSysUserServiceHelper;->sIsLimit:Z
    invoke-static {v1}, Lcom/android/server/am/MiuiSysUserServiceHelper;->access$002(Z)Z

    goto :goto_0

    :pswitch_1
    # setter for: Lcom/android/server/am/MiuiSysUserServiceHelper;->sInputLimit:Z
    invoke-static {v1}, Lcom/android/server/am/MiuiSysUserServiceHelper;->access$102(Z)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
