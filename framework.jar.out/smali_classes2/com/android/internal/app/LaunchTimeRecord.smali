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
    .line 95
    new-instance v0, Lcom/android/internal/app/LaunchTimeRecord$1;

    invoke-direct {v0}, Lcom/android/internal/app/LaunchTimeRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/LaunchTimeRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    .line 18
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    .line 108
    invoke-virtual {p0, p1}, Lcom/android/internal/app/LaunchTimeRecord;->readFromParcel(Landroid/os/Parcel;)V

    .line 109
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/app/LaunchTimeRecord$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/internal/app/LaunchTimeRecord$1;

    .prologue
    .line 8
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

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    .line 23
    iput-wide p3, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchStartTime:J

    .line 24
    iput-wide p5, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchEndTime:J

    .line 25
    sub-long v0, p5, p3

    iput-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchTime:J

    .line 26
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    return-object v0
.end method

.method public getLaunchEndTime()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchEndTime:J

    return-wide v0
.end method

.method public getLaunchStartTime()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchStartTime:J

    return-wide v0
.end method

.method public getLaunchTime()J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchTime:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->type:I

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchStartTime:J

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchEndTime:J

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchTime:J

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->type:I

    .line 93
    return-void
.end method

.method public setActivity(Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setLaunchEndTime(J)V
    .locals 1
    .param p1, "launchEndTime"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchEndTime:J

    .line 54
    return-void
.end method

.method public setLaunchStartTime(J)V
    .locals 1
    .param p1, "launchStartTime"    # J

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchStartTime:J

    .line 46
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->packageName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/android/internal/app/LaunchTimeRecord;->type:I

    .line 66
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->activity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchStartTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 82
    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchEndTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    iget-wide v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->launchTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 84
    iget v0, p0, Lcom/android/internal/app/LaunchTimeRecord;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    return-void
.end method
