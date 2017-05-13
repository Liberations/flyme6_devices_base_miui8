.class Lcom/miui/server/PerfShielderService$3;
.super Ljava/lang/Object;
.source "PerfShielderService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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
    .line 466
    iput-object p1, p0, Lcom/miui/server/PerfShielderService$3;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 469
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/MiuiSysUserServiceHelper;->setMiuiSysUser(Lcom/android/internal/app/IMiuiSysUser;)V

    .line 470
    const-string v0, "PerfShielderService"

    const-string v1, "MiuiSysUser service binderDied!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$3;->this$0:Lcom/miui/server/PerfShielderService;

    iget-object v0, v0, Lcom/miui/server/PerfShielderService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 472
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$3;->this$0:Lcom/miui/server/PerfShielderService;

    const-wide/32 v2, 0x2bf20

    # invokes: Lcom/miui/server/PerfShielderService;->sendBindMiuiSysUserMsg(J)V
    invoke-static {v0, v2, v3}, Lcom/miui/server/PerfShielderService;->access$500(Lcom/miui/server/PerfShielderService;J)V

    .line 473
    return-void
.end method
