.class final Lmiui/telephony/PhoneDebug$1;
.super Ljava/lang/Object;
.source "PhoneDebug.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/PhoneDebug;->registerDelay(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$time:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    iput p1, p0, Lmiui/telephony/PhoneDebug$1;->val$time:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    :try_start_0
    iget v1, p0, Lmiui/telephony/PhoneDebug$1;->val$time:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    # invokes: Lmiui/telephony/PhoneDebug;->register()V
    invoke-static {}, Lmiui/telephony/PhoneDebug;->access$000()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "te":Ljava/lang/Exception;
    const-string v1, "PhoneDebug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerDelay"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
