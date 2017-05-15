.class Lcom/android/server/fingerprint/FingerprintService$4$7;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$4;->onGxCmdResult(JIII[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$4;

.field final synthetic val$cmd:I

.field final synthetic val$retCode1:I

.field final synthetic val$retCode2:I

.field final synthetic val$rspData:[B


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$4;III[B)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$4$7;->this$1:Lcom/android/server/fingerprint/FingerprintService$4;

    iput p2, p0, Lcom/android/server/fingerprint/FingerprintService$4$7;->val$cmd:I

    iput p3, p0, Lcom/android/server/fingerprint/FingerprintService$4$7;->val$retCode1:I

    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$4$7;->val$retCode2:I

    iput-object p5, p0, Lcom/android/server/fingerprint/FingerprintService$4$7;->val$rspData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$4$7;->this$1:Lcom/android/server/fingerprint/FingerprintService$4;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService$4$7;->val$cmd:I

    iget v2, p0, Lcom/android/server/fingerprint/FingerprintService$4$7;->val$retCode1:I

    iget v3, p0, Lcom/android/server/fingerprint/FingerprintService$4$7;->val$retCode2:I

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$4$7;->val$rspData:[B

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/fingerprint/FingerprintService;->handleGxCmdResult(III[B)V

    return-void
.end method
