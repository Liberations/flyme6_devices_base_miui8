.class Lcom/miui/server/PerfShielderService$1;
.super Ljava/lang/Object;
.source "PerfShielderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/PerfShielderService;-><init>(Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/miui/server/PerfShielderService$1;->this$0:Lcom/miui/server/PerfShielderService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/miui/server/PerfShielderService$1;->this$0:Lcom/miui/server/PerfShielderService;

    # invokes: Lcom/miui/server/PerfShielderService;->bindService()V
    invoke-static {v0}, Lcom/miui/server/PerfShielderService;->access$100(Lcom/miui/server/PerfShielderService;)V

    return-void
.end method
