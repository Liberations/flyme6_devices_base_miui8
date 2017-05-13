.class public Lcom/android/server/wifi/WifiServiceInjector;
.super Ljava/lang/Object;
.source "WifiServiceInjector.java"


# static fields
.field private static final SUPPLICANT_CONFIG_FILE:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf"

.field private static final TAG:Ljava/lang/String; = "WifiServiceInjector"

.field private static final WIFI_CONFIG_HEADER:Ljava/lang/String; = "network={"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CheckIfBackgroundScanAllowed(Landroid/content/Context;Landroid/os/WorkSource;)Z
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .prologue
    const/4 v2, 0x1

    .line 35
    if-eqz p1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v1

    .line 37
    .local v1, "realOwner":I
    :goto_0
    invoke-static {v1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 46
    :goto_1
    return v2

    .line 35
    .end local v1    # "realOwner":I
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    goto :goto_0

    .line 42
    .restart local v1    # "realOwner":I
    :cond_1
    :try_start_0
    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Landroid/location/LocationPolicyManager;->isAllowedByLocationPolicy(Landroid/content/Context;II)Z

    move-result v2

    goto :goto_1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_1
.end method

.method private static encodeGbkSSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "ssid"    # Ljava/lang/String;

    .prologue
    .line 163
    const-string v1, ""

    .line 165
    .local v1, "hex":Ljava/lang/String;
    :try_start_0
    const-string v2, "GBK"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceInjector;->toHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 169
    :goto_0
    return-object v1

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "WifiServiceInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encodeGbk to hex failed when read wifi data from wpa_supplicant"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static encodeUtf8SSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "ssid"    # Ljava/lang/String;

    .prologue
    .line 153
    const-string v1, ""

    .line 155
    .local v1, "hex":Ljava/lang/String;
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceInjector;->toHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 159
    :goto_0
    return-object v1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v2, "WifiServiceInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "encodeUtf8 to hex failed when read wifi data from wpa_supplicant"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static fromHex(CZ)I
    .locals 3
    .param p0, "ch"    # C
    .param p1, "lenient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 196
    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    .line 197
    add-int/lit8 v0, p0, -0x30

    .line 203
    :goto_0
    return v0

    .line 198
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    .line 199
    add-int/lit8 v0, p0, 0xa

    add-int/lit8 v0, v0, -0x61

    goto :goto_0

    .line 200
    :cond_1
    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    .line 201
    add-int/lit8 v0, p0, 0xa

    add-int/lit8 v0, v0, -0x41

    goto :goto_0

    .line 202
    :cond_2
    if-eqz p1, :cond_3

    .line 203
    const/4 v0, -0x1

    goto :goto_0

    .line 205
    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad hex-character: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static handleClientMessage(Landroid/os/Message;)V
    .locals 7
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    .line 50
    iget v2, p0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 53
    :pswitch_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v4, 0x3e8

    if-eq v2, v4, :cond_0

    .line 54
    invoke-static {p0, v6, v3}, Lcom/android/server/wifi/WifiServiceInjector;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    .line 56
    :cond_0
    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    move-object v0, v2

    .line 57
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    :goto_1
    if-eqz v0, :cond_2

    .line 59
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    sget-object v5, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiServiceInjector;->parseKeyMgmt(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/wifi/WifiServiceInjector;->readWifiConfigFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "wifiConfig":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 62
    const/4 v2, 0x1

    const-string v3, "config"

    invoke-static {v3, v1}, Landroid/os/Bundle;->forPair(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/android/server/wifi/WifiServiceInjector;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto :goto_0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v1    # "wifiConfig":Ljava/lang/String;
    :cond_1
    move-object v0, v3

    .line 56
    goto :goto_1

    .line 67
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    invoke-static {p0, v6, v3}, Lcom/android/server/wifi/WifiServiceInjector;->replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V

    goto :goto_0

    .line 50
    nop

    :pswitch_data_0
    .packed-switch 0x25fa1
        :pswitch_0
    .end packed-switch
.end method

.method private static hexToBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 181
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 182
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Odd length hex string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 184
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 185
    .local v0, "data":[B
    const/4 v2, 0x0

    .line 186
    .local v2, "position":I
    const/4 v1, 0x0

    .local v1, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 187
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, v5}, Lcom/android/server/wifi/WifiServiceInjector;->fromHex(CZ)I

    move-result v3

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiServiceInjector;->fromHex(CZ)I

    move-result v4

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 190
    add-int/lit8 v2, v2, 0x1

    .line 186
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 192
    :cond_1
    return-object v0
.end method

.method private static isGBK(Ljava/lang/String;)Z
    .locals 9
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0xff

    const/4 v5, 0x0

    .line 210
    invoke-static {p0}, Lcom/android/server/wifi/WifiServiceInjector;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 213
    .local v2, "bytes":[B
    const/4 v4, 0x1

    .line 214
    .local v4, "isAllASCII":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v2

    if-ge v3, v6, :cond_3

    .line 215
    aget-byte v6, v2, v3

    and-int/lit16 v0, v6, 0xff

    .line 216
    .local v0, "byte1":I
    const/16 v6, 0x81

    if-lt v0, v6, :cond_1

    if-ge v0, v8, :cond_1

    add-int/lit8 v6, v3, 0x1

    array-length v7, v2

    if-ge v6, v7, :cond_1

    .line 217
    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v2, v6

    and-int/lit16 v1, v6, 0xff

    .line 218
    .local v1, "byte2":I
    const/16 v6, 0x40

    if-lt v1, v6, :cond_2

    if-ge v1, v8, :cond_2

    const/16 v6, 0x7f

    if-eq v1, v6, :cond_2

    .line 220
    const/4 v4, 0x0

    .line 221
    add-int/lit8 v3, v3, 0x1

    .line 214
    .end local v1    # "byte2":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 227
    :cond_1
    const/16 v6, 0x80

    if-lt v0, v6, :cond_0

    .line 237
    .end local v0    # "byte1":I
    :cond_2
    :goto_1
    return v5

    .line 235
    :cond_3
    if-nez v4, :cond_2

    .line 237
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private static isUTF8(Ljava/lang/String;)Z
    .locals 8
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x80

    const/4 v5, 0x0

    .line 241
    invoke-static {p0}, Lcom/android/server/wifi/WifiServiceInjector;->hexToBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 242
    .local v0, "bytes":[B
    const/4 v4, 0x0

    .line 244
    .local v4, "nBytes":I
    const/4 v3, 0x1

    .line 245
    .local v3, "isAllASCII":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v0

    if-ge v2, v6, :cond_9

    .line 246
    aget-byte v6, v0, v2

    and-int/lit16 v1, v6, 0xff

    .line 247
    .local v1, "chr":I
    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_0

    .line 248
    const/4 v3, 0x0

    .line 250
    :cond_0
    if-nez v4, :cond_6

    .line 251
    if-lt v1, v7, :cond_1

    .line 252
    const/16 v6, 0xfc

    if-lt v1, v6, :cond_2

    const/16 v6, 0xfd

    if-gt v1, v6, :cond_2

    .line 253
    const/4 v4, 0x6

    .line 265
    :goto_1
    add-int/lit8 v4, v4, -0x1

    .line 245
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    :cond_2
    const/16 v6, 0xf8

    if-lt v1, v6, :cond_3

    .line 255
    const/4 v4, 0x5

    goto :goto_1

    .line 256
    :cond_3
    const/16 v6, 0xf0

    if-lt v1, v6, :cond_4

    .line 257
    const/4 v4, 0x4

    goto :goto_1

    .line 258
    :cond_4
    const/16 v6, 0xe0

    if-lt v1, v6, :cond_5

    .line 259
    const/4 v4, 0x3

    goto :goto_1

    .line 260
    :cond_5
    const/16 v6, 0xc0

    if-lt v1, v6, :cond_7

    .line 261
    const/4 v4, 0x2

    goto :goto_1

    .line 268
    :cond_6
    and-int/lit16 v6, v1, 0xc0

    if-eq v6, v7, :cond_8

    .line 278
    .end local v1    # "chr":I
    :cond_7
    :goto_3
    return v5

    .line 271
    .restart local v1    # "chr":I
    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 275
    .end local v1    # "chr":I
    :cond_9
    if-gtz v4, :cond_7

    if-nez v3, :cond_7

    .line 278
    const/4 v5, 0x1

    goto :goto_3
.end method

.method private static parseKeyMgmt(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "set"    # Ljava/util/BitSet;
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    .line 282
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 283
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 285
    .local v1, "nextSetBit":I
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {p0, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p0

    .line 287
    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 288
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 292
    :cond_0
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 295
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static readWifiConfigFromSupplicantFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "keyMgmt"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v11, 0x0

    .line 76
    .local v11, "wifiConfigBuilder":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 79
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/FileReader;

    const-string v14, "/data/misc/wifi/wpa_supplicant.conf"

    invoke-direct {v13, v14}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 82
    .local v2, "found":Z
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/android/server/wifi/WifiServiceInjector;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 83
    .local v8, "ssidNoQuotes":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 85
    .local v9, "ssidWithQuotes":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    move-object v12, v11

    .end local v11    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .local v12, "wifiConfigBuilder":Ljava/lang/StringBuilder;
    :goto_0
    if-eqz v3, :cond_e

    .line 86
    :try_start_2
    const-string v13, "[ \\t]*network=\\{"

    invoke-virtual {v3, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 87
    const/4 v2, 0x1

    .line 89
    :cond_0
    if-eqz v2, :cond_a

    .line 90
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 91
    .local v10, "trimmedLine":Ljava/lang/String;
    const/4 v4, 0x0

    .line 92
    .local v4, "match":Z
    const-string v13, "ssid="

    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 93
    const/4 v13, 0x5

    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, "ssidHex":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_5

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x22

    if-ne v13, v14, :cond_5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x22

    if-ne v13, v14, :cond_5

    .line 96
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 97
    const/4 v4, 0x1

    .line 105
    :cond_1
    :goto_1
    if-eqz v4, :cond_9

    .line 106
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "network={\n"

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 107
    .end local v12    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v11    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    :try_start_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ssid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .end local v7    # "ssidHex":Ljava/lang/String;
    :goto_2
    const-string v13, "key_mgmt="

    invoke-virtual {v10, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    if-eqz v11, :cond_2

    .line 113
    const/16 v13, 0x9

    invoke-virtual {v10, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 114
    const/4 v11, 0x0

    .line 117
    :cond_2
    const-string v13, "[ \\t]*\\}"

    invoke-virtual {v3, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v13

    if-eqz v13, :cond_b

    if-eqz v11, :cond_b

    .line 128
    .end local v4    # "match":Z
    .end local v10    # "trimmedLine":Ljava/lang/String;
    :goto_3
    if-eqz v6, :cond_3

    .line 129
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_3
    move-object v5, v6

    .line 136
    .end local v2    # "found":Z
    .end local v3    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "ssidNoQuotes":Ljava/lang/String;
    .end local v9    # "ssidWithQuotes":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_4
    :goto_4
    if-eqz v11, :cond_d

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_5
    return-object v13

    .line 100
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v11    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v2    # "found":Z
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "match":Z
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v7    # "ssidHex":Ljava/lang/String;
    .restart local v8    # "ssidNoQuotes":Ljava/lang/String;
    .restart local v9    # "ssidWithQuotes":Ljava/lang/String;
    .restart local v10    # "trimmedLine":Ljava/lang/String;
    .restart local v12    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    :cond_5
    :try_start_5
    invoke-static {v7}, Lcom/android/server/wifi/WifiServiceInjector;->isUTF8(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceInjector;->encodeUtf8SSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    :cond_6
    invoke-static {v7}, Lcom/android/server/wifi/WifiServiceInjector;->isGBK(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceInjector;->encodeGbkSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 102
    :cond_7
    const/4 v4, 0x1

    goto :goto_1

    .line 109
    .end local v7    # "ssidHex":Ljava/lang/String;
    :cond_8
    if-eqz v12, :cond_9

    .line 110
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_9
    move-object v11, v12

    .end local v12    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v11    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    goto :goto_2

    .end local v4    # "match":Z
    .end local v10    # "trimmedLine":Ljava/lang/String;
    .end local v11    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v12    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    :cond_a
    move-object v11, v12

    .line 85
    .end local v12    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v11    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    :cond_b
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v3

    move-object v12, v11

    .end local v11    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v12    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    goto/16 :goto_0

    .line 131
    .end local v12    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v11    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v13

    move-object v5, v6

    .line 134
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_4

    .line 122
    .end local v2    # "found":Z
    .end local v3    # "line":Ljava/lang/String;
    .end local v8    # "ssidNoQuotes":Ljava/lang/String;
    .end local v9    # "ssidWithQuotes":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 123
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_6
    :try_start_7
    const-string v13, "WifiServiceInjector"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not open /data/misc/wifi/wpa_supplicant.conf, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 128
    if-eqz v5, :cond_4

    .line 129
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_4

    .line 131
    :catch_2
    move-exception v13

    goto :goto_4

    .line 124
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v1

    .line 125
    .local v1, "e":Ljava/io/IOException;
    :goto_7
    :try_start_9
    const-string v13, "WifiServiceInjector"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Could not read /data/misc/wifi/wpa_supplicant.conf, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 128
    if-eqz v5, :cond_4

    .line 129
    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_4

    .line 131
    :catch_4
    move-exception v13

    goto/16 :goto_4

    .line 127
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    .line 128
    :goto_8
    if-eqz v5, :cond_c

    .line 129
    :try_start_b
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 133
    :cond_c
    :goto_9
    throw v13

    .line 136
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 131
    :catch_5
    move-exception v14

    goto :goto_9

    .line 127
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "found":Z
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v13

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_8

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v11    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "ssidNoQuotes":Ljava/lang/String;
    .restart local v9    # "ssidWithQuotes":Ljava/lang/String;
    .restart local v12    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    :catchall_2
    move-exception v13

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    move-object v11, v12

    .end local v12    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v11    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    goto :goto_8

    .line 124
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "ssidNoQuotes":Ljava/lang/String;
    .end local v9    # "ssidWithQuotes":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_6
    move-exception v1

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_7

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v11    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "ssidNoQuotes":Ljava/lang/String;
    .restart local v9    # "ssidWithQuotes":Ljava/lang/String;
    .restart local v12    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    :catch_7
    move-exception v1

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    move-object v11, v12

    .end local v12    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v11    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    goto :goto_7

    .line 122
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v8    # "ssidNoQuotes":Ljava/lang/String;
    .end local v9    # "ssidWithQuotes":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v1

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_6

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v11    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "ssidNoQuotes":Ljava/lang/String;
    .restart local v9    # "ssidWithQuotes":Ljava/lang/String;
    .restart local v12    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    :catch_9
    move-exception v1

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    move-object v11, v12

    .end local v12    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v11    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    goto :goto_6

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v11    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    :cond_e
    move-object v11, v12

    .end local v12    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    .restart local v11    # "wifiConfigBuilder":Ljava/lang/StringBuilder;
    goto/16 :goto_3
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 299
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    const-string p0, ""

    .line 307
    .end local p0    # "string":Ljava/lang/String;
    .local v0, "length":I
    :cond_0
    :goto_0
    return-object p0

    .line 302
    .end local v0    # "length":I
    .restart local p0    # "string":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 303
    .restart local v0    # "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 305
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static replyToMessage(Landroid/os/Message;ILjava/lang/Object;)V
    .locals 4
    .param p0, "message"    # Landroid/os/Message;
    .param p1, "arg1"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 141
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 142
    .local v1, "reply":Landroid/os/Message;
    iget v2, p0, Landroid/os/Message;->what:I

    iput v2, v1, Landroid/os/Message;->what:I

    .line 143
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 144
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 145
    iget-object v2, p0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v1    # "reply":Landroid/os/Message;
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "WifiServiceInjector"

    const-string v3, "replyToMessage Failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 9
    .param p0, "octets"    # [B

    .prologue
    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 174
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-byte v3, v0, v1

    .line 175
    .local v3, "o":B
    const-string v5, "%02x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    and-int/lit16 v8, v3, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v3    # "o":B
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
