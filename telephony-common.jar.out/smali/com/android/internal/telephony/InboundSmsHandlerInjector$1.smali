.class final Lcom/android/internal/telephony/InboundSmsHandlerInjector$1;
.super Ljava/lang/Object;
.source "InboundSmsHandlerInjector.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/InboundSmsHandlerInjector;->beforeDispatchIntent(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$appOp:I

.field final synthetic val$inboundSmsHandler:Lcom/android/internal/telephony/InboundSmsHandler;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$permission:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandlerInjector$1;->val$inboundSmsHandler:Lcom/android/internal/telephony/InboundSmsHandler;

    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandlerInjector$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandlerInjector$1;->val$permission:Ljava/lang/String;

    iput p4, p0, Lcom/android/internal/telephony/InboundSmsHandlerInjector$1;->val$appOp:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 5

    .prologue
    .line 397
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandlerInjector$1;->val$inboundSmsHandler:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandlerInjector$1;->val$intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandlerInjector$1;->val$permission:Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/telephony/InboundSmsHandlerInjector$1;->val$appOp:I

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandlerInjector;->beforeDispatchIntentInt(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/Intent;Ljava/lang/String;I)Z

    move-result v0

    .line 398
    .local v0, "res":Z
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandlerInjector$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
