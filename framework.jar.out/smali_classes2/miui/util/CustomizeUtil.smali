.class public Lmiui/util/CustomizeUtil;
.super Ljava/lang/Object;
.source "CustomizeUtil.java"


# static fields
.field private static final CUST_VARIANT:Ljava/lang/String; = "cust_variant"

.field private static final CUST_VARIANT_FILE:Ljava/io/File;

.field private static final DATA_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

.field private static final MIUI_APP_DIR:Ljava/io/File;

.field private static final MIUI_CUSTOMIZED_APP_DIR:Ljava/io/File;

.field private static final MIUI_CUSTOMIZED_CUST_DIR:Ljava/io/File;

.field private static final MIUI_CUSTOMIZED_DATA_DIR:Ljava/io/File;

.field private static final MIUI_CUST_DIR:Ljava/io/File;

.field private static final SYSTEM_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

.field private static sCustVariant:Ljava/lang/String;

.field private static sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/miui/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_DATA_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/cust/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_CUST_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustomizedDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "cust"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUST_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/miui/app/noncustomized"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->DATA_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/data-app/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->SYSTEM_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustomizedDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "app"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_APP_DIR:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiAppDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "customized"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_APP_DIR:Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustVariantFile()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lmiui/util/CustomizeUtil;->CUST_VARIANT_FILE:Ljava/io/File;

    const-string v0, ""

    sput-object v0, Lmiui/util/CustomizeUtil;->sCustVariant:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    const-string v1, "com.android.keyguard"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    const-string v1, "com.android.camera"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    const-string v1, "com.mfashiongallery.emag"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    const-string v1, "com.miui.home"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    const-string v1, "com.android.thememanager"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forceLayoutHideNavigation(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lmiui/util/CustomizeUtil;->sForceLayoutHideNavigationPkgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getMiuiAppDir()Ljava/io/File;
    .locals 1

    .prologue
    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_APP_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiCustDir()Ljava/io/File;
    .locals 1

    .prologue
    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUST_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiCustVariantDir()Ljava/io/File;
    .locals 10

    .prologue
    const/4 v7, 0x0

    sget-boolean v6, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v6, :cond_1

    sget-object v6, Lmiui/util/CustomizeUtil;->sCustVariant:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustDir()Ljava/io/File;

    move-result-object v7

    sget-object v8, Lmiui/util/CustomizeUtil;->sCustVariant:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    sget-object v6, Lmiui/util/CustomizeUtil;->CUST_VARIANT_FILE:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v4, 0x0

    .local v4, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    sget-object v6, Lmiui/util/CustomizeUtil;->CUST_VARIANT_FILE:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "cust_variant":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v8, "\n"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/io/File;

    invoke-static {}, Lmiui/util/CustomizeUtil;->getMiuiCustDir()Ljava/io/File;

    move-result-object v8

    invoke-direct {v6, v8, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v5, :cond_2

    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    :cond_2
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "CustomizeUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMiuiCustVariantDir finally Exception e:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    if-eqz v5, :cond_4

    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_5
    :goto_1
    move-object v6, v7

    goto :goto_0

    :catch_1
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v6, "CustomizeUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMiuiCustVariantDir finally Exception e:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "cust_variant":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :catch_2
    move-exception v3

    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_6

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :cond_7
    :goto_3
    move-object v6, v7

    goto/16 :goto_0

    .restart local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "CustomizeUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMiuiCustVariantDir finally Exception e:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .end local v3    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .local v3, "e":Ljava/io/IOException;
    :goto_4
    :try_start_7
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v4, :cond_8

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    :cond_8
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_3

    :catch_5
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "CustomizeUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMiuiCustVariantDir finally Exception e:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_5
    if-eqz v4, :cond_9

    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :cond_a
    :goto_6
    throw v6

    :catch_6
    move-exception v3

    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v7, "CustomizeUtil"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getMiuiCustVariantDir finally Exception e:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lmiui/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_5

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v3

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_8
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_9
    move-exception v3

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_a
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_2
.end method

.method public static getMiuiCustVariantFile()Ljava/io/File;
    .locals 3

    .prologue
    sget-boolean v0, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_DATA_DIR:Ljava/io/File;

    const-string v2, "cust_variant"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_CUST_DIR:Ljava/io/File;

    const-string v2, "cust_variant"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMiuiCustomizedAppDir()Ljava/io/File;
    .locals 1

    .prologue
    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_APP_DIR:Ljava/io/File;

    return-object v0
.end method

.method public static getMiuiCustomizedDir()Ljava/io/File;
    .locals 1

    .prologue
    sget-boolean v0, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_CUST_DIR:Ljava/io/File;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmiui/util/CustomizeUtil;->MIUI_CUSTOMIZED_DATA_DIR:Ljava/io/File;

    goto :goto_0
.end method

.method public static getMiuiNoCustomizedAppDir()Ljava/io/File;
    .locals 1

    .prologue
    sget-boolean v0, Lmiui/os/Build;->HAS_CUST_PARTITION:Z

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/util/CustomizeUtil;->SYSTEM_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmiui/util/CustomizeUtil;->DATA_NONCUSTOMIZED_APP_DIR:Ljava/io/File;

    goto :goto_0
.end method

.method public static getRealSize(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 7
    .param p0, "display"    # Landroid/view/Display;
    .param p1, "outPoint"    # Landroid/graphics/Point;

    .prologue
    :try_start_0
    const-class v2, Landroid/view/Display;

    const-string v3, "getRealSize"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/graphics/Point;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CustomizeUtil"

    const-string v3, "no getRealSize hack method"

    invoke-static {v2, v3}, Lmiui/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method public static needChangeSize()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const-string v1, "lithium"

    sget-object v2, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "persist.sys.force_nav"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setMiuiCustVariatDir(Ljava/lang/String;)V
    .locals 0
    .param p0, "custVariant"    # Ljava/lang/String;

    .prologue
    sput-object p0, Lmiui/util/CustomizeUtil;->sCustVariant:Ljava/lang/String;

    return-void
.end method
