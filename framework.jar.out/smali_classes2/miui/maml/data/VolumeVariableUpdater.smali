.class public Lmiui/maml/data/VolumeVariableUpdater;
.super Lmiui/maml/data/NotifierVariableUpdater;
.source "VolumeVariableUpdater.java"


# static fields
.field private static final SHOW_DELAY_TIME:I = 0x3e8

.field public static final VAR_VOLUME_LEVEL:Ljava/lang/String; = "volume_level"

.field public static final VAR_VOLUME_LEVEL_OLD:Ljava/lang/String; = "volume_level_old"

.field public static final VAR_VOLUME_TYPE:Ljava/lang/String; = "volume_type"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mResetType:Ljava/lang/Runnable;

.field private mVolumeLevel:Lmiui/maml/data/IndexedVariable;

.field private mVolumeLevelOld:Lmiui/maml/data/IndexedVariable;

.field private mVolumeType:Lmiui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lmiui/maml/data/VariableUpdaterManager;)V
    .locals 4
    .param p1, "m"    # Lmiui/maml/data/VariableUpdaterManager;

    .prologue
    const/4 v3, 0x1

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {p0, p1, v0}, Lmiui/maml/data/NotifierVariableUpdater;-><init>(Lmiui/maml/data/VariableUpdaterManager;Ljava/lang/String;)V

    new-instance v0, Lmiui/maml/data/VolumeVariableUpdater$1;

    invoke-direct {v0, p0}, Lmiui/maml/data/VolumeVariableUpdater$1;-><init>(Lmiui/maml/data/VolumeVariableUpdater;)V

    iput-object v0, p0, Lmiui/maml/data/VolumeVariableUpdater;->mResetType:Ljava/lang/Runnable;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/maml/data/VolumeVariableUpdater;->mHandler:Landroid/os/Handler;

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    const-string v1, "volume_level"

    invoke-virtual {p0}, Lmiui/maml/data/VolumeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/data/VolumeVariableUpdater;->mVolumeLevel:Lmiui/maml/data/IndexedVariable;

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    const-string v1, "volume_level_old"

    invoke-virtual {p0}, Lmiui/maml/data/VolumeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/data/VolumeVariableUpdater;->mVolumeLevelOld:Lmiui/maml/data/IndexedVariable;

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    const-string v1, "volume_type"

    invoke-virtual {p0}, Lmiui/maml/data/VolumeVariableUpdater;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/data/VolumeVariableUpdater;->mVolumeType:Lmiui/maml/data/IndexedVariable;

    iget-object v0, p0, Lmiui/maml/data/VolumeVariableUpdater;->mVolumeType:Lmiui/maml/data/IndexedVariable;

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/data/VolumeVariableUpdater;)Lmiui/maml/data/IndexedVariable;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/data/VolumeVariableUpdater;

    .prologue
    iget-object v0, p0, Lmiui/maml/data/VolumeVariableUpdater;->mVolumeType:Lmiui/maml/data/IndexedVariable;

    return-object v0
.end method


# virtual methods
.method public onNotify(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .local v2, "streamType":I
    iget-object v3, p0, Lmiui/maml/data/VolumeVariableUpdater;->mVolumeType:Lmiui/maml/data/IndexedVariable;

    int-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    const-string v3, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .local v0, "newVolLevel":I
    iget-object v3, p0, Lmiui/maml/data/VolumeVariableUpdater;->mVolumeLevel:Lmiui/maml/data/IndexedVariable;

    int-to-double v4, v0

    invoke-virtual {v3, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    const-string v3, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .local v1, "oldVolLevel":I
    if-eq v1, v0, :cond_0

    iget-object v3, p0, Lmiui/maml/data/VolumeVariableUpdater;->mVolumeLevelOld:Lmiui/maml/data/IndexedVariable;

    int-to-double v4, v1

    invoke-virtual {v3, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_0
    invoke-virtual {p0}, Lmiui/maml/data/VolumeVariableUpdater;->getRoot()Lmiui/maml/ScreenElementRoot;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    iget-object v3, p0, Lmiui/maml/data/VolumeVariableUpdater;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lmiui/maml/data/VolumeVariableUpdater;->mResetType:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lmiui/maml/data/VolumeVariableUpdater;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lmiui/maml/data/VolumeVariableUpdater;->mResetType:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .end local v0    # "newVolLevel":I
    .end local v1    # "oldVolLevel":I
    .end local v2    # "streamType":I
    :cond_1
    return-void
.end method
