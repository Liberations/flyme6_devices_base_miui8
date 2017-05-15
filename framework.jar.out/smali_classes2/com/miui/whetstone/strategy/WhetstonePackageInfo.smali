.class public Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
.super Ljava/lang/Object;
.source "WhetstonePackageInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CAP_LOWMEM_KILL:I = 0x1

.field public static final CAP_LOWMEM_THRESOLD_KILL:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/whetstone/strategy/WhetstonePackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_ANDROID_PERSISTENT_APP:I = 0x40000

.field public static final FLAG_APP_STOP:I = 0x40000000

.field public static final FLAG_APP_SYSTEM:I = -0x80000000

.field public static final FLAG_BACKGROUND_START:I = 0x100

.field public static final FLAG_BITMAPCACHE:I = 0x1

.field public static final FLAG_DEAL_SCHEDULE:I = 0x1000

.field public static final FLAG_DESTORYACTIVITY:I = 0x4

.field public static final FLAG_DISABLEOPENGL:I = 0x2

.field public static final FLAG_DISABLE_WAKELOCK:I = 0x4000

.field public static final FLAG_ONEKEY_CLEAN_NO_UI_WHITE:I = 0x20000

.field public static final FLAG_ONEKEY_CLEAN_WHITE:I = 0x10000

.field public static final FLAG_SOFT_RESET:I = 0x400

.field public static final FLAG_TRIMBACKGOUNDAPPS:I = 0x20

.field public static final FLAG_TRIMHEAPS:I = 0x40

.field public static final FLAG_TRIMHEAPSIZE:I = 0x2000

.field public static final FLAG_TRIMPROCESS_BY_ACTIVITY:I = 0x800

.field public static final FLAG_TRIMSERVICES:I = 0x10

.field public static final FLAG_TRIM_OPENGL:I = 0x200

.field public static final FLAG_UPDATESETTING:I = 0x8

.field public static final FLAG_ZRAM:I = 0x80

.field public static final TRIM_LEVEL_WHETSTONE_HEAP:I = 0x3e9

.field public static final TRIM_LEVLE_WHETSTONE_BITMAPCACHE:I = 0x3e8

.field public static final TRIM_LEVLE_WHETSTONE_DEFAULT:I = 0x44c

.field public static final TRIM_LEVLE_WHETSTONE_NATIVE:I = 0x3ea

.field public static final TYPE_AUTO_START:I = 0x40

.field public static final TYPE_GAME:I = 0x2

.field public static final TYPE_IM_PUSH:I = 0x1

.field public static final TYPE_INPUT_METHOD:I = 0x20

.field public static final TYPE_LARGE_MEMORY:I = 0x80

.field public static final TYPE_MUSIC:I = 0x4

.field public static final TYPE_NOTE:I = 0x8

.field public static final TYPE_NOTIFICATION:I = 0x10


# instance fields
.field public capacity:I

.field public flag:I

.field public mScreenOffClear:Z

.field public nonUiMemoryThresold:I

.field public packageName:Ljava/lang/String;

.field public samePackageList:Ljava/lang/String;

.field public type:I

.field public uiMemoryThresold:I

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo$1;

    invoke-direct {v0}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo$1;-><init>()V

    sput-object v0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/whetstone/strategy/WhetstonePackageInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/miui/whetstone/strategy/WhetstonePackageInfo$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIIZ)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "samePList"    # Ljava/lang/String;
    .param p3, "packageCapability"    # I
    .param p4, "uiThreshold"    # I
    .param p5, "nonUiThreshold"    # I
    .param p6, "screenOffClear"    # Z

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->samePackageList:Ljava/lang/String;

    iput p3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->capacity:I

    iput p4, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uiMemoryThresold:I

    iput p5, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->nonUiMemoryThresold:I

    iput-boolean p6, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mScreenOffClear:Z

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "system"    # Z

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->packageName:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/high16 v0, -0x80000000

    :goto_0
    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    iput v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    iput-boolean v1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->mScreenOffClear:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addFlag(I)V
    .locals 1
    .param p1, "flg"    # I

    .prologue
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    return-void
.end method

.method public addType(I)V
    .locals 1
    .param p1, "flag"    # I

    .prologue
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uid:I

    return v0
.end method

.method public isDisableWakelock()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnable(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSystemApp()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isType(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uid:I

    return-void
.end method

.method public setUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    iput p1, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uid:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{WhetstonePackageInfo#PacakgeName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " uiMemoryThresold:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uiMemoryThresold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " nonUiMemoryThresold:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->nonUiMemoryThresold:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "hexFlag":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Flag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const-string v2, ",BitmapCache"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    const-string v2, ",DestoryActivity"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    const-string v2, ",isOPENGLDiable"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_3

    const-string v2, ",TRIMHEAPS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_4

    const-string v2, ",TRIM_OPENGL"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_5

    const-string v2, ",SOFT_RESET"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_6

    const-string v2, ",APP_SYSTEM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_7

    const-string v2, ",ZRAM"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_8

    const-string v2, ",TRIMPROCESS_BY_ACTIVITY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_9

    const-string v2, ",FLAG_DEAL_SCHEDULE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    and-int/lit16 v2, v2, 0x2000

    if-eqz v2, :cond_a

    const-string v2, ",FLAG_TRIMHEAPSIZE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "] Type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_b

    const-string v2, ",IM_PUSH"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_c

    const-string v2, ",Game"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_d

    const-string v2, ",note"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_e

    const-string v2, ",notification"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_f

    const-string v2, ",AUTO_START"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    iget v2, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_10

    const-string v2, ",TYPE_LARGE_MEMORY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    const-string v2, "] }"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->flag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/miui/whetstone/strategy/WhetstonePackageInfo;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
