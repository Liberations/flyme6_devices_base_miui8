.class public Landroid/hardware/fingerprint/FingerprintFidoOut;
.super Ljava/lang/Object;
.source "FingerprintFidoOut.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/fingerprint/FingerprintFidoOut;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fingerId:I

.field private uvt:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Landroid/hardware/fingerprint/FingerprintFidoOut$1;

    invoke-direct {v0}, Landroid/hardware/fingerprint/FingerprintFidoOut$1;-><init>()V

    sput-object v0, Landroid/hardware/fingerprint/FingerprintFidoOut;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 18
    .local v0, "ba":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 19
    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintFidoOut;->uvt:[B

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/hardware/fingerprint/FingerprintFidoOut;->fingerId:I

    .line 21
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public getFingerId()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintFidoOut;->fingerId:I

    return v0
.end method

.method public getUvt()[B
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintFidoOut;->uvt:[B

    return-object v0
.end method

.method public setFingerId(I)V
    .locals 0
    .param p1, "fingerId"    # I

    .prologue
    .line 36
    iput p1, p0, Landroid/hardware/fingerprint/FingerprintFidoOut;->fingerId:I

    .line 37
    return-void
.end method

.method public setUvt([B)V
    .locals 0
    .param p1, "uvt"    # [B

    .prologue
    .line 28
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintFidoOut;->uvt:[B

    .line 29
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FingerprintFidoOut [uvt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintFidoOut;->uvt:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fingerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/fingerprint/FingerprintFidoOut;->fingerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 46
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintFidoOut;->uvt:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 47
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintFidoOut;->fingerId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    return-void
.end method
