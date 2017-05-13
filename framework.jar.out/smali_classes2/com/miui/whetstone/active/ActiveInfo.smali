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
    .line 96
    new-instance v0, Lcom/miui/whetstone/active/ActiveInfo$1;

    invoke-direct {v0}, Lcom/miui/whetstone/active/ActiveInfo$1;-><init>()V

    sput-object v0, Lcom/miui/whetstone/active/ActiveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mPackageName:Ljava/lang/String;

    .line 20
    iput v1, p0, Lcom/miui/whetstone/active/ActiveInfo;->mUid:I

    .line 21
    iput v1, p0, Lcom/miui/whetstone/active/ActiveInfo;->mPid:I

    .line 22
    iput v1, p0, Lcom/miui/whetstone/active/ActiveInfo;->mType:I

    .line 23
    iput v1, p0, Lcom/miui/whetstone/active/ActiveInfo;->mLevel:I

    .line 24
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-virtual {p0, p1}, Lcom/miui/whetstone/active/ActiveInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/whetstone/active/ActiveInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/miui/whetstone/active/ActiveInfo$1;

    .prologue
    .line 11
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
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/miui/whetstone/active/ActiveInfo;->mPackageName:Ljava/lang/String;

    .line 28
    iput p2, p0, Lcom/miui/whetstone/active/ActiveInfo;->mUid:I

    .line 29
    iput p4, p0, Lcom/miui/whetstone/active/ActiveInfo;->mPid:I

    .line 30
    iput p3, p0, Lcom/miui/whetstone/active/ActiveInfo;->mType:I

    .line 31
    iput p5, p0, Lcom/miui/whetstone/active/ActiveInfo;->mLevel:I

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mLevel:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mPid:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mType:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mUid:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mPackageName:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mUid:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mPid:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mType:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mLevel:I

    .line 94
    return-void
.end method

.method public setLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/miui/whetstone/active/ActiveInfo;->mLevel:I

    .line 68
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/miui/whetstone/active/ActiveInfo;->mPackageName:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setPid(I)V
    .locals 0
    .param p1, "pid"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/miui/whetstone/active/ActiveInfo;->mPid:I

    .line 60
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/miui/whetstone/active/ActiveInfo;->mType:I

    .line 52
    return-void
.end method

.method public setUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/miui/whetstone/active/ActiveInfo;->mUid:I

    .line 44
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Lcom/miui/whetstone/active/ActiveInfo;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    return-void
.end method
