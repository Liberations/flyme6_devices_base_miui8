.class public Lcom/miui/whetstone/WhetstonePackageState;
.super Ljava/lang/Object;
.source "WhetstonePackageState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;,
        Lcom/miui/whetstone/WhetstonePackageState$LinkedRingbuffer;,
        Lcom/miui/whetstone/WhetstonePackageState$UserState;,
        Lcom/miui/whetstone/WhetstonePackageState$UserIdNotFoundException;
    }
.end annotation


# static fields
.field public static final CLOUD_USERID:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/whetstone/WhetstonePackageState;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEBUG:Z

.field public static final SERVICE_RESTART:Ljava/lang/String; = "Restart: AMS"

.field public static final TAG:Ljava/lang/String; = "WhetstonePackageState"

.field public static final WPS_CHECK_FALSE:I = -0x1

.field public static final WPS_CHECK_TRUE:I = 0x1

.field public static final WPS_FEATURE_ACTIVITY:I = 0x1

.field public static final WPS_FEATURE_ALL_OFF:I = 0x0

.field public static final WPS_FEATURE_ALL_OPEN:I = 0xf

.field public static final WPS_FEATURE_FOREGROUND_OFF:I = -0x80000000

.field public static final WPS_FEATURE_PROVIDER:I = 0x8

.field public static final WPS_FEATURE_RECEIVER:I = 0x4

.field public static final WPS_FEATURE_SERVICE:I = 0x2

.field public static final WPS_START_BY_ACTIVITY:I = 0x1

.field public static final WPS_START_BY_ALL:I = 0xf

.field public static final WPS_START_BY_BROADCAST_INTENT:I = 0x4

.field public static final WPS_START_BY_DEFAULT:I = 0x0

.field public static final WPS_START_BY_FOREGROUND_OFF:I = -0x80000000

.field public static final WPS_START_BY_PROVIDER:I = 0x8

.field public static final WPS_START_BY_RECEIVER:I = 0x4

.field public static final WPS_START_BY_SERVICE:I = 0x2

.field public static final WPS_START_FORBIDDEN:I


# instance fields
.field private mCloudState:Z

.field private mPackageName:Ljava/lang/String;

