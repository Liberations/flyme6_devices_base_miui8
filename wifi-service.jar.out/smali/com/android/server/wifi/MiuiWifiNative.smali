.class public Lcom/android/server/wifi/MiuiWifiNative;
.super Ljava/lang/Object;
.source "MiuiWifiNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final SOFTAP_CONFIG_FILE:Ljava/lang/String; = "/data/misc/wifi/hostapd.conf"

.field private static final SOFTAP_DENY_MAC_FILE:Ljava/lang/String; = "/data/misc/wifi/miui_hostapd.deny"

.field private static final mLock:Ljava/lang/Object;

.field private static mMiuiWifiNative:Lcom/android/server/wifi/MiuiWifiNative; = null

.field private static final mTAG:Ljava/lang/String; = "MiuiWifiNative"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wifi/MiuiWifiNative;->mLock:Ljava/lang/Object;

    .line 57
    invoke-static {}, Lcom/android/server/wifi/MiuiWifiNative;->registerNatives()I

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method private native closeSapConnectionNative()V
.end method

.method private native connectToSapNative()Z
.end method

.method private doBooleanCommand(Ljava/lang/String;)Z
    .locals 5
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 148
    const-string v1, "MiuiWifiNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doBoolean: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    sget-object v2, Lcom/android/server/wifi/MiuiWifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 150
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/MiuiWifiNative;->doSapBooleanCommandNative(Ljava/lang/String;)Z

    move-result v0

    .line 151
    .local v0, "result":Z
    const-string v1, "MiuiWifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    monitor-exit v2

    return v0

    .line 153
    .end local v0    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private native doSapBooleanCommandNative(Ljava/lang/String;)Z
.end method

.method private native doSapIntCommandNative(Ljava/lang/String;)I
.end method

.method private native doSapStringCommandNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private ensureConfigFileExists()V
    .locals 4

    .prologue
    .line 184
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/misc/wifi/hostapd.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 186
    const-string v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    .line 189
    .local v1, "networkService":Landroid/os/INetworkManagementService;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v1    # "networkService":Landroid/os/INetworkManagementService;
    :cond_0
    :goto_0
    return-void

    .line 190
    .restart local v1    # "networkService":Landroid/os/INetworkManagementService;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/wifi/MiuiWifiNative;
    .locals 2

    .prologue
    .line 70
    const-class v1, Lcom/android/server/wifi/MiuiWifiNative;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/wifi/MiuiWifiNative;->mMiuiWifiNative:Lcom/android/server/wifi/MiuiWifiNative;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/android/server/wifi/MiuiWifiNative;

    invoke-direct {v0}, Lcom/android/server/wifi/MiuiWifiNative;-><init>()V

    sput-object v0, Lcom/android/server/wifi/MiuiWifiNative;->mMiuiWifiNative:Lcom/android/server/wifi/MiuiWifiNative;

    .line 74
    :cond_0
    sget-object v0, Lcom/android/server/wifi/MiuiWifiNative;->mMiuiWifiNative:Lcom/android/server/wifi/MiuiWifiNative;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native getWlanStatisticsNative(Ljava/lang/String;Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;)Z
.end method

