.class public final Landroid/bluetooth/BleScanWrapper;
.super Ljava/lang/Object;
.source "BleScanWrapper.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BleScanWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClientIf:I

.field private final mFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final mOpPackageName:Ljava/lang/String;

.field private final mResultStorages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSettings:Landroid/bluetooth/le/ScanSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/bluetooth/BleScanWrapper$1;

    invoke-direct {v0}, Landroid/bluetooth/BleScanWrapper$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BleScanWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .param p1, "clientIf"    # I
    .param p2, "settings"    # Landroid/bluetooth/le/ScanSettings;
    .param p5, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanFilter;>;"
    .local p4, "resultStorages":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/bluetooth/le/ResultStorageDescriptor;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    iput-object p2, p0, Landroid/bluetooth/BleScanWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    iput-object p3, p0, Landroid/bluetooth/BleScanWrapper;->mFilters:Ljava/util/List;

    iput-object p4, p0, Landroid/bluetooth/BleScanWrapper;->mResultStorages:Ljava/util/List;

    iput-object p5, p0, Landroid/bluetooth/BleScanWrapper;->mOpPackageName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Landroid/bluetooth/le/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ScanSettings;

    iput-object v1, p0, Landroid/bluetooth/BleScanWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    :goto_0
    sget-object v1, Landroid/bluetooth/le/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BleScanWrapper;->mFilters:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .local v0, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BleScanWrapper;->mResultStorages:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BleScanWrapper;->mOpPackageName:Ljava/lang/String;

    return-void

    .end local v0    # "cl":Ljava/lang/ClassLoader;
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/bluetooth/BleScanWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/BleScanWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/bluetooth/BleScanWrapper$1;

    .prologue
    invoke-direct {p0, p1}, Landroid/bluetooth/BleScanWrapper;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/bluetooth/BleScanWrapper;

    .local v0, "other":Landroid/bluetooth/BleScanWrapper;
    iget v3, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    iget v4, v0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public startScan(Landroid/bluetooth/IBluetoothGatt;)V
    .locals 7
    .param p1, "gatt"    # Landroid/bluetooth/IBluetoothGatt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget v1, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/bluetooth/BleScanWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    iget-object v4, p0, Landroid/bluetooth/BleScanWrapper;->mFilters:Ljava/util/List;

    iget-object v5, p0, Landroid/bluetooth/BleScanWrapper;->mResultStorages:Ljava/util/List;

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt;->startScan(IZLandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public stopScan(Landroid/bluetooth/IBluetoothGatt;)V
    .locals 2
    .param p1, "gatt"    # Landroid/bluetooth/IBluetoothGatt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/bluetooth/IBluetoothGatt;->stopScan(IZ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroid/bluetooth/BleScanWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[mClientIf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

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
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    iget v0, p0, Landroid/bluetooth/BleScanWrapper;->mClientIf:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mSettings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/le/ScanSettings;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mFilters:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mResultStorages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object v0, p0, Landroid/bluetooth/BleScanWrapper;->mOpPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
