.class Landroid/hardware/fingerprint/FingerprintManager$2;
.super Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/fingerprint/FingerprintManager;


# direct methods
.method constructor <init>(Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(JI)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "acquireInfo"    # I

    .prologue
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, p3, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticationFailed(J)V
    .locals 2
    .param p1, "deviceId"    # J

    .prologue
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;I)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p4, "userId"    # I

    .prologue
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onEnrollResult(JIII)V
    .locals 9
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .prologue
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v6

    const/16 v7, 0x64

    const/4 v8, 0x0

    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const/4 v1, 0x0

    move v2, p4

    move v3, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    invoke-virtual {v6, v7, p5, v8, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onError(JI)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "error"    # I

    .prologue
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1, p3, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onGxCmdResult(JIII[B)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "cmd"    # I
    .param p4, "retCode1"    # I
    .param p5, "retCode2"    # I
    .param p6, "rspData"    # [B

    .prologue
    const-string v0, "FingerprintManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGxCmdResult, cmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", retCode1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", retCode2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", rspData["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRemoved(JII)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    .prologue
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$2;->this$0:Landroid/hardware/fingerprint/FingerprintManager;

    # getter for: Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/hardware/fingerprint/FingerprintManager;->access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x69

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, p3, p4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
