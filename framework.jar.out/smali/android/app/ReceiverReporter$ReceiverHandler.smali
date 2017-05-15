.class final Landroid/app/ReceiverReporter$ReceiverHandler;
.super Landroid/os/Handler;
.source "ReceiverReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ReceiverReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReceiverHandler"
.end annotation


# static fields
.field static final RECEIVER_RECORDS:I


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    const-string v2, "MIUI-ReceiverReporter"

    const-string v3, "wrong message received of BRReportHandler"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .local v1, "reportEvents":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Lmiui/mqsas/sdk/event/BroadcastEvent;>;"
    if-eqz v1, :cond_0

    # invokes: Landroid/app/ReceiverReporter;->isSystemBootCompleted()Z
    invoke-static {}, Landroid/app/ReceiverReporter;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v2

    invoke-virtual {v2, v1}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportBroadcastEvent(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "reportEvents":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Lmiui/mqsas/sdk/event/BroadcastEvent;>;"
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MIUI-ReceiverReporter"

    const-string v3, "report message record error."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
