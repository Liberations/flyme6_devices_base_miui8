.class public Lmiui/maml/SoundManager;
.super Ljava/lang/Object;
.source "SoundManager.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/SoundManager$2;,
        Lmiui/maml/SoundManager$SoundOptions;,
        Lmiui/maml/SoundManager$Command;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MamlSoundManager"

.field private static final MAX_FILE_SIZE:I = 0x80000

.field private static final MAX_STREAMS:I = 0x8


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInitSignal:Ljava/lang/Object;

.field private mInitialized:Z

.field private mPendingSoundMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/maml/SoundManager$SoundOptions;",
            ">;"
        }
    .end annotation
.end field

.field private mPlayingSoundMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mResourceManager:Lmiui/maml/ResourceManager;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenContext;)V
    .locals 1
    .param p1, "context"    # Lmiui/maml/ScreenContext;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/SoundManager;->mInitSignal:Ljava/lang/Object;

    iget-object v0, p1, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    iput-object v0, p0, Lmiui/maml/SoundManager;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {p1}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/SoundManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/SoundManager;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/SoundManager;

    .prologue
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$002(Lmiui/maml/SoundManager;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Lmiui/maml/SoundManager;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    iput-object p1, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$100(Lmiui/maml/SoundManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/SoundManager;

    .prologue
    iget-object v0, p0, Lmiui/maml/SoundManager;->mInitSignal:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lmiui/maml/SoundManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/maml/SoundManager;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lmiui/maml/SoundManager;->mInitialized:Z

    return p1
.end method

.method private init()V
    .locals 4

    .prologue
    iget-boolean v0, p0, Lmiui/maml/SoundManager;->mInitialized:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lmiui/maml/SoundManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    new-instance v0, Landroid/media/SoundPool;

    const/16 v1, 0x8

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/SoundManager;->mInitialized:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiui/maml/SoundManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lmiui/maml/SoundManager$1;

    invoke-direct {v1, p0}, Lmiui/maml/SoundManager$1;-><init>(Lmiui/maml/SoundManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lmiui/maml/SoundManager;->mInitSignal:Ljava/lang/Object;

    monitor-enter v1

    :goto_1
    :try_start_0
    iget-boolean v0, p0, Lmiui/maml/SoundManager;->mInitialized:Z

    if-eqz v0, :cond_2

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lmiui/maml/SoundManager;->mInitSignal:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private declared-synchronized playSoundImp(ILmiui/maml/SoundManager$SoundOptions;)I
    .locals 10
    .param p1, "sound"    # I
    .param p2, "options"    # Lmiui/maml/SoundManager$SoundOptions;

    .prologue
    const/4 v9, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move v7, v9

    :goto_0
    monitor-exit p0

    return v7

    :cond_0
    :try_start_1
    iget-boolean v0, p2, Lmiui/maml/SoundManager$SoundOptions;->mKeepCur:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lmiui/maml/SoundManager;->stopAllPlaying()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p2, Lmiui/maml/SoundManager$SoundOptions;->mVolume:F

    iget v3, p2, Lmiui/maml/SoundManager$SoundOptions;->mVolume:F

    const/4 v4, 0x1

    iget-boolean v1, p2, Lmiui/maml/SoundManager$SoundOptions;->mLoop:Z

    if-eqz v1, :cond_2

    const/4 v5, -0x1

    :goto_1
    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v7

    .local v7, "cur":I
    iget-object v0, p0, Lmiui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .end local v7    # "cur":I
    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v0, "MamlSoundManager"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v7, v9

    goto :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    move v5, v9

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 2
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .prologue
    if-nez p3, :cond_0

    iget-object v0, p0, Lmiui/maml/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/SoundManager$SoundOptions;

    invoke-direct {p0, p2, v0}, Lmiui/maml/SoundManager;->playSoundImp(ILmiui/maml/SoundManager$SoundOptions;)I

    :cond_0
    iget-object v0, p0, Lmiui/maml/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lmiui/maml/SoundManager;->stopAllPlaying()V

    return-void
.end method

.method public declared-synchronized playSound(Ljava/lang/String;Lmiui/maml/SoundManager$SoundOptions;)I
    .locals 11
    .param p1, "sound"    # Ljava/lang/String;
    .param p2, "options"    # Lmiui/maml/SoundManager$SoundOptions;

    .prologue
    const/4 v10, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmiui/maml/SoundManager;->mInitialized:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmiui/maml/SoundManager;->init()V

    :cond_0
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    move v0, v10

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .local v9, "sd":Ljava/lang/Integer;
    if-nez v9, :cond_4

    iget-object v0, p0, Lmiui/maml/SoundManager;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual {v0, p1}, Lmiui/maml/ResourceManager;->getFile(Ljava/lang/String;)Landroid/os/MemoryFile;

    move-result-object v8

    .local v8, "file":Landroid/os/MemoryFile;
    if-nez v8, :cond_2

    const-string v0, "MamlSoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the sound does not exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Landroid/os/MemoryFile;->length()I

    move-result v0

    const/high16 v1, 0x80000

    if-le v0, v1, :cond_3

    const-string v0, "MamlSoundManager"

    const-string v1, "the sound file is larger than %d KB: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/16 v4, 0x200

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v10

    goto :goto_0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v8}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v8}, Landroid/os/MemoryFile;->length()I

    move-result v4

    int-to-long v4, v4

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->load(Ljava/io/FileDescriptor;JJI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Landroid/os/MemoryFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    iget-object v0, p0, Lmiui/maml/SoundManager;->mPendingSoundMap:Ljava/util/HashMap;

    invoke-virtual {v0, v9, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v10

    goto :goto_0

    :catch_0
    move-exception v7

    .local v7, "e":Ljava/io/IOException;
    const-string v0, "MamlSoundManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to load sound. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "file":Landroid/os/MemoryFile;
    .end local v9    # "sd":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .restart local v9    # "sd":Ljava/lang/Integer;
    :cond_4
    :try_start_4
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lmiui/maml/SoundManager;->playSoundImp(ILmiui/maml/SoundManager$SoundOptions;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    goto/16 :goto_0
.end method

.method public declared-synchronized playSound(ILmiui/maml/SoundManager$Command;)V
    .locals 2
    .param p1, "streamId"    # I
    .param p2, "command"    # Lmiui/maml/SoundManager$Command;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmiui/maml/SoundManager;->mInitialized:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmiui/maml/SoundManager;->init()V

    :cond_0
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    if-gtz p1, :cond_2

    :cond_1
    :goto_0
    :pswitch_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    sget-object v0, Lmiui/maml/SoundManager$2;->$SwitchMap$miui$maml$SoundManager$Command:[I

    invoke-virtual {p2}, Lmiui/maml/SoundManager$Command;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->pause(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->resume(I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p1}, Landroid/media/SoundPool;->stop(I)V

    iget-object v0, p0, Lmiui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized release()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lmiui/maml/SoundManager;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lmiui/maml/SoundManager;->stopAllPlaying()V

    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    iget-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/SoundManager;->mInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected stopAllPlaying()V
    .locals 4

    .prologue
    iget-object v2, p0, Lmiui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .local v1, "sd":Ljava/lang/Integer;
    iget-object v2, p0, Lmiui/maml/SoundManager;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->stop(I)V

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sd":Ljava/lang/Integer;
    :cond_1
    iget-object v2, p0, Lmiui/maml/SoundManager;->mPlayingSoundMap:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method