.field private mUserState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/miui/whetstone/WhetstonePackageState$UserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-boolean v0, Lcom/miui/whetstone/WhetstoneManager;->DEBUG:Z

    sput-boolean v0, Lcom/miui/whetstone/WhetstonePackageState;->DEBUG:Z

    new-instance v0, Lcom/miui/whetstone/WhetstonePackageState$1;

    invoke-direct {v0}, Lcom/miui/whetstone/WhetstonePackageState$1;-><init>()V

    sput-object v0, Lcom/miui/whetstone/WhetstonePackageState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/whetstone/WhetstonePackageState;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/whetstone/WhetstonePackageState$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/miui/whetstone/WhetstonePackageState$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/whetstone/WhetstonePackageState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/whetstone/WhetstonePackageState;)V
    .locals 6
    .param p1, "state"    # Lcom/miui/whetstone/WhetstonePackageState;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v2, p1, Lcom/miui/whetstone/WhetstonePackageState;->mPackageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/miui/whetstone/WhetstonePackageState;->mPackageName:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    iget-object v2, p1, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/WhetstonePackageState$UserState;>;"
    iget-object v3, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Lcom/miui/whetstone/WhetstonePackageState$UserState;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/whetstone/WhetstonePackageState$UserState;

    invoke-direct {v5, v2}, Lcom/miui/whetstone/WhetstonePackageState$UserState;-><init>(Lcom/miui/whetstone/WhetstonePackageState$UserState;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/WhetstonePackageState$UserState;>;"
    :cond_0
    iget-boolean v2, p1, Lcom/miui/whetstone/WhetstonePackageState;->mCloudState:Z

    iput-boolean v2, p0, Lcom/miui/whetstone/WhetstonePackageState;->mCloudState:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/whetstone/WhetstonePackageState;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cloudState"    # Z

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    iput-object p1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mPackageName:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/miui/whetstone/WhetstonePackageState;->mCloudState:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized countBlockDebug(ILjava/lang/String;I)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mCloudState:Z

    if-eqz v1, :cond_0

    const/4 p3, 0x0

    :cond_0
    iget-object v1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/WhetstonePackageState$UserState;

    .local v0, "state":Lcom/miui/whetstone/WhetstonePackageState$UserState;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mDebugInfo:Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;

    invoke-virtual {v1, p1, p2}, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->addDeniedRecord(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    .end local v0    # "state":Lcom/miui/whetstone/WhetstonePackageState$UserState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAdditionalInfo(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/whetstone/WhetstonePackageState$UserIdNotFoundException;
        }
    .end annotation

    .prologue
    iget-boolean v1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mCloudState:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/WhetstonePackageState$UserState;

    .local v0, "state":Lcom/miui/whetstone/WhetstonePackageState$UserState;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mAdditionalInfo:Ljava/lang/String;

    return-object v1

    :cond_1
    new-instance v1, Lcom/miui/whetstone/WhetstonePackageState$UserIdNotFoundException;

    invoke-direct {v1, p1}, Lcom/miui/whetstone/WhetstonePackageState$UserIdNotFoundException;-><init>(I)V

    throw v1
.end method

.method public declared-synchronized getBlockedCount(I)I
    .locals 4
    .param p1, "type"    # I

    .prologue
    monitor-enter p0

    const/4 v1, 0x0

    .local v1, "out":I
    :try_start_0
    iget-object v3, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/whetstone/WhetstonePackageState$UserState;

    .local v2, "state":Lcom/miui/whetstone/WhetstonePackageState$UserState;
    iget-object v3, v2, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mDebugInfo:Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;

    invoke-virtual {v3, p1}, Lcom/miui/whetstone/WhetstonePackageState$DebugInfo;->getCount(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0

    .end local v2    # "state":Lcom/miui/whetstone/WhetstonePackageState$UserState;
    :cond_0
    monitor-exit p0

    return v1

    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getMask(I)I
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/whetstone/WhetstonePackageState$UserIdNotFoundException;
        }
    .end annotation

    .prologue
    iget-boolean v1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mCloudState:Z

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-object v1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/WhetstonePackageState$UserState;

    .local v0, "state":Lcom/miui/whetstone/WhetstonePackageState$UserState;
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mStartMask:I

    return v1

    :cond_1
    new-instance v1, Lcom/miui/whetstone/WhetstonePackageState$UserIdNotFoundException;

    invoke-direct {v1, p1}, Lcom/miui/whetstone/WhetstonePackageState$UserIdNotFoundException;-><init>(I)V

    throw v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/miui/whetstone/WhetstonePackageState;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isControlledByCloud()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/miui/whetstone/WhetstonePackageState;->mCloudState:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 9
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/whetstone/WhetstonePackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, "sz":I
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v6, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .local v4, "userId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, "additionalInfo":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, "mask":I
    iget-object v6, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/miui/whetstone/WhetstonePackageState$UserState;

    invoke-direct {v8, v0, v2, v4}, Lcom/miui/whetstone/WhetstonePackageState$UserState;-><init>(Ljava/lang/String;II)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "additionalInfo":Ljava/lang/String;
    .end local v2    # "mask":I
    .end local v4    # "userId":I
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v5, :cond_1

    :goto_1
    iput-boolean v5, p0, Lcom/miui/whetstone/WhetstonePackageState;->mCloudState:Z

    return-void

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public declared-synchronized setAdditionalInfo(Ljava/lang/String;I)V
    .locals 3
    .param p1, "additionalInfo"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/whetstone/WhetstonePackageState$UserIdNotFoundException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mCloudState:Z

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iget-object v1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/WhetstonePackageState$UserState;

    .local v0, "state":Lcom/miui/whetstone/WhetstonePackageState$UserState;
    if-eqz v0, :cond_1

    iput-object p1, v0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mAdditionalInfo:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Lcom/miui/whetstone/WhetstonePackageState$UserIdNotFoundException;

    invoke-direct {v1, p2}, Lcom/miui/whetstone/WhetstonePackageState$UserIdNotFoundException;-><init>(I)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "state":Lcom/miui/whetstone/WhetstonePackageState$UserState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setCloudControl(Z)V
    .locals 1
    .param p1, "cloudable"    # Z

    .prologue
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mCloudState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMask(II)V
    .locals 3
    .param p1, "mask"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/miui/whetstone/WhetstonePackageState$UserIdNotFoundException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mCloudState:Z

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    :cond_0
    iget-object v1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/WhetstonePackageState$UserState;

    .local v0, "state":Lcom/miui/whetstone/WhetstonePackageState$UserState;
    if-eqz v0, :cond_1

    iput p1, v0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mStartMask:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Lcom/miui/whetstone/WhetstonePackageState$UserIdNotFoundException;

    invoke-direct {v1, p2}, Lcom/miui/whetstone/WhetstonePackageState$UserIdNotFoundException;-><init>(I)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "state":Lcom/miui/whetstone/WhetstonePackageState$UserState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mPackageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setState(ILjava/lang/String;I)V
    .locals 4
    .param p1, "startMask"    # I
    .param p2, "additionalInfo"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    iget-boolean v1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mCloudState:Z

    if-eqz v1, :cond_0

    const/4 p3, 0x0

    :cond_0
    iget-object v1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/whetstone/WhetstonePackageState$UserState;

    .local v0, "state":Lcom/miui/whetstone/WhetstonePackageState$UserState;
    if-eqz v0, :cond_1

    iput-object p2, v0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mAdditionalInfo:Ljava/lang/String;

    iput p1, v0, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mStartMask:I

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/miui/whetstone/WhetstonePackageState$UserState;

    invoke-direct {v3, p2, p1, p3}, Lcom/miui/whetstone/WhetstonePackageState$UserState;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v3, "PackageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/whetstone/WhetstonePackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/whetstone/WhetstonePackageState;->mCloudState:Z

    if-eqz v3, :cond_0

    const-string v3, "This package is controlled by Cloud \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v3, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/whetstone/WhetstonePackageState$UserState;

    .local v1, "state":Lcom/miui/whetstone/WhetstonePackageState$UserState;
    invoke-virtual {v1}, Lcom/miui/whetstone/WhetstonePackageState$UserState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "state":Lcom/miui/whetstone/WhetstonePackageState$UserState;
    :cond_0
    const-string v3, "This package is not controlled by Cloud \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v3, "------------------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v3, p0, Lcom/miui/whetstone/WhetstonePackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v2

    .local v2, "sz":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Lcom/miui/whetstone/WhetstonePackageState;->mUserState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/WhetstonePackageState$UserState;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/whetstone/WhetstonePackageState$UserState;

    iget-object v3, v3, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mAdditionalInfo:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/whetstone/WhetstonePackageState$UserState;

    iget v3, v3, Lcom/miui/whetstone/WhetstonePackageState$UserState;->mStartMask:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/miui/whetstone/WhetstonePackageState$UserState;>;"
    :cond_0
    iget-boolean v3, p0, Lcom/miui/whetstone/WhetstonePackageState;->mCloudState:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
