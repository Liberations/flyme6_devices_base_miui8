.class public Lorg/egret/plugin/mi/android/util/launcher/NetClass;
.super Ljava/lang/Object;
.source "NetClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final TIME_OUT:I = 0x7530


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "out"    # Ljava/io/OutputStream;
    .param p4, "listener"    # Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;

    .prologue
    if-eqz p1, :cond_0

    if-nez p3, :cond_2

    :cond_0
    const-string v10, "NetTool"

    const-string v11, "url, out may be null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_0
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .local v9, "realUrl":Ljava/net/URL;
    const/4 v2, 0x0

    .local v2, "conn":Ljava/net/HttpURLConnection;
    const/4 v6, 0x0

    .local v6, "post":Ljava/io/OutputStream;
    const/4 v4, 0x0

    .local v4, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v9}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    if-nez v2, :cond_6

    if-eqz p4, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unable to open "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz v2, :cond_4

    :try_start_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_5
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p4, :cond_1

    const-string v10, "fail to close"

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "post":Ljava/io/OutputStream;
    .end local v9    # "realUrl":Ljava/net/URL;
    :catch_1
    move-exception v3

    .local v3, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V

    if-eqz p4, :cond_1

    invoke-virtual {v3}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .end local v3    # "e":Ljava/net/MalformedURLException;
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v6    # "post":Ljava/io/OutputStream;
    .restart local v9    # "realUrl":Ljava/net/URL;
    :cond_6
    const/16 v10, 0x7530

    :try_start_3
    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    if-eqz p2, :cond_b

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    if-nez v6, :cond_a

    if-eqz p4, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unable to open post: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    if-eqz v2, :cond_8

    :try_start_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    if-eqz v6, :cond_9

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_9
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p4, :cond_1

    const-string v10, "fail to close"

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3    # "e":Ljava/io/IOException;
    :cond_a
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v10

    const/16 v11, 0xc8

    if-eq v10, v11, :cond_f

    if-eqz p4, :cond_c

    const-string v10, "response code is HTTP_OK"

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_c
    if-eqz v2, :cond_d

    :try_start_6
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_e
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p4, :cond_1

    const-string v10, "fail to close"

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3    # "e":Ljava/io/IOException;
    :cond_f
    :try_start_7
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    .local v5, "length":I
    const/4 v7, 0x0

    .local v7, "progress":I
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    const/16 v10, 0x400

    new-array v1, v10, [B

    .local v1, "buffer":[B
    :cond_10
    :goto_1
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, "read":I
    if-lez v8, :cond_11

    if-eqz p4, :cond_14

    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->getInstance()Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    move-result-object v10

    invoke-virtual {v10}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->isRunning()Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v10

    if-nez v10, :cond_14

    :cond_11
    if-eqz v2, :cond_12

    :try_start_8
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_12
    if-eqz v6, :cond_13

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_13
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p4, :cond_1

    const-string v10, "fail to close"

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3    # "e":Ljava/io/IOException;
    :cond_14
    const/4 v10, 0x0

    :try_start_9
    invoke-virtual {p3, v1, v10, v8}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v7, v8

    if-eqz p4, :cond_10

    move-object/from16 v0, p4

    invoke-interface {v0, v7, v5}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onProgress(II)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .end local v1    # "buffer":[B
    .end local v5    # "length":I
    .end local v7    # "progress":I
    .end local v8    # "read":I
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_a
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p4, :cond_15

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_15
    if-eqz v2, :cond_16

    :try_start_b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_16
    if-eqz v6, :cond_17

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_17
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p4, :cond_1

    const-string v10, "fail to close"

    move-object/from16 v0, p4

    invoke-interface {v0, v10}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    if-eqz v2, :cond_18

    :try_start_c
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_18
    if-eqz v6, :cond_19

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_19
    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    :cond_1a
    :goto_2
    throw v10

    :catch_7
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p4, :cond_1a

    const-string v11, "fail to close"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private request(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "dst"    # Ljava/io/File;
    .param p4, "listener"    # Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;

    .prologue
    if-eqz p3, :cond_2

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .local v1, "out":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1, p4}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    if-eqz p4, :cond_0

    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->getInstance()Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "net thread is cancelled"

    invoke-interface {p4, v2}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    .end local v1    # "out":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :cond_1
    const/4 v2, 0x0

    invoke-interface {p4, v2}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p4, :cond_0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v2}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0, p1, p2, v1, p4}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    if-eqz p4, :cond_0

    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->getInstance()Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    move-result-object v2

    invoke-virtual {v2}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->isRunning()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "net thread is cancelled"

    invoke-interface {p4, v2}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onError(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {p4, v2}, Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;->onSuccess(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public getRequest(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->postRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequest(Ljava/lang/String;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->postRequest(Ljava/lang/String;Ljava/lang/String;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    return-void
.end method

.method public postRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, v1, v3}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->doRequest(Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v0

    .local v0, "ioe":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public postRequest(Ljava/lang/String;Ljava/lang/String;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "listener"    # Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->request(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    goto :goto_0
.end method

.method public writeResponseToFile(Ljava/lang/String;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "dst"    # Ljava/io/File;
    .param p3, "listener"    # Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;

    .prologue
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/egret/plugin/mi/android/util/launcher/NetClass;->request(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/NetClass$OnNetListener;)V

    goto :goto_0
.end method
