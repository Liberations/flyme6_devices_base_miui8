.class public Landroid/os/AnrMonitor$UploadInfo;
.super Ljava/lang/Object;
.source "AnrMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/AnrMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadInfo"
.end annotation


# static fields
.field private static final JSON_BASE_INFO_TAG:Ljava/lang/String; = "baseInfo"

.field private static final JSON_INFO_ARRAY_TAG:Ljava/lang/String; = "msgs"

.field private static final JSON_INFO_TAG:Ljava/lang/String; = "msg"

.field private static final JSON_PACKAGE_NAME_TAG:Ljava/lang/String; = "packageName"

.field private static final JSON_PROCESS_NAME_TAG:Ljava/lang/String; = "processName"

.field private static final JSON_TOOKTIME_TAG:Ljava/lang/String; = "tookTime"

.field private static final JSON_VERSION_CODE_TAG:Ljava/lang/String; = "versionCode"

.field private static final JSON_VERSION_NAME_TAG:Ljava/lang/String; = "versionName"


# instance fields
.field info:Ljava/lang/String;

.field packageName:Ljava/lang/String;

.field processName:Ljava/lang/String;

.field tookTime:J

.field versionCode:Ljava/lang/String;

.field versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # [Landroid/os/AnrMonitor$UploadInfo;

    .prologue
    invoke-static {p0}, Landroid/os/AnrMonitor$UploadInfo;->createJsonString([Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createJsonString([Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;
    .locals 12
    .param p0, "infos"    # [Landroid/os/AnrMonitor$UploadInfo;

    .prologue
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .local v8, "object":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .local v1, "baseInfo":Lorg/json/JSONObject;
    const-string v9, "processName"

    invoke-static {}, Landroid/os/AnrMonitor;->currentProcessName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "packageName"

    invoke-static {}, Landroid/os/AnrMonitor;->currentPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "versionName"

    invoke-static {}, Landroid/os/AnrMonitor;->currentVersionName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "versionCode"

    invoke-static {}, Landroid/os/AnrMonitor;->currentVersionCode()I

    move-result v10

    invoke-virtual {v1, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v9, "baseInfo"

    invoke-virtual {v8, v9, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .local v5, "jsonArray":Lorg/json/JSONArray;
    if-eqz p0, :cond_0

    array-length v9, p0

    if-lez v9, :cond_0

    move-object v0, p0

    .local v0, "arr$":[Landroid/os/AnrMonitor$UploadInfo;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v6, :cond_0

    aget-object v4, v0, v3

    .local v4, "info":Landroid/os/AnrMonitor$UploadInfo;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .local v7, "obj":Lorg/json/JSONObject;
    const-string v9, "msg"

    iget-object v10, v4, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v9, "tookTime"

    iget-wide v10, v4, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    invoke-virtual {v7, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Landroid/os/AnrMonitor$UploadInfo;
    .end local v3    # "i$":I
    .end local v4    # "info":Landroid/os/AnrMonitor$UploadInfo;
    .end local v6    # "len$":I
    .end local v7    # "obj":Lorg/json/JSONObject;
    :cond_0
    const-string v9, "msgs"

    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-boolean v9, Landroid/os/AnrMonitor;->DBG:Z

    if-eqz v9, :cond_1

    const-string v9, "AnrMonitor"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "createJsonString "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .end local v1    # "baseInfo":Lorg/json/JSONObject;
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v8    # "object":Lorg/json/JSONObject;
    :goto_1
    return-object v9

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v9, ""

    goto :goto_1
.end method

.method public static getBaseInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v2, "object":Lorg/json/JSONObject;
    const-string v3, "baseInfo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .local v0, "baseInfo":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v0    # "baseInfo":Lorg/json/JSONObject;
    .end local v2    # "object":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getInfoArray(Ljava/lang/String;)[Landroid/os/AnrMonitor$UploadInfo;
    .locals 18
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v8, "object":Lorg/json/JSONObject;
    const-string v15, "msgs"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .local v6, "msgs":Lorg/json/JSONArray;
    if-nez v6, :cond_1

    const/4 v2, 0x0

    .end local v6    # "msgs":Lorg/json/JSONArray;
    .end local v8    # "object":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object v2

    .restart local v6    # "msgs":Lorg/json/JSONArray;
    .restart local v8    # "object":Lorg/json/JSONObject;
    :cond_1
    const-string v15, "baseInfo"

    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .local v3, "baseInfoObject":Lorg/json/JSONObject;
    const-string v15, "processName"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "processName":Ljava/lang/String;
    const-string v15, "packageName"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, "packageName":Ljava/lang/String;
    const-string v15, "versionName"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "versionName":Ljava/lang/String;
    const-string v15, "versionCode"

    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "versionCode":Ljava/lang/String;
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v11

    .local v11, "size":I
    new-array v2, v11, [Landroid/os/AnrMonitor$UploadInfo;

    .local v2, "arrays":[Landroid/os/AnrMonitor$UploadInfo;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v11, :cond_0

    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .local v7, "obj":Lorg/json/JSONObject;
    new-instance v12, Landroid/os/AnrMonitor$UploadInfo;

    invoke-direct {v12}, Landroid/os/AnrMonitor$UploadInfo;-><init>()V

    .local v12, "uploadInfo":Landroid/os/AnrMonitor$UploadInfo;
    const-string v15, "msg"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v12, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    iput-object v10, v12, Landroid/os/AnrMonitor$UploadInfo;->processName:Ljava/lang/String;

    iput-object v9, v12, Landroid/os/AnrMonitor$UploadInfo;->packageName:Ljava/lang/String;

    iput-object v14, v12, Landroid/os/AnrMonitor$UploadInfo;->versionName:Ljava/lang/String;

    iput-object v13, v12, Landroid/os/AnrMonitor$UploadInfo;->versionCode:Ljava/lang/String;

    const-string v15, "tookTime"

    invoke-virtual {v7, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v12, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    aput-object v12, v2, v5

    sget-boolean v15, Landroid/os/AnrMonitor;->DBG:Z

    if-eqz v15, :cond_2

    const-string v15, "AnrMonitor"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getInfoArray i "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " info : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v2    # "arrays":[Landroid/os/AnrMonitor$UploadInfo;
    .end local v3    # "baseInfoObject":Lorg/json/JSONObject;
    .end local v5    # "i":I
    .end local v6    # "msgs":Lorg/json/JSONArray;
    .end local v7    # "obj":Lorg/json/JSONObject;
    .end local v8    # "object":Lorg/json/JSONObject;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "processName":Ljava/lang/String;
    .end local v11    # "size":I
    .end local v12    # "uploadInfo":Landroid/os/AnrMonitor$UploadInfo;
    .end local v13    # "versionCode":Ljava/lang/String;
    .end local v14    # "versionName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static getInfoByJsonString(Ljava/lang/String;)Landroid/os/AnrMonitor$UploadInfo;
    .locals 11
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .local v2, "object":Lorg/json/JSONObject;
    const-string v8, "baseInfo"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .local v0, "baseInfoObject":Lorg/json/JSONObject;
    const-string v8, "processName"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "processName":Ljava/lang/String;
    const-string v8, "packageName"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "packageName":Ljava/lang/String;
    const-string v8, "versionName"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "versionName":Ljava/lang/String;
    const-string v8, "versionCode"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "versionCode":Ljava/lang/String;
    new-instance v5, Landroid/os/AnrMonitor$UploadInfo;

    invoke-direct {v5}, Landroid/os/AnrMonitor$UploadInfo;-><init>()V

    .local v5, "uploadInfo":Landroid/os/AnrMonitor$UploadInfo;
    const-string v8, "msg"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    iput-object v4, v5, Landroid/os/AnrMonitor$UploadInfo;->processName:Ljava/lang/String;

    iput-object v3, v5, Landroid/os/AnrMonitor$UploadInfo;->packageName:Ljava/lang/String;

    iput-object v7, v5, Landroid/os/AnrMonitor$UploadInfo;->versionName:Ljava/lang/String;

    iput-object v6, v5, Landroid/os/AnrMonitor$UploadInfo;->versionCode:Ljava/lang/String;

    const-string v8, "tookTime"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v5, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    sget-boolean v8, Landroid/os/AnrMonitor;->DBG:Z

    if-eqz v8, :cond_0

    const-string v8, "AnrMonitor"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getInfo info : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "baseInfoObject":Lorg/json/JSONObject;
    .end local v2    # "object":Lorg/json/JSONObject;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "processName":Ljava/lang/String;
    .end local v5    # "uploadInfo":Landroid/os/AnrMonitor$UploadInfo;
    .end local v6    # "versionCode":Ljava/lang/String;
    .end local v7    # "versionName":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    :catch_0
    move-exception v1

    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getMatchTag(Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;
    .locals 4
    .param p0, "msg"    # Landroid/os/AnrMonitor$UploadInfo;

    .prologue
    :try_start_0
    invoke-static {p0}, Landroid/os/AnrMonitor$UploadInfo;->getSaveContent(Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;

    move-result-object v1

    .local v1, "matchString":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v1    # "matchString":Ljava/lang/String;
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSaveContent(Landroid/os/AnrMonitor$UploadInfo;)Ljava/lang/String;
    .locals 6
    .param p0, "msg"    # Landroid/os/AnrMonitor$UploadInfo;

    .prologue
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .local v2, "object":Lorg/json/JSONObject;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .local v0, "baseInfo":Lorg/json/JSONObject;
    const-string v3, "processName"

    iget-object v4, p0, Landroid/os/AnrMonitor$UploadInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "packageName"

    iget-object v4, p0, Landroid/os/AnrMonitor$UploadInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "versionName"

    iget-object v4, p0, Landroid/os/AnrMonitor$UploadInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "versionCode"

    iget-object v4, p0, Landroid/os/AnrMonitor$UploadInfo;->versionCode:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "baseInfo"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "msg"

    iget-object v4, p0, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "tookTime"

    iget-wide v4, p0, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v0    # "baseInfo":Lorg/json/JSONObject;
    .end local v2    # "object":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getInfo()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .locals 6

    .prologue
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .local v1, "object":Lorg/json/JSONObject;
    const-string v2, "tookTime"

    invoke-virtual {p0}, Landroid/os/AnrMonitor$UploadInfo;->getTookTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v1    # "object":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v2, ""

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/os/AnrMonitor$UploadInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/os/AnrMonitor$UploadInfo;->processName:Ljava/lang/String;

    return-object v0
.end method

.method public getTookTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    return-wide v0
.end method

.method public getVersionCode()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/os/AnrMonitor$UploadInfo;->versionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/os/AnrMonitor$UploadInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/AnrMonitor$UploadInfo;->info:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " processName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/AnrMonitor$UploadInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " versionName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/AnrMonitor$UploadInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " versionCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/os/AnrMonitor$UploadInfo;->versionCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tookTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/os/AnrMonitor$UploadInfo;->tookTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
