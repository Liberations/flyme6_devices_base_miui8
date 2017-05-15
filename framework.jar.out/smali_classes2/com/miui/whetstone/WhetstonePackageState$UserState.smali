.class public Lcom/miui/whetstone/WhetstonePackageState$UserState;
.super Ljava/lang/Object;
.source "WhetstonePackageState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/whetstone/WhetstonePackageState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserState"
.end annotation


# instance fields
.field mAdditionalInfo:Ljava/lang/String;

.field mDebugInfo:Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;

.field mStartMask:I

.field mUserId:I


# direct methods
.method public constructor <init>(Lcom/miui/whetstone/WhetstonePackageState$UserState;)V
    .locals 1
    .param p1, "that"    # Lcom/miui/whetstone/WhetstonePackageState$UserState;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mUserId:I

    iput v0, p0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mUserId:I

    iget-object v0, p1, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mAdditionalInfo:Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mAdditionalInfo:Ljava/lang/String;

    iget v0, p1, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mStartMask:I

    iput v0, p0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mStartMask:I

    iget-object v0, p1, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mDebugInfo:Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;

    iput-object v0, p0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mDebugInfo:Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p1, "additionalInfo"    # Ljava/lang/String;
    .param p2, "mask"    # I
    .param p3, "userId"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mUserId:I

    iput-object p1, p0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mAdditionalInfo:Ljava/lang/String;

    iput p2, p0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mStartMask:I

    new-instance v0, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;-><init>(Lcom/miui/whetstone/WhetstonePackageState$1;)V

    iput-object v0, p0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mDebugInfo:Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "####"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "UserId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Mask: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mStartMask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Additional Info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mAdditionalInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mStartMask:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string v1, "Start Process From Activity: on\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget v1, p0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mStartMask:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const-string v1, "Start Process From Service: on\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget v1, p0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mStartMask:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const-string v1, "Start Process From Broadcast Receiver: on\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    iget v1, p0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mStartMask:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    const-string v1, "Start Process From content provider: on\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    iget v1, p0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mStartMask:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    const-string v1, "Start Process From Foreground Process: off\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    iget-object v1, p0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mDebugInfo:Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;

    invoke-virtual {v1}, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "Start Process From Activity: off\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "Start Process From Service: off\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v1, "Start Process From Broadcast Receiver: off\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string v1, "Start Process From content provider: off\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    const-string v1, "Start Process From Foreground Process: on\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method
