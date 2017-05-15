.class final Lmiui/view/VolumeDialog$StreamState;
.super Ljava/lang/Object;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StreamState"
.end annotation


# instance fields
.field private level:I

.field private levelMax:I

.field private levelMin:I

.field private muteSupported:Z

.field private muted:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1600(Lmiui/view/VolumeDialog$StreamState;)I
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumeDialog$StreamState;

    .prologue
    iget v0, p0, Lmiui/view/VolumeDialog$StreamState;->level:I

    return v0
.end method

.method static synthetic access$1800(Lmiui/view/VolumeDialog$StreamState;)I
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumeDialog$StreamState;

    .prologue
    iget v0, p0, Lmiui/view/VolumeDialog$StreamState;->levelMax:I

    return v0
.end method

.method static synthetic access$1900(Lmiui/view/VolumeDialog$StreamState;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumeDialog$StreamState;

    .prologue
    iget-boolean v0, p0, Lmiui/view/VolumeDialog$StreamState;->muted:Z

    return v0
.end method

.method static synthetic access$2000(Lmiui/view/VolumeDialog$StreamState;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumeDialog$StreamState;

    .prologue
    iget-boolean v0, p0, Lmiui/view/VolumeDialog$StreamState;->muteSupported:Z

    return v0
.end method

.method static synthetic access$3900(Lmiui/view/VolumeDialog$StreamState;)I
    .locals 1
    .param p0, "x0"    # Lmiui/view/VolumeDialog$StreamState;

    .prologue
    iget v0, p0, Lmiui/view/VolumeDialog$StreamState;->levelMin:I

    return v0
.end method

.method public static getStreamStateByStreamType(Landroid/content/Context;ILmiui/view/VolumeDialog$VolumePanelDelegate;)Lmiui/view/VolumeDialog$StreamState;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "delegate"    # Lmiui/view/VolumeDialog$VolumePanelDelegate;

    .prologue
    new-instance v1, Lmiui/view/VolumeDialog$StreamState;

    invoke-direct {v1}, Lmiui/view/VolumeDialog$StreamState;-><init>()V

    .local v1, "ret":Lmiui/view/VolumeDialog$StreamState;
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    iput v2, v1, Lmiui/view/VolumeDialog$StreamState;->level:I

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    iput v2, v1, Lmiui/view/VolumeDialog$StreamState;->levelMax:I

    invoke-interface {p2, p1}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->getStreamMinVolume(I)I

    move-result v2

    iput v2, v1, Lmiui/view/VolumeDialog$StreamState;->levelMin:I

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v2

    iput-boolean v2, v1, Lmiui/view/VolumeDialog$StreamState;->muted:Z

    invoke-interface {p2, p1}, Lmiui/view/VolumeDialog$VolumePanelDelegate;->isStreamAffectedByMute(I)Z

    move-result v2

    iput-boolean v2, v1, Lmiui/view/VolumeDialog$StreamState;->muteSupported:Z

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_1

    const/4 v2, 0x6

    if-eq p1, v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget v2, v1, Lmiui/view/VolumeDialog$StreamState;->level:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lmiui/view/VolumeDialog$StreamState;->level:I

    iget v2, v1, Lmiui/view/VolumeDialog$StreamState;->levelMax:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lmiui/view/VolumeDialog$StreamState;->levelMax:I

    :cond_1
    return-object v1
.end method


# virtual methods
.method public copy()Lmiui/view/VolumeDialog$StreamState;
    .locals 2

    .prologue
    new-instance v0, Lmiui/view/VolumeDialog$StreamState;

    invoke-direct {v0}, Lmiui/view/VolumeDialog$StreamState;-><init>()V

    .local v0, "ret":Lmiui/view/VolumeDialog$StreamState;
    iget v1, p0, Lmiui/view/VolumeDialog$StreamState;->level:I

    iput v1, v0, Lmiui/view/VolumeDialog$StreamState;->level:I

    iget v1, p0, Lmiui/view/VolumeDialog$StreamState;->levelMin:I

    iput v1, v0, Lmiui/view/VolumeDialog$StreamState;->levelMin:I

    iget v1, p0, Lmiui/view/VolumeDialog$StreamState;->levelMax:I

    iput v1, v0, Lmiui/view/VolumeDialog$StreamState;->levelMax:I

    iget-boolean v1, p0, Lmiui/view/VolumeDialog$StreamState;->muted:Z

    iput-boolean v1, v0, Lmiui/view/VolumeDialog$StreamState;->muted:Z

    iget-boolean v1, p0, Lmiui/view/VolumeDialog$StreamState;->muteSupported:Z

    iput-boolean v1, v0, Lmiui/view/VolumeDialog$StreamState;->muteSupported:Z

    return-object v0
.end method
