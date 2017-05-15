.class Lcom/miui/whetstone/WhetstonePackageState$DebugInfo$Record;
.super Ljava/lang/Object;
.source "WhetstonePackageState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Record"
.end annotation


# instance fields
.field mCaller:Ljava/lang/String;

.field mTime:J

.field mType:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "caller"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo$Record;->mTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo$Record;->mType:I

    iput p1, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo$Record;->mType:I

    iput-object p2, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo$Record;->mCaller:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const-string v0, ""

    .local v0, "prefix":Ljava/lang/String;
    iget v1, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo$Record;->mType:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo$Record;->mTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo$Record;->mTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":  Block "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " called by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo$Record;->mCaller:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_1
    const-string v0, "Activity"

    goto :goto_0

    :pswitch_2
    const-string v0, "Service"

    goto :goto_0

    :pswitch_3
    const-string v0, "ContentProvider"

    goto :goto_0

    :pswitch_4
    const-string v0, "BroadcastReceiver"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
