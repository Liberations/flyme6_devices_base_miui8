.class Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->gxCmd(Landroid/os/IBinder;IIII[BLandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

.field final synthetic val$cmd:I

.field final synthetic val$effectiveGroupId:I

.field final synthetic val$flags:I

.field final synthetic val$param1:I

.field final synthetic val$param2:I

.field final synthetic val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field final synthetic val$reqData:[B

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;Landroid/os/IBinder;IIII[BLandroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iput-object p2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$token:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$effectiveGroupId:I

    iput p4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$cmd:I

    iput p5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$param1:I

    iput p6, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$param2:I

    iput-object p7, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$reqData:[B

    iput-object p8, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iput p9, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->this$1:Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$token:Landroid/os/IBinder;

    iget v2, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$effectiveGroupId:I

    iget v3, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$cmd:I

    iget v4, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$param1:I

    iget v5, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$param2:I

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$reqData:[B

    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget v8, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper$8;->val$flags:I

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/fingerprint/FingerprintService;->startGxCmd(Landroid/os/IBinder;IIII[BLandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZ)V

    return-void
.end method
