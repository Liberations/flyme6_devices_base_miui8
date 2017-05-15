.class public Lmiui/maml/elements/MusicControlScreenElement;
.super Lmiui/maml/elements/ElementGroup;
.source "MusicControlScreenElement.java"

# interfaces
.implements Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;
    }
.end annotation


# static fields
.field private static final BUTTON_MUSIC_NEXT:Ljava/lang/String; = "music_next"

.field private static final BUTTON_MUSIC_PAUSE:Ljava/lang/String; = "music_pause"

.field private static final BUTTON_MUSIC_PLAY:Ljava/lang/String; = "music_play"

.field private static final BUTTON_MUSIC_PREV:Ljava/lang/String; = "music_prev"

.field private static final ELE_MUSIC_ALBUM_COVER:Ljava/lang/String; = "music_album_cover"

.field private static final ELE_MUSIC_DISPLAY:Ljava/lang/String; = "music_display"

.field private static final FRAMERATE_PLAYING:I = 0x1e

.field private static final LOG_TAG:Ljava/lang/String; = "MusicControlScreenElement"

.field private static final MIUI_PLAYER_PACKAGE_NAME:Ljava/lang/String; = "com.miui.player"

.field public static final MUSIC_STATE_PLAY:I = 0x1

.field public static final MUSIC_STATE_STOP:I = 0x0

.field public static final TAG_NAME:Ljava/lang/String; = "MusicControl"


# instance fields
.field private mAlbumInfo:Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;

.field private mAlbumVar:Lmiui/maml/data/IndexedVariable;

.field private mArtistVar:Lmiui/maml/data/IndexedVariable;

.field private mArtworkVar:Lmiui/maml/data/IndexedVariable;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoShow:Z

.field private mButtonNext:Lmiui/maml/elements/ButtonScreenElement;

.field private mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

.field private mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

.field private mButtonPrev:Lmiui/maml/elements/ButtonScreenElement;

.field private mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

.field private mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

.field private mDisableNext:Z

.field private mDisableNextVar:Lmiui/maml/data/IndexedVariable;

.field private mDisablePlay:Z

.field private mDisablePlayVar:Lmiui/maml/data/IndexedVariable;

.field private mDisablePrev:Z

.field private mDisablePrevVar:Lmiui/maml/data/IndexedVariable;

.field private mDurationVar:Lmiui/maml/data/IndexedVariable;

.field private mEnableLyric:Z

.field private mEnableProgress:Z

.field private mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

.field private mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

.field private mLyricAfterVar:Lmiui/maml/data/IndexedVariable;

.field private mLyricBeforeVar:Lmiui/maml/data/IndexedVariable;

.field private mLyricCurrentLineProgressVar:Lmiui/maml/data/IndexedVariable;

.field private mLyricCurrentVar:Lmiui/maml/data/IndexedVariable;

.field private mLyricLastVar:Lmiui/maml/data/IndexedVariable;

.field private mLyricNextVar:Lmiui/maml/data/IndexedVariable;

.field private mLyricPrevVar:Lmiui/maml/data/IndexedVariable;

.field private mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

.field private mMiuiMusicContext:Landroid/content/Context;

.field private mMusicController:Lmiui/maml/elements/MusicController;

.field private mMusicStateVar:Lmiui/maml/data/IndexedVariable;

.field private mMusicUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

.field private mNeedUpdateLyric:Z

.field private mNeedUpdateProgress:Z

.field private mNeedUpdateUserRating:Z

.field private mPlayerClassVar:Lmiui/maml/data/IndexedVariable;

.field private mPlayerPackageVar:Lmiui/maml/data/IndexedVariable;

.field private mPlaying:Z

.field private mPositionVar:Lmiui/maml/data/IndexedVariable;

.field private mSender:Ljava/lang/String;

.field private mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

.field private mTextDisplay:Lmiui/maml/elements/TextScreenElement;

.field private mTitleVar:Lmiui/maml/data/IndexedVariable;

.field private mUpdateProgressInterval:I

.field private mUpdateProgressRunnable:Ljava/lang/Runnable;

.field private mUserRatingStyle:I

.field private mUserRatingStyleVar:Lmiui/maml/data/IndexedVariable;

