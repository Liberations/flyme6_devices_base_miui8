.class final Lmiui/view/VolumeDialog$H;
.super Landroid/os/Handler;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final DISMISS:I = 0x2

.field private static final RECHECK:I = 0x3

.field private static final RECHECK_ALL:I = 0x4

.field private static final RESCHEDULE_TIMEOUT:I = 0x5

.field private static final RESET_SCREENSHOT:I = 0xb

.field private static final SHOW:I = 0x1

.field private static final SHOW_SAFE_WARNING:I = 0x9

.field private static final STATE_CHANGED:I = 0x6

.field private static final UPDATE_BOTTOM_MARGIN:I = 0x7

.field private static final UPDATE_LAYOUT_DIRECTION:I = 0x8

.field private static final VIBRATE:I = 0xa


# instance fields
.field final synthetic this$0:Lmiui/view/VolumeDialog;


# direct methods
.method public constructor <init>(Lmiui/view/VolumeDialog;)V
    .locals 1

    .prologue
    .line 663
    iput-object p1, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    .line 664
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 665
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 669
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 715
    :goto_0
    return-void

    .line 671
    :pswitch_0
    const-string v0, "VolumeDialog"

    const-string v1, "SHOW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lmiui/view/VolumeDialog;->showH(I)V
    invoke-static {v0, v1}, Lmiui/view/VolumeDialog;->access$2900(Lmiui/view/VolumeDialog;I)V

    goto :goto_0

    .line 675
    :pswitch_1
    const-string v0, "VolumeDialog"

    const-string v1, "DISMISS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    # invokes: Lmiui/view/VolumeDialog;->dismissH()V
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$3000(Lmiui/view/VolumeDialog;)V

    goto :goto_0

    .line 679
    :pswitch_2
    const-string v0, "VolumeDialog"

    const-string v1, "RECHECK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v1, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmiui/view/VolumeDialog$VolumeRow;

    # invokes: Lmiui/view/VolumeDialog;->recheckH(Lmiui/view/VolumeDialog$VolumeRow;)V
    invoke-static {v1, v0}, Lmiui/view/VolumeDialog;->access$3100(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$VolumeRow;)V

    goto :goto_0

    .line 683
    :pswitch_3
    const-string v0, "VolumeDialog"

    const-string v1, "RECHECK_ALL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    const/4 v1, 0x0

    # invokes: Lmiui/view/VolumeDialog;->recheckH(Lmiui/view/VolumeDialog$VolumeRow;)V
    invoke-static {v0, v1}, Lmiui/view/VolumeDialog;->access$3100(Lmiui/view/VolumeDialog;Lmiui/view/VolumeDialog$VolumeRow;)V

    goto :goto_0

    .line 687
    :pswitch_4
    const-string v0, "VolumeDialog"

    const-string v1, "RESCHEDULE_TIMEOUT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    # invokes: Lmiui/view/VolumeDialog;->rescheduleTimeoutH()V
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$3200(Lmiui/view/VolumeDialog;)V

    goto :goto_0

    .line 691
    :pswitch_5
    const-string v0, "VolumeDialog"

    const-string v1, "UPDATE_BOTTOM_MARGIN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    # invokes: Lmiui/view/VolumeDialog;->updateDialogBottomMarginH()V
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$3300(Lmiui/view/VolumeDialog;)V

    goto :goto_0

    .line 695
    :pswitch_6
    const-string v0, "VolumeDialog"

    const-string v1, "STATE_CHANGED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lmiui/view/VolumeDialog;->stateChangedH(II)V
    invoke-static {v0, v1, v2}, Lmiui/view/VolumeDialog;->access$3400(Lmiui/view/VolumeDialog;II)V

    goto :goto_0

    .line 699
    :pswitch_7
    const-string v0, "VolumeDialog"

    const-string v1, "UPDATE_LAYOUT_DIRECTION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lmiui/view/VolumeDialog;->updateLayoutDirectionH(I)V
    invoke-static {v0, v1}, Lmiui/view/VolumeDialog;->access$3500(Lmiui/view/VolumeDialog;I)V

    goto :goto_0

    .line 703
    :pswitch_8
    const-string v0, "VolumeDialog"

    const-string v1, "SHOW_SAFE_WARNING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lmiui/view/VolumeDialog;->showSafetyWarningH(I)V
    invoke-static {v0, v1}, Lmiui/view/VolumeDialog;->access$3600(Lmiui/view/VolumeDialog;I)V

    goto/16 :goto_0

    .line 707
    :pswitch_9
    const-string v0, "VolumeDialog"

    const-string v1, "VIBRATE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    # invokes: Lmiui/view/VolumeDialog;->vibrateH()V
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$3700(Lmiui/view/VolumeDialog;)V

    goto/16 :goto_0

    .line 711
    :pswitch_a
    const-string v0, "VolumeDialog"

    const-string v1, "RESET_SCREENSHOT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v0, p0, Lmiui/view/VolumeDialog$H;->this$0:Lmiui/view/VolumeDialog;

    const/4 v1, 0x0

    # setter for: Lmiui/view/VolumeDialog;->mInScreenshot:Z
    invoke-static {v0, v1}, Lmiui/view/VolumeDialog;->access$3802(Lmiui/view/VolumeDialog;Z)Z

    goto/16 :goto_0

    .line 669
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
