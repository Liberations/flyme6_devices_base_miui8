.class Landroid/os/BaseLooper$MessageMonitorInfo;
.super Ljava/lang/Object;
.source "BaseLooper.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BaseLooper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageMonitorInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/BaseLooper$MessageMonitorInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field dispatchTime:J

.field finishTime:J

.field monitorDigest:Ljava/lang/String;

.field monitorMessage:Ljava/lang/String;

.field planTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/os/BaseLooper$MessageMonitorInfo$1;

    invoke-direct {v0}, Landroid/os/BaseLooper$MessageMonitorInfo$1;-><init>()V

    sput-object v0, Landroid/os/BaseLooper$MessageMonitorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorDigest:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method createMonitorDigest()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getPlanTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/BaseLooper$MessageMonitorInfo;->getDispatchTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorDigest:Ljava/lang/String;

    iget-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorDigest:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method getDispatchTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    return-wide v0
.end method

.method getFinishTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    return-wide v0
.end method

.method getMonitorDigest()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorDigest:Ljava/lang/String;

    return-object v0
.end method

.method getMonitorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorMessage:Ljava/lang/String;

    return-object v0
.end method

.method getPlanTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    return-wide v0
.end method

.method getTookTime()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    sub-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method getTookTimeAfterDispatch()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    sub-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method getTookTimeBeforeDispatch()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    sub-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method initMessageTime(J)V
    .locals 7
    .param p1, "uptimeMillis"    # J

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v0, p1, v2

    .local v0, "delayMillis":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    return-void
.end method

.method reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    iput-object v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorDigest:Ljava/lang/String;

    iput-object v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorMessage:Ljava/lang/String;

    return-void
.end method

.method setMonitorMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-static {p1}, Landroid/os/BaseLooper;->getMessageString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorMessage:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, "b":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " planTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " dispatchTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " finishTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method updateMessageTimeByState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    goto :goto_0

    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->planTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->dispatchTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->finishTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorDigest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/os/BaseLooper$MessageMonitorInfo;->monitorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
