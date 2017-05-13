.class Lcom/miui/server/PerfShielderService$5;
.super Landroid/os/Handler;
.source "PerfShielderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/PerfShielderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/PerfShielderService;


# direct methods
.method constructor <init>(Lcom/miui/server/PerfShielderService;)V
    .locals 0

    .prologue
    .line 588
    iput-object p1, p0, Lcom/miui/server/PerfShielderService$5;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 591
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 599
    :goto_0
    return-void

    .line 593
    :pswitch_0
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$5;->this$0:Lcom/miui/server/PerfShielderService;

    # invokes: Lcom/miui/server/PerfShielderService;->bindService()V
    invoke-static {v0}, Lcom/miui/server/PerfShielderService;->access$100(Lcom/miui/server/PerfShielderService;)V

    goto :goto_0

    .line 596
    :pswitch_1
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$5;->this$0:Lcom/miui/server/PerfShielderService;

    # invokes: Lcom/miui/server/PerfShielderService;->bindMiuiSysUser()V
    invoke-static {v0}, Lcom/miui/server/PerfShielderService;->access$800(Lcom/miui/server/PerfShielderService;)V

    goto :goto_0

    .line 591
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