.method private isMacAddress(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 250
    const-string v0, "^[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}+:[a-fA-F0-9]{2}$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private parsAndUpdateDenyMacFile(Ljava/util/Set;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "macSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 255
    .local v6, "reader":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 256
    .local v9, "tmpfile":Ljava/io/File;
    const/4 v11, 0x0

    .line 257
    .local v11, "writer":Ljava/io/BufferedWriter;
    new-instance v8, Ljava/util/HashSet;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 259
    .local v8, "tMacSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v13, "/data/misc/wifi/miui_hostapd.deny"

    invoke-direct {v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 260
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v13

    if-nez v13, :cond_3

    .line 291
    if-eqz v6, :cond_0

    .line 292
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 294
    :cond_0
    if-eqz v11, :cond_1

    .line 295
    invoke-virtual {v11}, Ljava/io/BufferedWriter;->close()V

    .line 297
    :cond_1
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 298
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c

    .line 304
    .end local v2    # "file":Ljava/io/File;
    :cond_2
    :goto_0
    return-void

    .line 263
    .restart local v2    # "file":Ljava/io/File;
    :cond_3
    :try_start_2
    new-instance v10, Ljava/io/File;

    const-string v13, "/data/misc/wifi/miui_hostapd.deny.tmp"

    invoke-direct {v10, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 264
    .end local v9    # "tmpfile":Ljava/io/File;
    .local v10, "tmpfile":Ljava/io/File;
    :try_start_3
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/FileReader;

    invoke-direct {v13, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 265
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .local v7, "reader":Ljava/io/BufferedReader;
    :try_start_4
    new-instance v12, Ljava/io/BufferedWriter;

    new-instance v13, Ljava/io/FileWriter;

    invoke-direct {v13, v10}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v12, v13}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 266
    .end local v11    # "writer":Ljava/io/BufferedWriter;
    .local v12, "writer":Ljava/io/BufferedWriter;
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_b

    .line 267
    const-string v13, "#"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 268
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 266
    :cond_4
    :goto_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 269
    :cond_5
    const-string v13, "-"

    invoke-virtual {v4, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 271
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/wifi/MiuiWifiNative;->isMacAddress(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 272
    invoke-interface {v8, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 273
    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 274
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 285
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v11, v12

    .end local v12    # "writer":Ljava/io/BufferedWriter;
    .restart local v11    # "writer":Ljava/io/BufferedWriter;
    move-object v9, v10

    .end local v10    # "tmpfile":Ljava/io/File;
    .restart local v9    # "tmpfile":Ljava/io/File;
    move-object v6, v7

    .line 286
    .end local v2    # "file":Ljava/io/File;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :goto_3
    :try_start_6
    const-string v13, "MiuiWifiNative"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not open /data/misc/wifi/hostapd.conf, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 291
    if-eqz v6, :cond_6

    .line 292
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 294
    :cond_6
    if-eqz v11, :cond_7

    .line 295
    invoke-virtual {v11}, Ljava/io/BufferedWriter;->close()V

    .line 297
    :cond_7
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 298
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 300
    :catch_1
    move-exception v13

    goto/16 :goto_0

    .line 276
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v9    # "tmpfile":Ljava/io/File;
    .end local v11    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "tmpfile":Ljava/io/File;
    .restart local v12    # "writer":Ljava/io/BufferedWriter;
    :cond_8
    :try_start_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 287
    .end local v4    # "line":Ljava/lang/String;
    :catch_2
    move-exception v1

    move-object v11, v12

    .end local v12    # "writer":Ljava/io/BufferedWriter;
    .restart local v11    # "writer":Ljava/io/BufferedWriter;
    move-object v9, v10

    .end local v10    # "tmpfile":Ljava/io/File;
    .restart local v9    # "tmpfile":Ljava/io/File;
    move-object v6, v7

    .line 288
    .end local v2    # "file":Ljava/io/File;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/io/IOException;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :goto_4
    :try_start_9
    const-string v13, "MiuiWifiNative"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not read /data/misc/wifi/hostapd.conf, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 291
    if-eqz v6, :cond_9

    .line 292
    :try_start_a
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 294
    :cond_9
    if-eqz v11, :cond_a

    .line 295
    invoke-virtual {v11}, Ljava/io/BufferedWriter;->close()V

    .line 297
    :cond_a
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 298
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_0

    .line 300
    :catch_3
    move-exception v13

    goto/16 :goto_0

    .line 280
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v9    # "tmpfile":Ljava/io/File;
    .end local v11    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "tmpfile":Ljava/io/File;
    .restart local v12    # "writer":Ljava/io/BufferedWriter;
    :cond_b
    :try_start_b
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 281
    .local v5, "mac":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_5

    .line 290
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "mac":Ljava/lang/String;
    :catchall_0
    move-exception v13

    move-object v11, v12

    .end local v12    # "writer":Ljava/io/BufferedWriter;
    .restart local v11    # "writer":Ljava/io/BufferedWriter;
    move-object v9, v10

    .end local v10    # "tmpfile":Ljava/io/File;
    .restart local v9    # "tmpfile":Ljava/io/File;
    move-object v6, v7

    .line 291
    .end local v2    # "file":Ljava/io/File;
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :goto_6
    if-eqz v6, :cond_c

    .line 292
    :try_start_c
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V

    .line 294
    :cond_c
    if-eqz v11, :cond_d

    .line 295
    invoke-virtual {v11}, Ljava/io/BufferedWriter;->close()V

    .line 297
    :cond_d
    if-eqz v9, :cond_e

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 298
    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 302
    :cond_e
    :goto_7
    throw v13

    .line 283
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v9    # "tmpfile":Ljava/io/File;
    .end local v11    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "tmpfile":Ljava/io/File;
    .restart local v12    # "writer":Ljava/io/BufferedWriter;
    :cond_f
    :try_start_d
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->flush()V

    .line 284
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lcom/android/server/wifi/MiuiWifiNative;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 291
    if-eqz v7, :cond_10

    .line 292
    :try_start_e
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 294
    :cond_10
    if-eqz v12, :cond_11

    .line 295
    invoke-virtual {v12}, Ljava/io/BufferedWriter;->close()V

    .line 297
    :cond_11
    if-eqz v10, :cond_12

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_12

    .line 298
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    :cond_12
    move-object v11, v12

    .end local v12    # "writer":Ljava/io/BufferedWriter;
    .restart local v11    # "writer":Ljava/io/BufferedWriter;
    move-object v9, v10

    .end local v10    # "tmpfile":Ljava/io/File;
    .restart local v9    # "tmpfile":Ljava/io/File;
    move-object v6, v7

    .line 302
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 300
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v9    # "tmpfile":Ljava/io/File;
    .end local v11    # "writer":Ljava/io/BufferedWriter;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "tmpfile":Ljava/io/File;
    .restart local v12    # "writer":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v13

    move-object v11, v12

    .end local v12    # "writer":Ljava/io/BufferedWriter;
    .restart local v11    # "writer":Ljava/io/BufferedWriter;
    move-object v9, v10

    .end local v10    # "tmpfile":Ljava/io/File;
    .restart local v9    # "tmpfile":Ljava/io/File;
    move-object v6, v7

    .line 303
    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_0

    .line 300
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "line":Ljava/lang/String;
    :catch_5
    move-exception v14

    goto :goto_7

    .line 290
    :catchall_1
    move-exception v13

    goto :goto_6

    .end local v9    # "tmpfile":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v10    # "tmpfile":Ljava/io/File;
    :catchall_2
    move-exception v13

    move-object v9, v10

    .end local v10    # "tmpfile":Ljava/io/File;
    .restart local v9    # "tmpfile":Ljava/io/File;
    goto :goto_6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v9    # "tmpfile":Ljava/io/File;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "tmpfile":Ljava/io/File;
    :catchall_3
    move-exception v13

    move-object v9, v10

    .end local v10    # "tmpfile":Ljava/io/File;
    .restart local v9    # "tmpfile":Ljava/io/File;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .line 287
    .end local v2    # "file":Ljava/io/File;
    :catch_6
    move-exception v1

    goto/16 :goto_4

    .end local v9    # "tmpfile":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v10    # "tmpfile":Ljava/io/File;
    :catch_7
    move-exception v1

    move-object v9, v10

    .end local v10    # "tmpfile":Ljava/io/File;
    .restart local v9    # "tmpfile":Ljava/io/File;
    goto/16 :goto_4

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v9    # "tmpfile":Ljava/io/File;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "tmpfile":Ljava/io/File;
    :catch_8
    move-exception v1

    move-object v9, v10

    .end local v10    # "tmpfile":Ljava/io/File;
    .restart local v9    # "tmpfile":Ljava/io/File;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 285
    .end local v2    # "file":Ljava/io/File;
    :catch_9
    move-exception v1

    goto/16 :goto_3

    .end local v9    # "tmpfile":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v10    # "tmpfile":Ljava/io/File;
    :catch_a
    move-exception v1

    move-object v9, v10

    .end local v10    # "tmpfile":Ljava/io/File;
    .restart local v9    # "tmpfile":Ljava/io/File;
    goto/16 :goto_3

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v9    # "tmpfile":Ljava/io/File;
    .restart local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "tmpfile":Ljava/io/File;
    :catch_b
    move-exception v1

    move-object v9, v10

    .end local v10    # "tmpfile":Ljava/io/File;
    .restart local v9    # "tmpfile":Ljava/io/File;
    move-object v6, v7

    .end local v7    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_3

    .line 300
    :catch_c
    move-exception v13

    goto/16 :goto_0
.end method

.method private parseAndUpdateSoftapConfigfile(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 13
    .param p1, "filed"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "isRemove"    # Z

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/android/server/wifi/MiuiWifiNative;->ensureConfigFileExists()V

    .line 199
    const/4 v2, 0x0

    .line 200
    .local v2, "filedFind":Z
    const/4 v4, 0x0

    .line 201
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 202
    .local v6, "tmpfile":Ljava/io/File;
    const/4 v8, 0x0

    .line 204
    .local v8, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v10, "/data/misc/wifi/hostapd.conf"

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    .local v1, "file":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    const-string v10, "/data/misc/wifi/hostapd.conf.tmp"

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .end local v6    # "tmpfile":Ljava/io/File;
    .local v7, "tmpfile":Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 207
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v9, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/FileWriter;

    invoke-direct {v10, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 208
    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .local v9, "writer":Ljava/io/BufferedWriter;
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_5

    .line 209
    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 210
    const/4 v2, 0x1

    .line 211
    if-nez p3, :cond_0

    .line 212
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 208
    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 215
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    .line 223
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v8, v9

    .end local v9    # "writer":Ljava/io/BufferedWriter;
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    move-object v6, v7

    .end local v7    # "tmpfile":Ljava/io/File;
    .restart local v6    # "tmpfile":Ljava/io/File;
    move-object v4, v5

    .line 224
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    const-string v10, "MiuiWifiNative"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not open /data/misc/wifi/hostapd.conf, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 229
    if-eqz v4, :cond_2

    .line 230
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 232
    :cond_2
    if-eqz v8, :cond_3

    .line 233
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    .line 235
    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 236
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    .line 243
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    :goto_3
    return-void

    .line 218
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "tmpfile":Ljava/io/File;
    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "tmpfile":Ljava/io/File;
    .restart local v9    # "writer":Ljava/io/BufferedWriter;
    :cond_5
    if-nez v2, :cond_6

    if-nez p3, :cond_6

    .line 219
    :try_start_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 221
    :cond_6
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->flush()V

    .line 222
    invoke-direct {p0, v7, v1}, Lcom/android/server/wifi/MiuiWifiNative;->rename(Ljava/io/File;Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 229
    if-eqz v5, :cond_7

    .line 230
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 232
    :cond_7
    if-eqz v9, :cond_8

    .line 233
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V

    .line 235
    :cond_8
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 236
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_9
    move-object v8, v9

    .end local v9    # "writer":Ljava/io/BufferedWriter;
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    move-object v6, v7

    .end local v7    # "tmpfile":Ljava/io/File;
    .restart local v6    # "tmpfile":Ljava/io/File;
    move-object v4, v5

    .line 240
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 238
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "tmpfile":Ljava/io/File;
    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "tmpfile":Ljava/io/File;
    .restart local v9    # "writer":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "writer":Ljava/io/BufferedWriter;
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    move-object v6, v7

    .end local v7    # "tmpfile":Ljava/io/File;
    .restart local v6    # "tmpfile":Ljava/io/File;
    move-object v4, v5

    .line 241
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 225
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "line":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 226
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    :try_start_8
    const-string v10, "MiuiWifiNative"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not read /data/misc/wifi/hostapd.conf, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 229
    if-eqz v4, :cond_a

    .line 230
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 232
    :cond_a
    if-eqz v8, :cond_b

    .line 233
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    .line 235
    :cond_b
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 236
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_3

    .line 238
    :catch_3
    move-exception v10

    goto :goto_3

    .line 228
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 229
    :goto_5
    if-eqz v4, :cond_c

    .line 230
    :try_start_a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 232
    :cond_c
    if-eqz v8, :cond_d

    .line 233
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V

    .line 235
    :cond_d
    if-eqz v6, :cond_e

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 236
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 240
    :cond_e
    :goto_6
    throw v10

    .line 238
    :catch_4
    move-exception v11

    goto :goto_6

    .line 228
    .end local v6    # "tmpfile":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v7    # "tmpfile":Ljava/io/File;
    :catchall_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "tmpfile":Ljava/io/File;
    .restart local v6    # "tmpfile":Ljava/io/File;
    goto :goto_5

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "tmpfile":Ljava/io/File;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "tmpfile":Ljava/io/File;
    :catchall_2
    move-exception v10

    move-object v6, v7

    .end local v7    # "tmpfile":Ljava/io/File;
    .restart local v6    # "tmpfile":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "tmpfile":Ljava/io/File;
    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "tmpfile":Ljava/io/File;
    .restart local v9    # "writer":Ljava/io/BufferedWriter;
    :catchall_3
    move-exception v10

    move-object v8, v9

    .end local v9    # "writer":Ljava/io/BufferedWriter;
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    move-object v6, v7

    .end local v7    # "tmpfile":Ljava/io/File;
    .restart local v6    # "tmpfile":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 225
    .end local v6    # "tmpfile":Ljava/io/File;
    .restart local v7    # "tmpfile":Ljava/io/File;
    :catch_5
    move-exception v0

    move-object v6, v7

    .end local v7    # "tmpfile":Ljava/io/File;
    .restart local v6    # "tmpfile":Ljava/io/File;
    goto :goto_4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "tmpfile":Ljava/io/File;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "tmpfile":Ljava/io/File;
    :catch_6
    move-exception v0

    move-object v6, v7

    .end local v7    # "tmpfile":Ljava/io/File;
    .restart local v6    # "tmpfile":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "tmpfile":Ljava/io/File;
    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "tmpfile":Ljava/io/File;
    .restart local v9    # "writer":Ljava/io/BufferedWriter;
    :catch_7
    move-exception v0

    move-object v8, v9

    .end local v9    # "writer":Ljava/io/BufferedWriter;
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    move-object v6, v7

    .end local v7    # "tmpfile":Ljava/io/File;
    .restart local v6    # "tmpfile":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 238
    .end local v1    # "file":Ljava/io/File;
    .local v0, "e":Ljava/io/FileNotFoundException;
    :catch_8
    move-exception v10

    goto/16 :goto_3

    .line 223
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_9
    move-exception v0

    goto/16 :goto_2

    .end local v6    # "tmpfile":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v7    # "tmpfile":Ljava/io/File;
    :catch_a
    move-exception v0

    move-object v6, v7

    .end local v7    # "tmpfile":Ljava/io/File;
    .restart local v6    # "tmpfile":Ljava/io/File;
    goto/16 :goto_2

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "tmpfile":Ljava/io/File;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "tmpfile":Ljava/io/File;
    :catch_b
    move-exception v0

    move-object v6, v7

    .end local v7    # "tmpfile":Ljava/io/File;
    .restart local v6    # "tmpfile":Ljava/io/File;
    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method private static native registerNatives()I
.end method

.method private rename(Ljava/io/File;Ljava/io/File;)V
    .locals 5
    .param p1, "sFile"    # Ljava/io/File;
    .param p2, "dFile"    # Ljava/io/File;

    .prologue
    .line 170
    const/4 v0, 0x0

    .line 172
    .local v0, "dPath":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 173
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {p1, p2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 175
    const/16 v2, 0x3e8

    const/16 v3, 0x3f2

    invoke-static {v0, v2, v3}, Landroid/system/Os;->chown(Ljava/lang/String;II)V

    .line 176
    const/16 v2, 0x1b0

    invoke-static {v0, v2}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v1

    .line 179
    .local v1, "e":Landroid/system/ErrnoException;
    const-string v2, "MiuiWifiNative"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not read "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public closeSapConnection()V
    .locals 2

    .prologue
    .line 142
    sget-object v1, Lcom/android/server/wifi/MiuiWifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/MiuiWifiNative;->closeSapConnectionNative()V

    .line 144
    monitor-exit v1

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public connectToSap()Z
    .locals 2

    .prologue
    .line 136
    sget-object v1, Lcom/android/server/wifi/MiuiWifiNative;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 137
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/MiuiWifiNative;->connectToSapNative()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deauthenticate(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deauthenticate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/MiuiWifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public disassociate(Ljava/lang/String;)Z
    .locals 2
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disassociate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/MiuiWifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getWlanStatistics(Ljava/lang/String;)Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 78
    new-instance v0, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;-><init>(Lcom/android/server/wifi/MiuiWifiNative;)V

    .line 79
    .local v0, "statics":Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;
    invoke-static {p1, v0}, Lcom/android/server/wifi/MiuiWifiNative;->getWlanStatisticsNative(Ljava/lang/String;Lcom/android/server/wifi/MiuiWifiNative$WifiLinkLayerStatics;)Z

    .line 80
    return-object v0
.end method

.method public reloadDenyList()Z
    .locals 1

    .prologue
    .line 161
    const-string v0, "SET deny_mac_file /data/misc/wifi/miui_hostapd.deny"

    invoke-direct {p0, v0}, Lcom/android/server/wifi/MiuiWifiNative;->doBooleanCommand(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setHotSpotDenyMac(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "macSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/wifi/MiuiWifiNative;->parsAndUpdateDenyMacFile(Ljava/util/Set;)V

    .line 308
    invoke-virtual {p0}, Lcom/android/server/wifi/MiuiWifiNative;->reloadDenyList()Z

    .line 309
    return-void
.end method

.method public setHotSpotMaxNum(I)V
    .locals 3
    .param p1, "num"    # I

    .prologue
    .line 246
    const-string v0, "max_num_sta"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wifi/MiuiWifiNative;->parseAndUpdateSoftapConfigfile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 247
    return-void
.end method

.method public setHotSpotVendorSpecific(Ljava/lang/String;)V
    .locals 2
    .param p1, "vendorSpecificStr"    # Ljava/lang/String;

    .prologue
    .line 312
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 313
    .local v0, "isRemove":Z
    :goto_0
    const-string v1, "vendor_elements"

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/wifi/MiuiWifiNative;->parseAndUpdateSoftapConfigfile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 314
    return-void

    .line 312
    .end local v0    # "isRemove":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
