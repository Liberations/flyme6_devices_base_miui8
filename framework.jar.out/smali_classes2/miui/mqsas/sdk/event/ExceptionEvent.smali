.class public Lmiui/mqsas/sdk/event/ExceptionEvent;
.super Ljava/lang/Object;
.source "ExceptionEvent.java"


# static fields
.field public static final IMPORTANT_PROCESS:I = 0x1

.field public static final NORMAL_PROCESS:I = 0x2

.field public static final SEVERITY_FATAL:I = 0x0

.field public static final SEVERITY_MAJOR:I = 0x1

.field public static final SEVERITY_MINOR:I = 0x3

.field public static final SEVERITY_NORMAL:I = 0x2

.field public static final UNKWOWN_PROCESS:I = -0x1

.field public static final VERY_IMPORTANT_PROCESS:I


# instance fields
.field protected mDetails:Ljava/lang/String;

.field protected mDigest:Ljava/lang/String;

.field public final mImportantProcesses:[Ljava/lang/String;

.field protected mIsSystem:Z

.field protected mIsUpload:Z

.field protected mKeyWord:Ljava/lang/String;

.field protected mLogName:Ljava/lang/String;

.field protected mPackageName:Ljava/lang/String;

.field protected mPid:I

.field protected mProcessName:Ljava/lang/String;

.field protected mSummary:Ljava/lang/String;

.field protected mTimeStamp:J

.field protected mType:I

.field public final mVerytImportantProcesses:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "system_server"

    aput-object v1, v0, v2

    const-string v1, "zygote"

    aput-object v1, v0, v3

    const-string v1, "zygote64"

    aput-object v1, v0, v4

    const-string v1, "surfaceflinger"

    aput-object v1, v0, v5

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mVerytImportantProcesses:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "com.android.systemui"

    aput-object v1, v0, v2

    const-string v1, "com.miui.home"

    aput-object v1, v0, v3

    const-string v1, "com.android.phone"

    aput-object v1, v0, v4

    const-string v1, "mediaserver"

    aput-object v1, v0, v5

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mImportantProcesses:[Ljava/lang/String;

    invoke-virtual {p0}, Lmiui/mqsas/sdk/event/ExceptionEvent;->initType()V

    const/4 v0, -0x1

    iput v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPid:I

    const-string v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    iput-boolean v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsSystem:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mTimeStamp:J

    const-string v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mSummary:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDetails:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDigest:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mLogName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mKeyWord:Ljava/lang/String;

    iput-boolean v2, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsUpload:Z

    return-void
.end method


# virtual methods
.method public getDetails()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDetails:Ljava/lang/String;

    return-object v0
.end method

.method public getDigest()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDigest:Ljava/lang/String;

    return-object v0
.end method

.method public getEventSeverity()I
    .locals 1

    .prologue
    const/4 v0, 0x2

    return v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mKeyWord:Ljava/lang/String;

    return-object v0
.end method

.method public getLogName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mLogName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPid:I

    return v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mTimeStamp:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mType:I

    return v0
.end method

.method public initType()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    iput v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mType:I

    return-void
.end method

.method public isSystem()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsSystem:Z

    return v0
.end method

.method public isUpload()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsUpload:Z

    return v0
.end method

.method public judgeProcessLevel()I
    .locals 5

    .prologue
    iget-object v4, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, -0x1

    :goto_0
    return v4

    :cond_1
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mVerytImportantProcesses:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .local v3, "process":Ljava/lang/String;
    iget-object v4, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "process":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mImportantProcesses:[Ljava/lang/String;

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_7

    aget-object v3, v0, v1

    .restart local v3    # "process":Ljava/lang/String;
    iget-object v4, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    const/4 v4, 0x1

    goto :goto_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v3    # "process":Ljava/lang/String;
    :cond_7
    const/4 v4, 0x2

    goto :goto_0
.end method

.method public setDetails(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDetails"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDetails:Ljava/lang/String;

    return-void
.end method

.method public setDigest(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDigest"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mDigest:Ljava/lang/String;

    return-void
.end method

.method public setKeyWord(Ljava/lang/String;)V
    .locals 0
    .param p1, "mKeyWord"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mKeyWord:Ljava/lang/String;

    return-void
.end method

.method public setLogName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mLogName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mLogName:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPackageName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setPid(I)V
    .locals 0
    .param p1, "mPid"    # I

    .prologue
    iput p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mPid:I

    return-void
.end method

.method public setProcessName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mProcessName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mProcessName:Ljava/lang/String;

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSummary"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mSummary:Ljava/lang/String;

    return-void
.end method

.method public setSystem(Z)V
    .locals 0
    .param p1, "system"    # Z

    .prologue
    iput-boolean p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsSystem:Z

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1
    .param p1, "mTimeStamp"    # J

    .prologue
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mTimeStamp:J

    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "mType"    # I

    .prologue
    iput p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mType:I

    return-void
.end method

.method public setUpload(Z)V
    .locals 0
    .param p1, "upload"    # Z

    .prologue
    iput-boolean p1, p0, Lmiui/mqsas/sdk/event/ExceptionEvent;->mIsUpload:Z

    return-void
.end method
