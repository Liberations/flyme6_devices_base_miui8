.class public Lcom/android/internal/app/MiuiServicePriority;
.super Ljava/lang/Object;
.source "MiuiServicePriority.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/app/MiuiServicePriority;",
            ">;"
        }
    .end annotation
.end field

.field public static final HIGH_PRIORITY:I = 0xa

.field public static final LOW_PRIORITY:I = -0xa

.field public static final NORMAL_PRIORITY:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public checkPriority:Z

.field public delayTime:J

.field public inBlacklist:Z

.field public packageName:Ljava/lang/String;

.field public priority:I

.field public serviceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/app/MiuiServicePriority$1;

    invoke-direct {v0}, Lcom/android/internal/app/MiuiServicePriority$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/MiuiServicePriority;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/internal/app/MiuiServicePriority;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/app/MiuiServicePriority$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/internal/app/MiuiServicePriority$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/MiuiServicePriority;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZZJ)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "priority"    # I
    .param p4, "checkPriority"    # Z
    .param p5, "inBlacklist"    # Z
    .param p6, "delayTime"    # J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/app/MiuiServicePriority;->priority:I

    iput-boolean p4, p0, Lcom/android/internal/app/MiuiServicePriority;->checkPriority:Z

    iput-boolean p5, p0, Lcom/android/internal/app/MiuiServicePriority;->inBlacklist:Z

    iput-wide p6, p0, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/MiuiServicePriority;->priority:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/app/MiuiServicePriority;->checkPriority:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/android/internal/app/MiuiServicePriority;->inBlacklist:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/app/MiuiServicePriority;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/MiuiServicePriority;->serviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/app/MiuiServicePriority;->priority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/internal/app/MiuiServicePriority;->checkPriority:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/android/internal/app/MiuiServicePriority;->inBlacklist:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/android/internal/app/MiuiServicePriority;->delayTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
