.class public Lcom/miui/server/ServiceStarterRunnable;
.super Ljava/lang/Object;
.source "ServiceStarterRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DELAY_RETRY:J = 0x3e8L

.field private static final MAX_RETRY_TIMES:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ServiceStarterRunnable"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;

.field private retryCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/server/ServiceStarterRunnable;->retryCount:I

    iput-object p1, p0, Lcom/miui/server/ServiceStarterRunnable;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/miui/server/ServiceStarterRunnable;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/miui/server/ServiceStarterRunnable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/server/ServiceStarterRunnable;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    .local v0, "ret":Landroid/content/ComponentName;
    :goto_0
    if-nez v0, :cond_0

    iget v1, p0, Lcom/miui/server/ServiceStarterRunnable;->retryCount:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v1, "ServiceStarterRunnable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/server/ServiceStarterRunnable;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", retry times: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/server/ServiceStarterRunnable;->retryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/miui/server/ServiceStarterRunnable;->retryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/server/ServiceStarterRunnable;->retryCount:I

    iget-object v1, p0, Lcom/miui/server/ServiceStarterRunnable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/server/ServiceStarterRunnable;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    return-void
.end method
