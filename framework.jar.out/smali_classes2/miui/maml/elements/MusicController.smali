.class public Lmiui/maml/elements/MusicController;
.super Ljava/lang/Object;
.source "MusicController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MAML_MusicController"


# instance fields
.field private mBind:Z

.field private mClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mRCService:Lmiui/maml/elements/MusicListenerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lmiui/maml/elements/MusicController$1;

    invoke-direct {v0, p0}, Lmiui/maml/elements/MusicController$1;-><init>(Lmiui/maml/elements/MusicController;)V

    iput-object v0, p0, Lmiui/maml/elements/MusicController;->mConnection:Landroid/content/ServiceConnection;

    .line 29
    iput-object p1, p0, Lmiui/maml/elements/MusicController;->mContext:Landroid/content/Context;

    .line 30
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/elements/MusicController;)Lmiui/maml/elements/MusicListenerService;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicController;

    .prologue
    .line 17
    iget-object v0, p0, Lmiui/maml/elements/MusicController;->mRCService:Lmiui/maml/elements/MusicListenerService;

    return-object v0
.end method

.method static synthetic access$002(Lmiui/maml/elements/MusicController;Lmiui/maml/elements/MusicListenerService;)Lmiui/maml/elements/MusicListenerService;
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicController;
    .param p1, "x1"    # Lmiui/maml/elements/MusicListenerService;

    .prologue
    .line 17
    iput-object p1, p0, Lmiui/maml/elements/MusicController;->mRCService:Lmiui/maml/elements/MusicListenerService;

    return-object p1
.end method

.method static synthetic access$100(Lmiui/maml/elements/MusicController;)Landroid/media/RemoteController$OnClientUpdateListener;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicController;

    .prologue
    .line 17
    iget-object v0, p0, Lmiui/maml/elements/MusicController;->mClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    return-object v0
.end method

.method private getRemoteController()Landroid/media/RemoteController;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lmiui/maml/elements/MusicController;->mRCService:Lmiui/maml/elements/MusicListenerService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/MusicController;->mRCService:Lmiui/maml/elements/MusicListenerService;

    invoke-virtual {v0}, Lmiui/maml/elements/MusicListenerService;->getRemoteController()Landroid/media/RemoteController;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public enableNotificationService()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public getEstimatedMediaPosition()J
    .locals 4

    .prologue
    .line 85
    invoke-direct {p0}, Lmiui/maml/elements/MusicController;->getRemoteController()Landroid/media/RemoteController;

    move-result-object v0

    .line 86
    .local v0, "controller":Landroid/media/RemoteController;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/RemoteController;->getEstimatedMediaPosition()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getRemoteControlClientPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    invoke-direct {p0}, Lmiui/maml/elements/MusicController;->getRemoteController()Landroid/media/RemoteController;

    move-result-object v0

    .line 91
    .local v0, "controller":Landroid/media/RemoteController;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/RemoteController;->getRemoteControlClientPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public rating(Landroid/media/Rating;)V
    .locals 6
    .param p1, "rating"    # Landroid/media/Rating;

    .prologue
    .line 107
    invoke-direct {p0}, Lmiui/maml/elements/MusicController;->getRemoteController()Landroid/media/RemoteController;

    move-result-object v0

    .line 108
    .local v0, "controller":Landroid/media/RemoteController;
    if-nez v0, :cond_0

    .line 118
    :goto_0
    return-void

    .line 112
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/RemoteController;->editMetadata()Landroid/media/RemoteController$MetadataEditor;

    move-result-object v2

    .line 113
    .local v2, "metadata":Landroid/media/RemoteController$MetadataEditor;
    const v3, 0x10000001

    invoke-virtual {v2, v3, p1}, Landroid/media/RemoteController$MetadataEditor;->putObject(ILjava/lang/Object;)Landroid/media/MediaMetadataEditor;

    .line 114
    invoke-virtual {v2}, Landroid/media/RemoteController$MetadataEditor;->apply()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    .end local v2    # "metadata":Landroid/media/RemoteController$MetadataEditor;
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "MAML_MusicController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RATING_KEY_BY_USER: failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public registerListener(Landroid/media/RemoteController$OnClientUpdateListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/RemoteController$OnClientUpdateListener;

    .prologue
    .line 65
    iget-boolean v1, p0, Lmiui/maml/elements/MusicController;->mBind:Z

    if-nez v1, :cond_0

    .line 66
    iput-object p1, p0, Lmiui/maml/elements/MusicController;->mClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.notification.MusicListenerService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lmiui/maml/elements/MusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Lmiui/maml/elements/MusicController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lmiui/maml/elements/MusicController;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lmiui/maml/elements/MusicController;->mBind:Z

    .line 72
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public seekTo(J)Z
    .locals 3
    .param p1, "ms"    # J

    .prologue
    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Lmiui/maml/elements/MusicController;->getRemoteController()Landroid/media/RemoteController;

    move-result-object v0

    .line 96
    .local v0, "controller":Landroid/media/RemoteController;
    if-nez v0, :cond_0

    .line 102
    :goto_0
    return v2

    .line 100
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/media/RemoteController;->seekTo(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public sendMediaKeyEvent(II)Z
    .locals 5
    .param p1, "action"    # I
    .param p2, "code"    # I

    .prologue
    const/4 v3, 0x0

    .line 121
    invoke-direct {p0}, Lmiui/maml/elements/MusicController;->getRemoteController()Landroid/media/RemoteController;

    move-result-object v0

    .line 122
    .local v0, "controller":Landroid/media/RemoteController;
    if-nez v0, :cond_0

    .line 130
    :goto_0
    return v3

    .line 126
    :cond_0
    :try_start_0
    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, p1, p2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 127
    .local v2, "keyEvent":Landroid/view/KeyEvent;
    const/16 v4, 0x1002

    invoke-virtual {v2, v4}, Landroid/view/KeyEvent;->setSource(I)V

    .line 128
    invoke-virtual {v0, v2}, Landroid/media/RemoteController;->sendMediaKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 129
    .end local v2    # "keyEvent":Landroid/view/KeyEvent;
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public unregisterListener()V
    .locals 2

    .prologue
    .line 75
    iget-boolean v0, p0, Lmiui/maml/elements/MusicController;->mBind:Z

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lmiui/maml/elements/MusicController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lmiui/maml/elements/MusicController;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 77
    iget-object v0, p0, Lmiui/maml/elements/MusicController;->mRCService:Lmiui/maml/elements/MusicListenerService;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lmiui/maml/elements/MusicController;->mRCService:Lmiui/maml/elements/MusicListenerService;

    iget-object v1, p0, Lmiui/maml/elements/MusicController;->mClientUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    invoke-virtual {v0, v1}, Lmiui/maml/elements/MusicListenerService;->unregisterClientUpdateListener(Landroid/media/RemoteController$OnClientUpdateListener;)V

    .line 80
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/MusicController;->mBind:Z

    .line 82
    :cond_1
    return-void
.end method
