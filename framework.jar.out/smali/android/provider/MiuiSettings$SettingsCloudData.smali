.class public final Landroid/provider/MiuiSettings$SettingsCloudData;
.super Ljava/lang/Object;
.source "MiuiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MiuiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SettingsCloudData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    }
.end annotation


# static fields
.field public static final PRODUCT_DATA:Ljava/lang/String; = "productData"

.field private static final URI_CLOUD_ALL_DATA:Landroid/net/Uri;

.field private static final URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;

.field private static final URI_CLOUD_ALL_DATA_SINGLE:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "content://com.android.settings.cloud.CloudSettings/cloud_all_data"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MiuiSettings$SettingsCloudData;->URI_CLOUD_ALL_DATA:Landroid/net/Uri;

    const-string v0, "content://com.android.settings.cloud.CloudSettings/cloud_all_data/single"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MiuiSettings$SettingsCloudData;->URI_CLOUD_ALL_DATA_SINGLE:Landroid/net/Uri;

    const-string v0, "content://com.android.settings.cloud.CloudSettings/cloud_all_data/notify"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/MiuiSettings$SettingsCloudData;->URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCloudDataBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defVal"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v2, v2, v1}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getBoolean(Ljava/lang/String;Z)Z

    move-result p3

    .end local p3    # "defVal":Z
    :cond_0
    return p3
.end method

.method public static getCloudDataInt(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defVal"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v2, v2, v1}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getInt(Ljava/lang/String;I)I

    move-result p3

    .end local p3    # "defVal":I
    :cond_0
    return p3
.end method

.method public static getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "moduleName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MiuiSettings$SettingsCloudData;->URI_CLOUD_ALL_DATA:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .local v6, "bundle":Landroid/os/Bundle;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "productData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .local v8, "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;>;"
    invoke-static {v7}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v8    # "dataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;>;"
    :goto_0
    return-object v8

    :cond_0
    invoke-static {v7}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static getCloudDataLong(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defVal"    # J

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v2, v2, v1}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3, p4}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getLong(Ljava/lang/String;J)J

    move-result-wide p3

    .end local p3    # "defVal":J
    :cond_0
    return-wide p3
.end method

.method public static getCloudDataNotifyUri()Landroid/net/Uri;
    .locals 1

    .prologue
    sget-object v0, Landroid/provider/MiuiSettings$SettingsCloudData;->URI_CLOUD_ALL_DATA_NOTIFY:Landroid/net/Uri;

    return-object v0
.end method

.method public static getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    .locals 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "propertyName"    # Ljava/lang/String;
    .param p4, "cached"    # Z

    .prologue
    const/4 v9, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "moduleName is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p4, :cond_2

    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Want cache, but key or propertyName is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v7, 0x0

    .local v7, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MiuiSettings$SettingsCloudData;->URI_CLOUD_ALL_DATA_SINGLE:Landroid/net/Uri;

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    const/4 v0, 0x1

    aput-object p2, v2, v0

    const/4 v0, 0x2

    aput-object p3, v2, v0

    const/4 v0, 0x3

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .local v6, "bundle":Landroid/os/Bundle;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "productData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .end local v6    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v0

    :cond_3
    invoke-static {v7}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    :goto_1
    move-object v0, v9

    goto :goto_0

    :catch_0
    move-exception v8

    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v7}, Lmiui/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defVal"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v2, v2, v1}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataSingle(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    move-result-object v0

    .local v0, "data":Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .end local p3    # "defVal":Ljava/lang/String;
    :cond_0
    return-object p3
.end method
