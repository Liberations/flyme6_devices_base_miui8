.class Landroid/media/MediaScannerInjector;
.super Ljava/lang/Object;
.source "MediaScannerInjector.java"


# static fields
.field private static final DEBUG_LOG_PATH:Ljava/lang/String;

.field private static final MEDIA_META_APPROXIMATION:I = 0x400000

.field private static final MSG_PROCESSFILE_TIMEOUT:I = 0x1

.field private static final PROCESSFILE_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "MediaScannerInjector"

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageMiuiDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/debug_log/common/android.process.media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaScannerInjector;->DEBUG_LOG_PATH:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Landroid/os/Handler;

    .prologue
    sput-object p0, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    invoke-static {}, Landroid/media/MediaScannerInjector;->initDebugDirectory()V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/media/MediaScannerInjector;->DEBUG_LOG_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    invoke-static {p0, p1, p2}, Landroid/media/MediaScannerInjector;->copyFile(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private static copyFile(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "dst"    # Ljava/lang/String;
    .param p2, "length"    # I

    .prologue
    const/4 v3, 0x0

    .local v3, "fis":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/16 v8, 0xaa

    :try_start_2
    invoke-virtual {v6, v8}, Ljava/io/FileOutputStream;->write(I)V

    const/4 v7, 0x0

    .local v7, "size":I
    const/16 v8, 0x1000

    new-array v0, v8, [B

    .local v0, "b":[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .local v1, "bytesRead":I
    if-lez v1, :cond_0

    add-int/2addr v7, v1

    if-lt v7, p2, :cond_4

    sub-int v8, v7, p2

    sub-int/2addr v1, v8

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_0
    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v0    # "b":[B
    .end local v1    # "bytesRead":I
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "size":I
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :cond_3
    :goto_1
    return-void

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "b":[B
    .restart local v1    # "bytesRead":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "size":I
    :cond_4
    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v6, v0, v8, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .end local v0    # "b":[B
    .end local v1    # "bytesRead":I
    .end local v7    # "size":I
    :catch_0
    move-exception v2

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :goto_2
    :try_start_5
    const-string v8, "MediaScannerInjector"

    const-string v9, "IOException "

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_5

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_5
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v8, "MediaScannerInjector"

    const-string v9, "IOException"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "b":[B
    .restart local v1    # "bytesRead":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "size":I
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "MediaScannerInjector"

    const-string v9, "IOException"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v0    # "b":[B
    .end local v1    # "bytesRead":I
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "size":I
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v3, :cond_6

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_7
    :goto_4
    throw v8

    :catch_3
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "MediaScannerInjector"

    const-string v10, "IOException"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v8

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    :catch_4
    move-exception v2

    goto :goto_2

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private static initDebugDirectory()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/media/MediaScannerInjector;->DEBUG_LOG_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0, v2, v2, v2}, Lmiui/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "MediaScannerInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mkdir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/media/MediaScannerInjector;->DEBUG_LOG_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Landroid/media/MediaScannerInjector;->DEBUG_LOG_PATH:Ljava/lang/String;

    invoke-static {v1}, Lmiui/os/FileUtils;->addNoMedia(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static initMediaFileCapture()V
    .locals 2

    .prologue
    sget-object v0, Landroid/media/MediaScannerInjector;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    sget-object v0, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaScannerInjector$1;

    const-string v1, "MediaScannerInjector"

    invoke-direct {v0, v1}, Landroid/media/MediaScannerInjector$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/media/MediaScannerInjector;->sHandlerThread:Landroid/os/HandlerThread;

    sget-object v0, Landroid/media/MediaScannerInjector;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_0
    return-void
.end method

.method static keepMimeType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "oldMimeType"    # Ljava/lang/String;
    .param p1, "newMimeType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const-string v3, "audio"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v0, v2

    .local v0, "newTypeIsAudio":Z
    :goto_0
    const-string v3, "video/mp2p"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    return v2

    .end local v0    # "newTypeIsAudio":Z
    :cond_2
    move v0, v1

    goto :goto_0

    .restart local v0    # "newTypeIsAudio":Z
    :cond_3
    const-string v3, "video/x-matroska"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v0, :cond_1

    :cond_4
    move v2, v1

    goto :goto_1
.end method

.method public static processFileBegin(Ljava/lang/String;)V
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    sget-object v1, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    sget-object v1, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public static processFileEnd()V
    .locals 2

    .prologue
    sget-object v0, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/media/MediaScannerInjector;->sHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method
