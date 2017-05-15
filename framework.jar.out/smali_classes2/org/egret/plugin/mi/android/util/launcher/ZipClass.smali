.class public Lorg/egret/plugin/mi/android/util/launcher/ZipClass;
.super Ljava/lang/Object;
.source "ZipClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x400

.field private static final TAG:Ljava/lang/String; = "ZipClass"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doUnzip(Ljava/io/File;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;)Z
    .locals 20
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dstRoot"    # Ljava/io/File;
    .param p3, "listener"    # Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;

    .prologue
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const-string v17, "ZipClass"

    const-string v18, "src or dstRoot may be null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    :cond_1
    :goto_0
    return v17

    :cond_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->mkdirs()Z

    move-result v17

    if-nez v17, :cond_4

    const-string v17, "ZipClass"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "fail to mkdir "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_3

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "fail to mkdir "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V

    :cond_3
    const/16 v17, 0x0

    goto :goto_0

    :cond_4
    const/4 v15, 0x0

    .local v15, "zipfile":Ljava/util/zip/ZipFile;
    const/4 v7, 0x0

    .local v7, "in":Ljava/io/InputStream;
    const/4 v9, 0x0

    .local v9, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v16, Ljava/util/zip/ZipFile;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v15    # "zipfile":Ljava/util/zip/ZipFile;
    .local v16, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->size()I

    move-result v13

    .local v13, "size":I
    const/4 v2, 0x0

    .local v2, "count":I
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .local v5, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    move-object v10, v9

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .local v10, "out":Ljava/io/FileOutputStream;
    :cond_5
    :goto_1
    :try_start_2
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_16

    if-eqz p3, :cond_8

    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->getInstance()Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->isRunning()Z

    move-result v17

    if-nez v17, :cond_8

    const-string v17, "zip thread is cancelled"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/16 v17, 0x0

    if-eqz v16, :cond_6

    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V

    :cond_6
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_7
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p3, :cond_1

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v4    # "e":Ljava/io/IOException;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    if-eqz p3, :cond_9

    :try_start_4
    move-object/from16 v0, p3

    invoke-interface {v0, v2, v13}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onProgress(II)V

    :cond_9
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/zip/ZipEntry;

    .local v6, "entry":Ljava/util/zip/ZipEntry;
    new-instance v14, Ljava/io/File;

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v14, "target":Ljava/io/File;
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v17

    if-nez v17, :cond_5

    const-string v17, "ZipClass"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "fail to mkdir "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_a

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "fail to mkdir "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_a
    const/16 v17, 0x0

    if-eqz v16, :cond_b

    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V

    :cond_b
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_c
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p3, :cond_1

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v4    # "e":Ljava/io/IOException;
    :cond_d
    :try_start_6
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v8, v0

    .local v8, "length":I
    const/4 v11, 0x0

    .local v11, "progress":I
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    const/16 v17, 0x400

    :try_start_7
    move/from16 v0, v17

    new-array v3, v0, [B

    .local v3, "data":[B
    :cond_e
    :goto_2
    const/16 v17, 0x0

    const/16 v18, 0x400

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v3, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    .local v12, "read":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v12, v0, :cond_15

    if-eqz p3, :cond_11

    invoke-static {}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->getInstance()Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/egret/plugin/mi/android/util/launcher/ExecutorLab;->isRunning()Z

    move-result v17

    if-nez v17, :cond_11

    const-string v17, "zip thread is cancelled"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/16 v17, 0x0

    if-eqz v16, :cond_f

    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V

    :cond_f
    if-eqz v7, :cond_10

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_10
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p3, :cond_1

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v4    # "e":Ljava/io/IOException;
    :cond_11
    const/16 v17, 0x0

    :try_start_9
    move/from16 v0, v17

    invoke-virtual {v9, v3, v0, v12}, Ljava/io/FileOutputStream;->write([BII)V

    add-int/2addr v11, v12

    if-eqz p3, :cond_e

    move-object/from16 v0, p3

    invoke-interface {v0, v11, v8}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onFileProgress(II)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    .end local v2    # "count":I
    .end local v3    # "data":[B
    .end local v5    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    .end local v8    # "length":I
    .end local v11    # "progress":I
    .end local v12    # "read":I
    .end local v13    # "size":I
    .end local v14    # "target":Ljava/io/File;
    :catch_3
    move-exception v4

    move-object/from16 v15, v16

    .end local v16    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v4    # "e":Ljava/io/IOException;
    .restart local v15    # "zipfile":Ljava/util/zip/ZipFile;
    :goto_3
    :try_start_a
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p3, :cond_12

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_12
    const/16 v17, 0x0

    if-eqz v15, :cond_13

    :try_start_b
    invoke-virtual {v15}, Ljava/util/zip/ZipFile;->close()V

    :cond_13
    if-eqz v7, :cond_14

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_14
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p3, :cond_1

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v4    # "e":Ljava/io/IOException;
    .end local v15    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v2    # "count":I
    .restart local v3    # "data":[B
    .restart local v5    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v6    # "entry":Ljava/util/zip/ZipEntry;
    .restart local v8    # "length":I
    .restart local v11    # "progress":I
    .restart local v12    # "read":I
    .restart local v13    # "size":I
    .restart local v14    # "target":Ljava/io/File;
    .restart local v16    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_15
    :try_start_c
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object v10, v9

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .end local v3    # "data":[B
    .end local v6    # "entry":Ljava/util/zip/ZipEntry;
    .end local v8    # "length":I
    .end local v11    # "progress":I
    .end local v12    # "read":I
    .end local v14    # "target":Ljava/io/File;
    :cond_16
    :try_start_d
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V

    const-string v17, "ZipClass"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "success to unzip "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_17

    invoke-interface/range {p3 .. p3}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onSuccess()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :cond_17
    const/16 v17, 0x1

    if-eqz v16, :cond_18

    :try_start_e
    invoke-virtual/range {v16 .. v16}, Ljava/util/zip/ZipFile;->close()V

    :cond_18
    if-eqz v7, :cond_19

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_19
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p3, :cond_1

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v2    # "count":I
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v10    # "out":Ljava/io/FileOutputStream;
    .end local v13    # "size":I
    .end local v16    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v15    # "zipfile":Ljava/util/zip/ZipFile;
    :catchall_0
    move-exception v17

    :goto_4
    if-eqz v15, :cond_1a

    :try_start_f
    invoke-virtual {v15}, Ljava/util/zip/ZipFile;->close()V

    :cond_1a
    if-eqz v7, :cond_1b

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    :cond_1b
    if-eqz v9, :cond_1c

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    :cond_1c
    :goto_5
    throw v17

    :catch_6
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    if-eqz p3, :cond_1c

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;->onError(Ljava/lang/String;)V

    goto :goto_5

    .end local v4    # "e":Ljava/io/IOException;
    .end local v15    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v16    # "zipfile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v17

    move-object/from16 v15, v16

    .end local v16    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v15    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_4

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .end local v15    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v2    # "count":I
    .restart local v5    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "size":I
    .restart local v16    # "zipfile":Ljava/util/zip/ZipFile;
    :catchall_2
    move-exception v17

    move-object v9, v10

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    move-object/from16 v15, v16

    .end local v16    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v15    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_4

    .end local v2    # "count":I
    .end local v5    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v13    # "size":I
    :catch_7
    move-exception v4

    goto/16 :goto_3

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .end local v15    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v2    # "count":I
    .restart local v5    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v13    # "size":I
    .restart local v16    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_8
    move-exception v4

    move-object v9, v10

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    move-object/from16 v15, v16

    .end local v16    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v15    # "zipfile":Ljava/util/zip/ZipFile;
    goto/16 :goto_3
.end method


# virtual methods
.method public unzip(Ljava/io/File;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;)V
    .locals 2
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dstRoot"    # Ljava/io/File;
    .param p3, "listener"    # Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;

    .prologue
    if-nez p3, :cond_0

    const-string v0, "ZipClass"

    const-string v1, "listener is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass;->doUnzip(Ljava/io/File;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;)Z

    return-void
.end method

.method public unzip(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p1, "src"    # Ljava/io/File;
    .param p2, "dstRoot"    # Ljava/io/File;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/egret/plugin/mi/android/util/launcher/ZipClass;->doUnzip(Ljava/io/File;Ljava/io/File;Lorg/egret/plugin/mi/android/util/launcher/ZipClass$OnZipListener;)Z

    move-result v0

    return v0
.end method
