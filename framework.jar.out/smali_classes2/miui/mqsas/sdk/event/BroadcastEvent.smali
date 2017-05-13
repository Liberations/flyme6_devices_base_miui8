.class public Lmiui/mqsas/sdk/event/BroadcastEvent;
.super Lmiui/mqsas/sdk/event/ExceptionEvent;
.source "BroadcastEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/mqsas/sdk/event/BroadcastEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAction:Ljava/lang/String;

.field private mBroadcastReceiver:Ljava/lang/String;

.field private mCallerPackage:Ljava/lang/String;

.field private mCount:I

.field private mDispatchClockTime:J

.field private mEnqueueClockTime:J

.field private mFinishClockTime:J

.field private mIsQueuedWorked:Z

.field private mNumReceivers:I

.field private mReason:Ljava/lang/String;

.field private mTotalTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lmiui/mqsas/sdk/event/BroadcastEvent$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/BroadcastEvent$1;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/event/BroadcastEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;-><init>()V

    .line 71
    invoke-direct {p0}, Lmiui/mqsas/sdk/event/BroadcastEvent;->initBroadcastEvent()V

    .line 72
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 135
    invoke-direct {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;-><init>()V

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mType:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mPid:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mProcessName:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mPackageName:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mTimeStamp:J

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mSummary:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mDetails:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mDigest:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mLogName:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mKeyWord:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mAction:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mCallerPackage:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mIsSystem:Z

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mReason:Ljava/lang/String;

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mEnqueueClockTime:J

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mDispatchClockTime:J

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mFinishClockTime:J

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mBroadcastReceiver:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mIsQueuedWorked:Z

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mTotalTime:J

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mCount:I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mNumReceivers:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_2
    iput-boolean v1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mIsUpload:Z

    .line 159
    return-void

    :cond_0
    move v0, v2

    .line 148
    goto :goto_0

    :cond_1
    move v0, v2

    .line 154
    goto :goto_1

    :cond_2
    move v1, v2

    .line 158
    goto :goto_2
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/mqsas/sdk/event/BroadcastEvent$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lmiui/mqsas/sdk/event/BroadcastEvent$1;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lmiui/mqsas/sdk/event/BroadcastEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private formatTime(J)Ljava/lang/String;
    .locals 3
    .param p1, "timestamp"    # J

    .prologue
    .line 266
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initBroadcastEvent()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    .line 75
    iput v1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mType:I

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mAction:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mCallerPackage:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mReason:Ljava/lang/String;

    .line 79
    iput-wide v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mEnqueueClockTime:J

    .line 80
    iput-wide v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mDispatchClockTime:J

    .line 81
    iput-wide v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mFinishClockTime:J

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mBroadcastReceiver:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mIsQueuedWorked:Z

    .line 84
    iput-wide v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mTotalTime:J

    .line 85
    iput v1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mCount:I

    .line 86
    iput v1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mNumReceivers:I

    .line 87
    return-void
.end method


# virtual methods
.method public addCount()V
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mCount:I

    .line 259
    return-void
.end method

.method public addTotalTime(J)V
    .locals 3
    .param p1, "totalTime"    # J

    .prologue
    .line 262
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mTotalTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mTotalTime:J

    .line 263
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getBrReceiver()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mBroadcastReceiver:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mCallerPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()J
    .locals 2

    .prologue
    .line 242
    iget v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mCount:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getDisTime()J
    .locals 2

    .prologue
    .line 202
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mDispatchClockTime:J

    return-wide v0
.end method

.method public getEnTime()J
    .locals 2

    .prologue
    .line 194
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mEnqueueClockTime:J

    return-wide v0
.end method

.method public getFinTime()J
    .locals 2

    .prologue
    .line 210
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mFinishClockTime:J

    return-wide v0
.end method

.method public getNumReceivers()I
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mNumReceivers:I

    return v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTime()J
    .locals 2

    .prologue
    .line 234
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mTotalTime:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mType:I

    return v0
.end method

.method public initType()V
    .locals 0

    .prologue
    .line 89
    return-void
.end method

.method public isQuWorked()Z
    .locals 1

    .prologue
    .line 226
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mIsQueuedWorked:Z

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 174
    iput-object p1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mAction:Ljava/lang/String;

    .line 175
    return-void
.end method

.method public setBrReceiver(Ljava/lang/String;)V
    .locals 0
    .param p1, "BroadcastReceiver"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mBroadcastReceiver:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setCallerPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "callerPackage"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mCallerPackage:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setCount(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 246
    iput p1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mCount:I

    .line 247
    return-void
.end method

.method public setDisTime(J)V
    .locals 1
    .param p1, "DispatchClockTime"    # J

    .prologue
    .line 206
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mDispatchClockTime:J

    .line 207
    return-void
.end method

.method public setEnTime(J)V
    .locals 1
    .param p1, "EnqueueClockTime"    # J

    .prologue
    .line 198
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mEnqueueClockTime:J

    .line 199
    return-void
.end method

.method public setFinTime(J)V
    .locals 1
    .param p1, "FinishClockTime"    # J

    .prologue
    .line 214
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mFinishClockTime:J

    .line 215
    return-void
.end method

.method public setNumReceivers(I)V
    .locals 0
    .param p1, "numReceivers"    # I

    .prologue
    .line 254
    iput p1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mNumReceivers:I

    .line 255
    return-void
.end method

.method public setQuWorked(Z)V
    .locals 0
    .param p1, "isQueuedWorked"    # Z

    .prologue
    .line 230
    iput-boolean p1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mIsQueuedWorked:Z

    .line 231
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mReason:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setTotalTime(J)V
    .locals 1
    .param p1, "TotalTime"    # J

    .prologue
    .line 238
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mTotalTime:J

    .line 239
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 166
    iput p1, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mType:I

    .line 167
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BroadcastEvent { mType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " processName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mProcessName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mTimeStamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mTimeStamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSummary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mSummary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDetails="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mDetails:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDigest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mDigest:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLogName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mLogName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mKeyWord="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mKeyWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAction= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mReason= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mEnqueueClockTime= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mEnqueueClockTime:J

    invoke-direct {p0, v2, v3}, Lmiui/mqsas/sdk/event/BroadcastEvent;->formatTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDispatchClockTime= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mDispatchClockTime:J

    invoke-direct {p0, v2, v3}, Lmiui/mqsas/sdk/event/BroadcastEvent;->formatTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFinishClockTime= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mFinishClockTime:J

    invoke-direct {p0, v2, v3}, Lmiui/mqsas/sdk/event/BroadcastEvent;->formatTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBroadcastReceiver="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mBroadcastReceiver:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isQueueWorked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mIsQueuedWorked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCallerPackage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mCallerPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTotalTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mTotalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    iget v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mProcessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-wide v4, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mTimeStamp:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 104
    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mDetails:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mDigest:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mLogName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mKeyWord:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mCallerPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mIsSystem:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-wide v4, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mEnqueueClockTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    iget-wide v4, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mDispatchClockTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 115
    iget-wide v4, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mFinishClockTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 116
    iget-object v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mBroadcastReceiver:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mIsQueuedWorked:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-wide v4, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mTotalTime:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 119
    iget v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mNumReceivers:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/BroadcastEvent;->mIsUpload:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    return-void

    :cond_0
    move v0, v2

    .line 111
    goto :goto_0

    :cond_1
    move v0, v2

    .line 117
    goto :goto_1

    :cond_2
    move v1, v2

    .line 121
    goto :goto_2
.end method