.field private mUserRatingValue:F

.field private mUserRatingValueVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 9
    .param p1, "ele"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v4, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;-><init>(Lmiui/maml/elements/MusicControlScreenElement$1;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumInfo:Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;

    new-instance v4, Lmiui/maml/elements/MusicControlScreenElement$1;

    invoke-direct {v4, p0}, Lmiui/maml/elements/MusicControlScreenElement$1;-><init>(Lmiui/maml/elements/MusicControlScreenElement;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    new-instance v4, Lmiui/maml/elements/MusicControlScreenElement$2;

    invoke-direct {v4, p0}, Lmiui/maml/elements/MusicControlScreenElement$2;-><init>(Lmiui/maml/elements/MusicControlScreenElement;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    new-instance v4, Lmiui/maml/elements/MusicControlScreenElement$3;

    invoke-direct {v4, p0}, Lmiui/maml/elements/MusicControlScreenElement$3;-><init>(Lmiui/maml/elements/MusicControlScreenElement;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    const-string v4, "music_prev"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/ButtonScreenElement;

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPrev:Lmiui/maml/elements/ButtonScreenElement;

    const-string v4, "music_next"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/ButtonScreenElement;

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonNext:Lmiui/maml/elements/ButtonScreenElement;

    const-string v4, "music_play"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/ButtonScreenElement;

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

    const-string v4, "music_pause"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/ButtonScreenElement;

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    const-string v4, "music_display"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/TextScreenElement;

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;

    const-string v4, "music_album_cover"

    invoke-virtual {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v4

    check-cast v4, Lmiui/maml/elements/ImageScreenElement;

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    invoke-direct {p0, p0}, Lmiui/maml/elements/MusicControlScreenElement;->findSpectrumVisualizer(Lmiui/maml/elements/ElementGroup;)Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPrev:Lmiui/maml/elements/ButtonScreenElement;

    invoke-direct {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->setupButton(Lmiui/maml/elements/ButtonScreenElement;)V

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonNext:Lmiui/maml/elements/ButtonScreenElement;

    invoke-direct {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->setupButton(Lmiui/maml/elements/ButtonScreenElement;)V

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

    invoke-direct {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->setupButton(Lmiui/maml/elements/ButtonScreenElement;)V

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    invoke-direct {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->setupButton(Lmiui/maml/elements/ButtonScreenElement;)V

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    invoke-virtual {v4, v6}, Lmiui/maml/elements/ButtonScreenElement;->show(Z)V

    :cond_0
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    if-eqz v4, :cond_2

    const-string v4, "defAlbumCover"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "strDefAlbumCoverBmp":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v4, v2}, Lmiui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    iget-object v7, p0, Lmiui/maml/elements/MusicControlScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v7}, Lmiui/maml/ScreenElementRoot;->getResourceDensity()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/Bitmap;->setDensity(I)V

    .end local v2    # "strDefAlbumCoverBmp":Ljava/lang/String;
    :cond_2
    const-string v4, "autoShow"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAutoShow:Z

    const-string v4, "enableLyric"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z

    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z

    if-eqz v4, :cond_7

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableProgress:Z

    const-string v4, "updateProgressInterval"

    const/16 v7, 0x3e8

    invoke-virtual {p0, p1, v4, v7}, Lmiui/maml/elements/MusicControlScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateProgressInterval:I

    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    .local v3, "variables":Lmiui/maml/data/Variables;
    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".music_state"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".title"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTitleVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".artist"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtistVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".album"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumVar:Lmiui/maml/data/IndexedVariable;

    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z

    if-eqz v4, :cond_3

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".lyric_current"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".lyric_before"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".lyric_after"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".lyric_last"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricLastVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".lyric_prev"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricPrevVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".lyric_next"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricNextVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".lyric_current_line_progress"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lmiui/maml/data/IndexedVariable;

    :cond_3
    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableProgress:Z

    if-eqz v4, :cond_4

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".music_duration"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDurationVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".music_position"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPositionVar:Lmiui/maml/data/IndexedVariable;

    :cond_4
    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".user_rating_style"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingStyleVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".user_rating_value"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValueVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".disable_play"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePlayVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".disable_prev"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePrevVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".disable_next"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisableNextVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".artwork"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtworkVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".package"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lmiui/maml/data/IndexedVariable;

    new-instance v4, Lmiui/maml/data/IndexedVariable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lmiui/maml/elements/MusicControlScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".class"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7, v3, v6}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lmiui/maml/data/IndexedVariable;

    .end local v3    # "variables":Lmiui/maml/data/Variables;
    :cond_5
    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableLyric:Z

    if-eqz v4, :cond_8

    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v4, :cond_8

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mEnableProgress:Z

    if-eqz v4, :cond_9

    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v4, :cond_9

    :goto_2
    iput-boolean v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    iput-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateUserRating:Z

    :try_start_0
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string v5, "com.miui.player"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMiuiMusicContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v4, v4, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAudioManager:Landroid/media/AudioManager;

    new-instance v4, Lmiui/maml/elements/MusicController;

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v5

    iget-object v5, v5, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lmiui/maml/elements/MusicController;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;

    invoke-virtual {v4}, Lmiui/maml/elements/MusicController;->enableNotificationService()V

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/maml/ScreenElementRoot;->getRootTag()Ljava/lang/String;

    move-result-object v1

    .local v1, "rootTag":Ljava/lang/String;
    const-string v4, "maml"

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    const-string v4, "gadget"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "home_widget"

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    :cond_6
    :goto_4
    return-void

    .end local v1    # "rootTag":Ljava/lang/String;
    :cond_7
    const-string v4, "enableProgress"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    goto/16 :goto_0

    :cond_8
    move v4, v6

    goto :goto_1

    :cond_9
    move v5, v6

    goto :goto_2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "MusicControlScreenElement"

    const-string v5, "fail to get MiuiMusic preference"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "rootTag":Ljava/lang/String;
    :cond_a
    const-string v4, "statusbar"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "notification_bar"

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    goto :goto_4

    :cond_b
    const-string v4, "lockscreen"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "lockscreen"

    iput-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    goto :goto_4
.end method

.method static synthetic access$100(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetUserRating()V

    return-void
.end method

.method static synthetic access$1000(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/media/RemoteController$MetadataEditor;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    return-object v0
.end method

.method static synthetic access$1002(Lmiui/maml/elements/MusicControlScreenElement;Landroid/media/RemoteController$MetadataEditor;)Landroid/media/RemoteController$MetadataEditor;
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;
    .param p1, "x1"    # Landroid/media/RemoteController$MetadataEditor;

    .prologue
    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMetadataEditor:Landroid/media/RemoteController$MetadataEditor;

    return-object p1
.end method

.method static synthetic access$1100(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumInfo:Lmiui/maml/elements/MusicControlScreenElement$AlbumInfo;

    return-object v0
.end method

.method static synthetic access$1200(Lmiui/maml/elements/MusicControlScreenElement;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/elements/MusicControlScreenElement;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lmiui/maml/elements/MusicControlScreenElement;J)V
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;
    .param p1, "x1"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/MusicControlScreenElement;->delayToSetDefaultArtwork(J)V

    return-void
.end method

.method static synthetic access$1400(Lmiui/maml/elements/MusicControlScreenElement;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement;->updateArtwork(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$1500(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/MusicLyricParser$Lyric;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    return-object v0
.end method

.method static synthetic access$1502(Lmiui/maml/elements/MusicControlScreenElement;Lmiui/maml/elements/MusicLyricParser$Lyric;)Lmiui/maml/elements/MusicLyricParser$Lyric;
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;
    .param p1, "x1"    # Lmiui/maml/elements/MusicLyricParser$Lyric;

    .prologue
    iput-object p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    return-object p1
.end method

.method static synthetic access$1600(Lmiui/maml/elements/MusicControlScreenElement;Lmiui/maml/elements/MusicLyricParser$Lyric;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;
    .param p1, "x1"    # Lmiui/maml/elements/MusicLyricParser$Lyric;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement;->updateLyric(Lmiui/maml/elements/MusicLyricParser$Lyric;)V

    return-void
.end method

.method static synthetic access$1700(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/elements/MusicController;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;

    return-object v0
.end method

.method static synthetic access$1800(Lmiui/maml/elements/MusicControlScreenElement;JJ)V
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;
    .param p1, "x1"    # J
    .param p3, "x2"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/maml/elements/MusicControlScreenElement;->updateProgress(JJ)V

    return-void
.end method

.method static synthetic access$1900(Lmiui/maml/elements/MusicControlScreenElement;Landroid/media/Rating;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;
    .param p1, "x1"    # Landroid/media/Rating;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement;->updateUserRating(Landroid/media/Rating;)V

    return-void
.end method

.method static synthetic access$200(Lmiui/maml/elements/MusicControlScreenElement;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePlay:Z

    return v0
.end method

.method static synthetic access$2000(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lmiui/maml/data/IndexedVariable;

    return-object v0
.end method

.method static synthetic access$202(Lmiui/maml/elements/MusicControlScreenElement;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePlay:Z

    return p1
.end method

.method static synthetic access$2100(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lmiui/maml/data/IndexedVariable;

    return-object v0
.end method

.method static synthetic access$2200(Lmiui/maml/elements/MusicControlScreenElement;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2300(Lmiui/maml/elements/MusicControlScreenElement;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlaying:Z

    return v0
.end method

.method static synthetic access$2400(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDurationVar:Lmiui/maml/data/IndexedVariable;

    return-object v0
.end method

.method static synthetic access$2500(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPositionVar:Lmiui/maml/data/IndexedVariable;

    return-object v0
.end method

.method static synthetic access$2600(Lmiui/maml/elements/MusicControlScreenElement;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    return v0
.end method

.method static synthetic access$2700(Lmiui/maml/elements/MusicControlScreenElement;J)V
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;
    .param p1, "x1"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/MusicControlScreenElement;->updateLyricVar(J)V

    return-void
.end method

.method static synthetic access$2800(Lmiui/maml/elements/MusicControlScreenElement;)I
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    iget v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateProgressInterval:I

    return v0
.end method

.method static synthetic access$300(Lmiui/maml/elements/MusicControlScreenElement;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePrev:Z

    return v0
.end method

.method static synthetic access$302(Lmiui/maml/elements/MusicControlScreenElement;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePrev:Z

    return p1
.end method

.method static synthetic access$400(Lmiui/maml/elements/MusicControlScreenElement;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisableNext:Z

    return v0
.end method

.method static synthetic access$402(Lmiui/maml/elements/MusicControlScreenElement;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisableNext:Z

    return p1
.end method

.method static synthetic access$500(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePlayVar:Lmiui/maml/data/IndexedVariable;

    return-object v0
.end method

.method static synthetic access$600(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePrevVar:Lmiui/maml/data/IndexedVariable;

    return-object v0
.end method

.method static synthetic access$700(Lmiui/maml/elements/MusicControlScreenElement;)Lmiui/maml/data/IndexedVariable;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisableNextVar:Lmiui/maml/data/IndexedVariable;

    return-object v0
.end method

.method static synthetic access$800(Lmiui/maml/elements/MusicControlScreenElement;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;

    .prologue
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetAll()V

    return-void
.end method

.method static synthetic access$900(Lmiui/maml/elements/MusicControlScreenElement;Z)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/MusicControlScreenElement;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/elements/MusicControlScreenElement;->onMusicStateChange(Z)V

    return-void
.end method

.method private cancelSetDefaultArtwork()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private delayToSetDefaultArtwork(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private findSpectrumVisualizer(Lmiui/maml/elements/ElementGroup;)Lmiui/maml/elements/SpectrumVisualizerScreenElement;
    .locals 4
    .param p1, "g"    # Lmiui/maml/elements/ElementGroup;

    .prologue
    invoke-virtual {p1}, Lmiui/maml/elements/ElementGroup;->getElements()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    .local v2, "se":Lmiui/maml/elements/ScreenElement;
    instance-of v3, v2, Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    if-eqz v3, :cond_1

    check-cast v2, Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    .end local v2    # "se":Lmiui/maml/elements/ScreenElement;
    :goto_0
    return-object v2

    .restart local v2    # "se":Lmiui/maml/elements/ScreenElement;
    :cond_1
    instance-of v3, v2, Lmiui/maml/elements/ElementGroup;

    if-eqz v3, :cond_0

    check-cast v2, Lmiui/maml/elements/ElementGroup;

    .end local v2    # "se":Lmiui/maml/elements/ScreenElement;
    invoke-direct {p0, v2}, Lmiui/maml/elements/MusicControlScreenElement;->findSpectrumVisualizer(Lmiui/maml/elements/ElementGroup;)Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    move-result-object v1

    .local v1, "ret":Lmiui/maml/elements/SpectrumVisualizerScreenElement;
    if-eqz v1, :cond_0

    move-object v2, v1

    goto :goto_0

    .end local v1    # "ret":Lmiui/maml/elements/SpectrumVisualizerScreenElement;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onMusicStateChange(Z)V
    .locals 4
    .param p1, "playing"    # Z

    .prologue
    iput-boolean p1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlaying:Z

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicStateVar:Lmiui/maml/data/IndexedVariable;

    if-eqz p1, :cond_5

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    invoke-virtual {v1, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPause:Lmiui/maml/elements/ButtonScreenElement;

    invoke-virtual {v1, p1}, Lmiui/maml/elements/ButtonScreenElement;->show(Z)V

    :cond_1
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mButtonPlay:Lmiui/maml/elements/ButtonScreenElement;

    if-nez p1, :cond_6

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Lmiui/maml/elements/ButtonScreenElement;->show(Z)V

    :cond_2
    iget-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    if-eqz v1, :cond_3

    const/16 v0, 0x64

    .local v0, "delay":I
    if-eqz p1, :cond_7

    const-wide/16 v2, 0x64

    :goto_2
    invoke-direct {p0, p1, v2, v3}, Lmiui/maml/elements/MusicControlScreenElement;->startProgressUpdate(ZJ)V

    .end local v0    # "delay":I
    :cond_3
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSpectrumVisualizer:Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    invoke-virtual {v1, p1}, Lmiui/maml/elements/SpectrumVisualizerScreenElement;->enableUpdate(Z)V

    :cond_4
    if-eqz p1, :cond_8

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    if-eqz v1, :cond_8

    const/high16 v1, 0x41f00000    # 30.0f

    :goto_3
    invoke-virtual {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->requestFramerate(F)V

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestUpdate()V

    const-string v1, "MusicControlScreenElement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "music state change: playing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    .restart local v0    # "delay":I
    :cond_7
    const-wide/16 v2, 0x0

    goto :goto_2

    .end local v0    # "delay":I
    :cond_8
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private resetAll()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0}, Lmiui/maml/elements/MusicControlScreenElement;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetProgress()V

    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetLyric()V

    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetUserRating()V

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lmiui/maml/elements/MusicControlScreenElement;->updateArtwork(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetPackageName()V

    return-void
.end method

.method private resetLyric()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricLastVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricPrevVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricNextVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private resetPackageName()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private resetProgress()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDurationVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPositionVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_0
    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_1
    return-void
.end method

.method private resetUserRating()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateUserRating:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingStyle:I

    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingStyleVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValueVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_0
    return-void
.end method

.method private sendMediaKeyEvent(ILjava/lang/String;)Z
    .locals 6
    .param p1, "action"    # I
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .local v0, "code":I
    const-string v4, "music_prev"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v0, 0x58

    :cond_0
    :goto_0
    const/16 v4, 0x58

    if-ne v0, v4, :cond_5

    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePrev:Z

    if-eqz v4, :cond_5

    :cond_1
    :goto_1
    return v2

    :cond_2
    const-string v4, "music_next"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v0, 0x57

    goto :goto_0

    :cond_3
    const-string v4, "music_play"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "music_pause"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_4
    const/16 v0, 0x55

    goto :goto_0

    :cond_5
    const/16 v4, 0x57

    if-ne v0, v4, :cond_6

    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisableNext:Z

    if-nez v4, :cond_1

    :cond_6
    const/16 v4, 0x55

    if-ne v0, v4, :cond_7

    iget-boolean v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDisablePlay:Z

    if-nez v4, :cond_1

    :cond_7
    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;

    invoke-virtual {v4, p1, v0}, Lmiui/maml/elements/MusicController;->sendMediaKeyEvent(II)Z

    move-result v4

    if-eqz v4, :cond_8

    move v2, v3

    goto :goto_1

    :cond_8
    const-string v4, "MusicControlScreenElement"

    const-string v5, "fail to dispatch by remote controller, send to MiuiMusic."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_9

    move v2, v3

    goto :goto_1

    :cond_9
    const/4 v1, 0x0

    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "music_play"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    const-string v4, "music_pause"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_a
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v4, "com.miui.player.musicservicecommand.togglepause"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_b
    :goto_2
    if-eqz v1, :cond_1

    const-string v2, "com.miui.player"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "intent_sender"

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mSender:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move v2, v3

    goto :goto_1

    :cond_c
    const-string v4, "music_prev"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v4, "com.miui.player.musicservicecommand.previous"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_2

    :cond_d
    const-string v4, "music_next"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v4, "com.miui.player.musicservicecommand.next"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_2
.end method

.method private setupButton(Lmiui/maml/elements/ButtonScreenElement;)V
    .locals 0
    .param p1, "button"    # Lmiui/maml/elements/ButtonScreenElement;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lmiui/maml/elements/ButtonScreenElement;->setListener(Lmiui/maml/elements/ButtonScreenElement$ButtonActionListener;)V

    invoke-virtual {p1, p0}, Lmiui/maml/elements/ButtonScreenElement;->setParent(Lmiui/maml/elements/ElementGroup;)V

    :cond_0
    return-void
.end method

.method private startProgressUpdate(ZJ)V
    .locals 2
    .param p1, "start"    # Z
    .param p2, "delay"    # J

    .prologue
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "artist"    # Ljava/lang/String;
    .param p3, "album"    # Ljava/lang/String;

    .prologue
    iget-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTitleVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v1, p1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtistVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v1, p2}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAlbumVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v1, p3}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;

    if-eqz v1, :cond_1

    const-string v0, ""

    .local v0, "trackInfo":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, p2

    :goto_0
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mTextDisplay:Lmiui/maml/elements/TextScreenElement;

    invoke-virtual {v1, v0}, Lmiui/maml/elements/TextScreenElement;->setText(Ljava/lang/String;)V

    .end local v0    # "trackInfo":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestUpdate()V

    return-void

    .restart local v0    # "trackInfo":Ljava/lang/String;
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, p1

    goto :goto_0

    :cond_3
    const-string v1, "%s   %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private updateArtwork(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "artwork"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->cancelSetDefaultArtwork()V

    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtworkVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, p1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mImageAlbumCover:Lmiui/maml/elements/ImageScreenElement;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestUpdate()V

    return-void
.end method

.method private updateLyric(Lmiui/maml/elements/MusicLyricParser$Lyric;)V
    .locals 3
    .param p1, "lyric"    # Lmiui/maml/elements/MusicLyricParser$Lyric;

    .prologue
    iget-boolean v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetLyric()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getTimeArr()[I

    move-result-object v1

    .local v1, "timeArr":[I
    invoke-virtual {p1}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getStringArr()Ljava/util/ArrayList;

    move-result-object v0

    .local v0, "lyricArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    invoke-virtual {v2, v1, v0}, Lmiui/maml/elements/MusicLyricParser$Lyric;->set([ILjava/util/ArrayList;)V

    goto :goto_0
.end method

.method private updateLyricVar(J)V
    .locals 9
    .param p1, "position"    # J

    .prologue
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    invoke-virtual {v5, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getLyricShot(J)Lmiui/maml/elements/MusicLyricParser$LyricShot;

    move-result-object v5

    iget-wide v6, v5, Lmiui/maml/elements/MusicLyricParser$LyricShot;->percent:D

    .local v6, "percent":D
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentLineProgressVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    invoke-virtual {v5, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getLine(J)Ljava/lang/String;

    move-result-object v2

    .local v2, "current":Ljava/lang/String;
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricCurrentVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v2}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    invoke-virtual {v5, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getBeforeLines(J)Ljava/lang/String;

    move-result-object v1

    .local v1, "before":Ljava/lang/String;
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricBeforeVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    invoke-virtual {v5, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getAfterLines(J)Ljava/lang/String;

    move-result-object v0

    .local v0, "after":Ljava/lang/String;
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricAfterVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v0}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    invoke-virtual {v5, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getLastLine(J)Ljava/lang/String;

    move-result-object v3

    .local v3, "last":Ljava/lang/String;
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricLastVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v3}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricPrevVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v3}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    invoke-virtual {v5, p1, p2}, Lmiui/maml/elements/MusicLyricParser$Lyric;->getNextLine(J)Ljava/lang/String;

    move-result-object v4

    .local v4, "next":Ljava/lang/String;
    iget-object v5, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyricNextVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v5, v4}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    return-void
.end method

.method private updateProgress(JJ)V
    .locals 7
    .param p1, "duration"    # J
    .param p3, "position"    # J

    .prologue
    const-wide/16 v4, 0x0

    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateProgress:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    cmp-long v0, p1, v4

    if-lez v0, :cond_1

    cmp-long v0, p3, v4

    if-gez v0, :cond_2

    :cond_1
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetProgress()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDurationVar:Lmiui/maml/data/IndexedVariable;

    long-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPositionVar:Lmiui/maml/data/IndexedVariable;

    long-to-double v2, p3

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateLyric:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mLyric:Lmiui/maml/elements/MusicLyricParser$Lyric;

    if-eqz v0, :cond_4

    invoke-direct {p0, p3, p4}, Lmiui/maml/elements/MusicControlScreenElement;->updateLyricVar(J)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestUpdate()V

    iget-boolean v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlaying:Z

    invoke-direct {p0, v0, v4, v5}, Lmiui/maml/elements/MusicControlScreenElement;->startProgressUpdate(ZJ)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetLyric()V

    goto :goto_1
.end method

.method private updateUserRating(Landroid/media/Rating;)V
    .locals 4
    .param p1, "rating"    # Landroid/media/Rating;

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iget-boolean v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mNeedUpdateUserRating:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->resetUserRating()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/media/Rating;->getRatingStyle()I

    move-result v2

    iput v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingStyle:I

    iget v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingStyle:I

    packed-switch v2, :pswitch_data_0

    iput v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    :goto_1
    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingStyleVar:Lmiui/maml/data/IndexedVariable;

    iget v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingStyle:I

    int-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    iget-object v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValueVar:Lmiui/maml/data/IndexedVariable;

    iget v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestUpdate()V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/media/Rating;->hasHeart()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    iput v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :pswitch_1
    invoke-virtual {p1}, Landroid/media/Rating;->isThumbUp()Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_3
    iput v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_3

    :pswitch_2
    invoke-virtual {p1}, Landroid/media/Rating;->getStarRating()F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1}, Landroid/media/Rating;->getPercentRating()F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->finish()V

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtworkVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mArtworkVar:Lmiui/maml/data/IndexedVariable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;

    invoke-virtual {v1}, Lmiui/maml/elements/MusicController;->unregisterListener()V

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDelayToSetArtworkRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->init()V

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->initByPreference()V

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicUpdateListener:Landroid/media/RemoteController$OnClientUpdateListener;

    invoke-virtual {v1, v2}, Lmiui/maml/elements/MusicController;->registerListener(Landroid/media/RemoteController$OnClientUpdateListener;)V

    iget-object v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    .local v0, "playing":Z
    iget-boolean v1, p0, Lmiui/maml/elements/MusicControlScreenElement;->mAutoShow:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lmiui/maml/elements/MusicControlScreenElement;->show(Z)V

    invoke-direct {p0, v3}, Lmiui/maml/elements/MusicControlScreenElement;->onMusicStateChange(Z)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->onMusicStateChange(Z)V

    goto :goto_0
.end method

.method public initByPreference()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMiuiMusicContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMiuiMusicContext:Landroid/content/Context;

    const-string v5, "MiuiMusic"

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .local v2, "preference":Landroid/content/SharedPreferences;
    if-eqz v2, :cond_0

    const-string v4, "songName"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "title":Ljava/lang/String;
    const-string v4, "artistName"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "artist":Ljava/lang/String;
    const-string v4, "albumName"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "album":Ljava/lang/String;
    invoke-direct {p0, v3, v1, v0}, Lmiui/maml/elements/MusicControlScreenElement;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDefaultAlbumCoverBm:Landroid/graphics/Bitmap;

    invoke-direct {p0, v4}, Lmiui/maml/elements/MusicControlScreenElement;->updateArtwork(Landroid/graphics/Bitmap;)V

    .end local v0    # "album":Ljava/lang/String;
    .end local v1    # "artist":Ljava/lang/String;
    .end local v2    # "preference":Landroid/content/SharedPreferences;
    .end local v3    # "title":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onButtonDoubleClick(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonDown(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lmiui/maml/elements/MusicControlScreenElement;->sendMediaKeyEvent(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onButtonLongClick(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public onButtonUp(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lmiui/maml/elements/MusicControlScreenElement;->sendMediaKeyEvent(ILjava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "music_prev"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "music_next"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    invoke-direct {p0}, Lmiui/maml/elements/MusicControlScreenElement;->cancelSetDefaultArtwork()V

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUpdateProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected onVisibilityChange(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    invoke-super {p0, p1}, Lmiui/maml/elements/ElementGroup;->onVisibilityChange(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestUpdate()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/elements/MusicControlScreenElement;->requestFramerate(F)V

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->pause()V

    return-void
.end method

.method public ratingHeart()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingStyle:I

    if-ne v4, v2, :cond_0

    iget v4, p0, Lmiui/maml/elements/MusicControlScreenElement;->mUserRatingValue:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    move v0, v2

    .local v0, "hasHeart":Z
    :goto_0
    if-nez v0, :cond_2

    :goto_1
    invoke-static {v2}, Landroid/media/Rating;->newHeartRating(Z)Landroid/media/Rating;

    move-result-object v1

    .local v1, "rating":Landroid/media/Rating;
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;

    invoke-virtual {v2, v1}, Lmiui/maml/elements/MusicController;->rating(Landroid/media/Rating;)V

    invoke-direct {p0, v1}, Lmiui/maml/elements/MusicControlScreenElement;->updateUserRating(Landroid/media/Rating;)V

    .end local v0    # "hasHeart":Z
    .end local v1    # "rating":Landroid/media/Rating;
    :cond_0
    return-void

    :cond_1
    move v0, v3

    goto :goto_0

    .restart local v0    # "hasHeart":Z
    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method protected readPackageName()V
    .locals 6

    .prologue
    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lmiui/maml/data/IndexedVariable;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;

    invoke-virtual {v3}, Lmiui/maml/elements/MusicController;->getRemoteControlClientPackageName()Ljava/lang/String;

    move-result-object v2

    .local v2, "pkg":Ljava/lang/String;
    const-string v3, "MusicControlScreenElement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readPackage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v3}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .local v0, "component":Landroid/content/ComponentName;
    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "component":Landroid/content/ComponentName;
    :cond_2
    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerPackageVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v3, v2}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    iget-object v3, p0, Lmiui/maml/elements/MusicControlScreenElement;->mPlayerClassVar:Lmiui/maml/data/IndexedVariable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    const-string v3, "MusicControlScreenElement"

    const-string v4, "set player info fail."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public resume()V
    .locals 0

    .prologue
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->resume()V

    invoke-virtual {p0}, Lmiui/maml/elements/MusicControlScreenElement;->requestUpdate()V

    return-void
.end method

.method public seekTo(D)V
    .locals 5
    .param p1, "progress"    # D

    .prologue
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mDurationVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v2}, Lmiui/maml/data/IndexedVariable;->getDouble()D

    move-result-wide v2

    mul-double/2addr v2, p1

    double-to-long v0, v2

    .local v0, "pos":J
    iget-object v2, p0, Lmiui/maml/elements/MusicControlScreenElement;->mMusicController:Lmiui/maml/elements/MusicController;

    invoke-virtual {v2, v0, v1}, Lmiui/maml/elements/MusicController;->seekTo(J)Z

    return-void
.end method
