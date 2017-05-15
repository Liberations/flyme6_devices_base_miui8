.class public Lmiui/mqsas/sdk/event/PackageEvent;
.super Ljava/lang/Object;
.source "PackageEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_PACKAGE_INSTALL:I = 0x1

.field public static final ACTION_PACKAGE_UNINSTALL:I = 0x2

.field public static final ACTION_PACKAGE_UPDATE:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmiui/mqsas/sdk/event/PackageEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAction:I

.field private mInstallerPkgName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mReturnCode:I

.field private mReturnMsg:Ljava/lang/String;

.field private mTimeStamp:J

.field private mType:I

.field private mVersionCode:I

.field private mVersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lmiui/mqsas/sdk/event/PackageEvent$1;

    invoke-direct {v0}, Lmiui/mqsas/sdk/event/PackageEvent$1;-><init>()V

    sput-object v0, Lmiui/mqsas/sdk/event/PackageEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mType:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mTimeStamp:J

    iput v2, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mAction:I

    const-string v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mPackageName:Ljava/lang/String;

    iput v2, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mReturnCode:I

    const-string v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mReturnMsg:Ljava/lang/String;

    iput v2, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mVersionCode:I

    const-string v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mVersionName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mInstallerPkgName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mTimeStamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mAction:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mReturnCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mReturnMsg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mVersionCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mVersionName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mInstallerPkgName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmiui/mqsas/sdk/event/PackageEvent$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lmiui/mqsas/sdk/event/PackageEvent$1;

    .prologue
    invoke-direct {p0, p1}, Lmiui/mqsas/sdk/event/PackageEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static actionToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "action"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    const-string v0, "Unknown"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Install"

    goto :goto_0

    :pswitch_1
    const-string v0, "Update"

    goto :goto_0

    :pswitch_2
    const-string v0, "Uninstall"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private formatTime(J)Ljava/lang/String;
    .locals 3
    .param p1, "timestamp"    # J

    .prologue
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mAction:I

    return v0
.end method

.method public getInstallerPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mInstallerPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnCode()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mReturnCode:I

    return v0
.end method

.method public getReturnMsg()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mReturnMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mTimeStamp:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mType:I

    return v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    iget v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mVersionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    iput p1, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mAction:I

    return-void
.end method

.method public setInstallerPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "installerPkgName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mInstallerPkgName:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setReturnCode(I)V
    .locals 0
    .param p1, "returnCode"    # I

    .prologue
    iput p1, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mReturnCode:I

    return-void
.end method

.method public setReturnMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "returnMsg"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mReturnMsg:Ljava/lang/String;

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .prologue
    iput-wide p1, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mTimeStamp:J

    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    iput p1, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mType:I

    return-void
.end method

.method public setVersionCode(I)V
    .locals 0
    .param p1, "versionCode"    # I

    .prologue
    iput p1, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mVersionCode:I

    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mVersionName:Ljava/lang/String;

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageEvent { mAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mAction:I

    invoke-static {v2}, Lmiui/mqsas/sdk/event/PackageEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mReturnCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mReturnCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PackageEvent { mTimeStamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mTimeStamp:J

    invoke-direct {p0, v2, v3}, Lmiui/mqsas/sdk/event/PackageEvent;->formatTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mAction:I

    invoke-static {v2}, Lmiui/mqsas/sdk/event/PackageEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mReturnCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mReturnCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mVersionCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mVersionName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mVersionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mInstallerPkgName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mInstallerPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mReturnCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mReturnMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mVersionCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mVersionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lmiui/mqsas/sdk/event/PackageEvent;->mInstallerPkgName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
