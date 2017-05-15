.class public Lcom/android/internal/app/LaunchTimeRecord;
.super Ljava/lang/Object;
.source "LaunchTimeRecord.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/app/LaunchTimeRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field activity:Ljava/lang/String;

.field launchEndTime:J

.field launchStartTime:J

.field launchTime:J

.field packageName:Ljava/lang/String;

.field type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/app/LaunchTimeRecord$1;

    invoke-direct {v0}, Lcom/android/internal/app/LaunchTimeRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/LaunchTimeRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/internal/app/LaunchTimeRecord;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/app/LaunchTimeRecord$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/internal/app/LaunchTimeRecord$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/app/LaunchTimeRecord;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activity"    # Ljava/lang/String;
    .param p3, "launchStartTime"    # J
    .param p5, "launchEndTime"    # J

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchStartTime:J

    iput-wide p5, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchEndTime:J

    sub-long v0, p5, p3

    iput-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchTime:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getActivity()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchEndTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchEndTime:J

    return-wide v0
.end method

.method public getLaunchStartTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchStartTime:J

    return-wide v0
.end method

.method public getLaunchTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchTime:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->type:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchStartTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchEndTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->type:I

    return-void
.end method

.method public setActivity(Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    return-void
.end method

.method public setLaunchEndTime(J)V
    .locals 1
    .param p1, "launchEndTime"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchEndTime:J

    return-void
.end method

.method public setLaunchStartTime(J)V
    .locals 1
    .param p1, "launchStartTime"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchStartTime:J

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->type:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
