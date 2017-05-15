.class Lcom/miui/server/PerfShielderService$4;
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
    iput-object p1, p0, Lcom/miui/server/PerfShielderService$4;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    const-string v0, "PerfShielderService"

    const-string v1, "Miui performance service binderDied!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/server/PerfShielderService$4;->this$0:Lcom/miui/server/PerfShielderService;

    const-wide/32 v2, 0x493e0

    # invokes: Lcom/miui/server/PerfShielderService;->sendRebindServiceMsg(J)V
    invoke-static {v0, v2, v3}, Lcom/miui/server/PerfShielderService;->access$700(Lcom/miui/server/PerfShielderService;J)V

    return-void
.end method
