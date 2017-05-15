.class public Lcom/miui/whetstone/WhetstoneResult;
.super Ljava/lang/Object;
.source "WhetstoneResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/whetstone/WhetstoneResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCode:I

.field private mResult:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/miui/whetstone/WhetstoneResult$1;

    invoke-direct {v0}, Lcom/miui/whetstone/WhetstoneResult$1;-><init>()V

    sput-object v0, Lcom/miui/whetstone/WhetstoneResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/whetstone/WhetstoneResult;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "result"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/miui/whetstone/WhetstoneResult;->mCode:I

    iput-object p2, p0, Lcom/miui/whetstone/WhetstoneResult;->mResult:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/whetstone/WhetstoneResult;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/whetstone/WhetstoneResult$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/miui/whetstone/WhetstoneResult$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/whetstone/WhetstoneResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/miui/whetstone/WhetstoneResult;->mCode:I

    return v0
.end method

.method public getResult()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneResult;->mResult:Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/WhetstoneResult;->mCode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/WhetstoneResult;->mResult:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget v0, p0, Lcom/miui/whetstone/WhetstoneResult;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneResult;->mResult:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
