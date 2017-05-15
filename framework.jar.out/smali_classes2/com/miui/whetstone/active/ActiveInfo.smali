.class public Lcom/miui/whetstone/active/ActiveInfo;
.super Ljava/lang/Object;
.source "ActiveInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/whetstone/active/ActiveInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mLevel:I

.field mPackageName:Ljava/lang/String;

.field mPid:I

.field mType:I

.field mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/miui/whetstone/active/ActiveInfo$1;

    invoke-direct {v0}, Lcom/miui/whetstone/active/ActiveInfo$1;-><init>()V

    sput-object v0, Lcom/miui/whetstone/active/ActiveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mPackageName:Ljava/lang/String;

    iput v1, p0, Lcom/miui/whetstone/active/ActiveInfo;->mUid:I

    iput v1, p0, Lcom/miui/whetstone/active/ActiveInfo;->mPid:I

    iput v1, p0, Lcom/miui/whetstone/active/ActiveInfo;->mType:I

    iput v1, p0, Lcom/miui/whetstone/active/ActiveInfo;->mLevel:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/whetstone/active/ActiveInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/whetstone/active/ActiveInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/miui/whetstone/active/ActiveInfo$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/whetstone/active/ActiveInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "type"    # I
    .param p4, "pid"    # I
    .param p5, "level"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/whetstone/active/ActiveInfo;->mPackageName:Ljava/lang/String;

    iput p2, p0, Lcom/miui/whetstone/active/ActiveInfo;->mUid:I

    iput p4, p0, Lcom/miui/whetstone/active/ActiveInfo;->mPid:I

    iput p3, p0, Lcom/miui/whetstone/active/ActiveInfo;->mType:I

    iput p5, p0, Lcom/miui/whetstone/active/ActiveInfo;->mLevel:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mLevel:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mPid:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mType:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mUid:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mPid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mLevel:I

    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    iput p1, p0, Lcom/miui/whetstone/active/ActiveInfo;->mLevel:I

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/miui/whetstone/active/ActiveInfo;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setPid(I)V
    .locals 0
    .param p1, "pid"    # I

    .prologue
    iput p1, p0, Lcom/miui/whetstone/active/ActiveInfo;->mPid:I

    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    iput p1, p0, Lcom/miui/whetstone/active/ActiveInfo;->mType:I

    return-void
.end method

.method public setUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    iput p1, p0, Lcom/miui/whetstone/active/ActiveInfo;->mUid:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
