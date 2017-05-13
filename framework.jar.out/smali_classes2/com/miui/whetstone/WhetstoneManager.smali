.class public abstract Lcom/miui/whetstone/WhetstoneManager;
.super Ljava/lang/Object;
.source "WhetstoneManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/whetstone/WhetstoneManager$PermissionFile;,
        Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;
    }
.end annotation


# static fields
.field public static final ANALYTIC_PROPERTY:Ljava/lang/String; = "persist.sys.whetstone.analytic"

.field public static final DEBUG:Z

.field public static final SERVICE_NAME:Ljava/lang/String; = "miui.whetstone"

.field private static ws:Lcom/miui/whetstone/IWhetstone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    .line 38
    const-string v0, "persist.sys.whetstone.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/miui/whetstone/WhetstoneManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 869
    return-void
.end method

.method static synthetic access$002(Lcom/miui/whetstone/IWhetstone;)Lcom/miui/whetstone/IWhetstone;
    .locals 0
    .param p0, "x0"    # Lcom/miui/whetstone/IWhetstone;

    .prologue
    .line 34
    sput-object p0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    return-object p0
.end method

.method public static analyticTrack(Lcom/miui/whetstone/WhetstoneAction;)V
    .locals 2
    .param p0, "action"    # Lcom/miui/whetstone/WhetstoneAction;

    .prologue
    .line 626
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 627
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 629
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/IWhetstone;->analyticTrack(Lcom/miui/whetstone/WhetstoneAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 630
    :catch_0
    move-exception v0

    .line 631
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static cancelLocationRequest(Lcom/miui/whetstone/ILocationCallback;)V
    .locals 2
    .param p0, "callback"    # Lcom/miui/whetstone/ILocationCallback;

    .prologue
    .line 728
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 729
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 731
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/IWhetstone;->cancelLocationRequest(Lcom/miui/whetstone/ILocationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkAppTheShotScreenPermission(II)Z
    .locals 3
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .prologue
    .line 802
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 803
    const/4 v1, 0x1

    .line 804
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 806
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->checkAppTheShotScreenPermission(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 811
    :cond_0
    :goto_0
    return v1

    .line 807
    :catch_0
    move-exception v0

    .line 808
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkIfAppBelongToActive(Ljava/lang/String;I)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    .line 272
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 273
    const/4 v1, 0x0

    .line 274
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 276
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->checkIfAppBelongToActive(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 281
    :cond_0
    :goto_0
    return v1

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkIfHaveTheCallFunctionPermission(III)Z
    .locals 2
    .param p0, "type"    # I
    .param p1, "callPid"    # I
    .param p2, "callUid"    # I

    .prologue
    .line 693
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 694
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 696
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->checkIfHaveTheCallFunctionPermission(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 701
    :goto_0
    return v1

    .line 697
    :catch_0
    move-exception v0

    .line 698
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 701
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkIfProcessBelongToActive(Ljava/lang/String;II)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 286
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 287
    const/4 v1, 0x0

    .line 288
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 290
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->checkIfProcessBelongToActive(Ljava/lang/String;II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 295
    :cond_0
    :goto_0
    return v1

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static checkIfSupportWhestone()Z
    .locals 5

    .prologue
    .line 649
    const/4 v2, 0x0

    .line 650
    .local v2, "result":Z
    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-nez v3, :cond_1

    .line 651
    const-string v3, "miui.whetstone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/whetstone/IWhetstone$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstone;

    move-result-object v3

    sput-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    .line 653
    :try_start_0
    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v3, :cond_0

    .line 654
    new-instance v0, Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;

    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-direct {v0, v3}, Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;-><init>(Lcom/miui/whetstone/IWhetstone;)V

    .line 655
    .local v0, "death":Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;
    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v3}, Lcom/miui/whetstone/IWhetstone;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    const/4 v2, 0x1

    .line 665
    .end local v0    # "death":Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;
    :cond_0
    :goto_0
    return v2

    .line 658
    :catch_0
    move-exception v1

    .line 659
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 660
    const/4 v3, 0x0

    sput-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    goto :goto_0

    .line 663
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static checkPermissionLevel(III)I
    .locals 2
    .param p0, "type"    # I
    .param p1, "callPid"    # I
    .param p2, "callUid"    # I

    .prologue
    .line 705
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 706
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 708
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->checkPermissionLevel(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 713
    :goto_0
    return v1

    .line 709
    :catch_0
    move-exception v0

    .line 710
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 713
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private static checkService()V
    .locals 0

    .prologue
    .line 71
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->getService()Lcom/miui/whetstone/IWhetstone;

    .line 72
    return-void
.end method

.method public static completeBackagroundAllModes(II)Z
    .locals 3
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .prologue
    .line 370
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 371
    const/4 v1, 0x0

    .line 372
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 374
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->completeBackagroundAllModes(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 379
    :cond_0
    :goto_0
    return v1

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static completeBackgroundModes(III)Z
    .locals 3
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "type"    # I

    .prologue
    .line 356
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 357
    const/4 v1, 0x0

    .line 358
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 360
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->completeBackgroundModes(III)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 365
    :cond_0
    :goto_0
    return v1

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static decodeWatermark(Landroid/graphics/Bitmap;Lcom/miui/whetstone/watermark/IWatermarkCallback;)V
    .locals 2
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "callback"    # Lcom/miui/whetstone/watermark/IWatermarkCallback;

    .prologue
    .line 899
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 900
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 902
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0, p1}, Lcom/miui/whetstone/IWhetstone;->decodeWatermark(Landroid/graphics/Bitmap;Lcom/miui/whetstone/watermark/IWatermarkCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 903
    :catch_0
    move-exception v0

    .line 904
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static deepClean(Lcom/miui/whetstone/WhetstoneConfig;)I
    .locals 3
    .param p0, "config"    # Lcom/miui/whetstone/WhetstoneConfig;

    .prologue
    .line 612
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 613
    const/4 v1, 0x0

    .line 614
    .local v1, "ret":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 616
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->deepClean(Lcom/miui/whetstone/WhetstoneConfig;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 621
    :cond_0
    :goto_0
    invoke-static {}, Lcom/miui/whetstone/WhetstoneActivityManager;->clearDeadAppFromNative()V

    .line 622
    return v1

    .line 617
    :catch_0
    move-exception v0

    .line 618
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static encodeWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/miui/whetstone/watermark/IWatermarkCallback;)V
    .locals 2
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "watermark"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/miui/whetstone/watermark/IWatermarkCallback;

    .prologue
    .line 888
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 889
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 891
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->encodeWatermark(Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/miui/whetstone/watermark/IWatermarkCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 892
    :catch_0
    move-exception v0

    .line 893
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getActiveAppListByLevel(I)Ljava/util/List;
    .locals 3
    .param p0, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 262
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->getActiveAppListByLevel(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 267
    :cond_0
    :goto_0
    return-object v0

    .line 263
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getActiveAppListByType(I)Ljava/util/List;
    .locals 3
    .param p0, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 248
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->getActiveAppListByType(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 253
    :cond_0
    :goto_0
    return-object v0

    .line 249
    :catch_0
    move-exception v1

    .line 250
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getApplicationActiveLevel(Ljava/lang/String;I)I
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uid"    # I

    .prologue
    .line 301
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 302
    const/4 v1, 0x0

    .line 303
    .local v1, "level":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 305
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->getApplicationActiveLevel(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 310
    :cond_0
    :goto_0
    return v1

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getApplicationThread(I)Landroid/os/IBinder;
    .locals 3
    .param p0, "pid"    # I

    .prologue
    .line 229
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "applicationThread":Landroid/os/IBinder;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 233
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->getApplicationThread(I)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 238
    :cond_0
    :goto_0
    return-object v0

    .line 234
    :catch_0
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBatteryCapacity()I
    .locals 3

    .prologue
    .line 129
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "capacity":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 133
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getBatteryCapacity()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBatteryChargeTime()J
    .locals 4

    .prologue
    .line 142
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 143
    const-wide/16 v0, 0x0

    .line 144
    .local v0, "ct":J
    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v3, :cond_0

    .line 146
    :try_start_0
    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v3}, Lcom/miui/whetstone/IWhetstone;->getBatteryChargeTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 151
    :cond_0
    :goto_0
    return-wide v0

    .line 147
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBatteryCurrentNow()I
    .locals 3

    .prologue
    .line 167
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "cn":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 171
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getBatteryCurrentNow()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 172
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getBatteryStandbyTime()J
    .locals 4

    .prologue
    .line 155
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 156
    const-wide/16 v0, 0x0

    .line 157
    .local v0, "ct":J
    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v3, :cond_0

    .line 159
    :try_start_0
    sget-object v3, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v3}, Lcom/miui/whetstone/IWhetstone;->getBatteryStandbyTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 164
    :cond_0
    :goto_0
    return-wide v0

    .line 160
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getComponentManager()Lcom/miui/whetstone/IComponentManager;
    .locals 3

    .prologue
    .line 782
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 783
    const/4 v1, 0x0

    .line 784
    .local v1, "ret":Lcom/miui/whetstone/IComponentManager;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 786
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getComponentManager()Lcom/miui/whetstone/IComponentManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 791
    :cond_0
    :goto_0
    return-object v1

    .line 787
    :catch_0
    move-exception v0

    .line 788
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getForegroundApplicationThread()Landroid/os/IBinder;
    .locals 3

    .prologue
    .line 427
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 428
    const/4 v0, 0x0

    .line 429
    .local v0, "applicationThread":Landroid/os/IBinder;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 431
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getForegroundApplicationThread()Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 436
    :cond_0
    :goto_0
    return-object v0

    .line 432
    :catch_0
    move-exception v1

    .line 433
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getForegroundApplicationUid()I
    .locals 3

    .prologue
    .line 680
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 681
    const/4 v1, 0x0

    .line 682
    .local v1, "uid":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 684
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getForegroundApplicationUid()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 689
    :cond_0
    :goto_0
    return v1

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getForegroundPreTaskApp()Lcom/miui/whetstone/AppInfo;
    .locals 3

    .prologue
    .line 857
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 858
    const/4 v1, 0x0

    .line 859
    .local v1, "info":Lcom/miui/whetstone/AppInfo;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 861
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getForegroundPreTaskApp()Lcom/miui/whetstone/AppInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 866
    :cond_0
    :goto_0
    return-object v1

    .line 862
    :catch_0
    move-exception v0

    .line 863
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getMetokToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 637
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 638
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 640
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1}, Lcom/miui/whetstone/IWhetstone;->getMetokToken()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 645
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-object v1

    .line 641
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 642
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 645
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getProcessActiveLevel(Ljava/lang/String;II)I
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 315
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 316
    const/4 v1, 0x0

    .line 317
    .local v1, "level":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 319
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->getProcessActiveLevel(Ljava/lang/String;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 324
    :cond_0
    :goto_0
    return v1

    .line 320
    :catch_0
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getProcessBackgourndModes(II)I
    .locals 3
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .prologue
    .line 384
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 385
    const/4 v1, 0x0

    .line 386
    .local v1, "mode":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 388
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->getProcessBackgourndModes(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 393
    :cond_0
    :goto_0
    return v1

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getService()Lcom/miui/whetstone/IWhetstone;
    .locals 4

    .prologue
    .line 55
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-nez v2, :cond_0

    .line 56
    const-string v2, "miui.whetstone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/whetstone/IWhetstone$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/whetstone/IWhetstone;

    move-result-object v2

    sput-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    .line 58
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 59
    new-instance v0, Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;

    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-direct {v0, v2}, Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;-><init>(Lcom/miui/whetstone/IWhetstone;)V

    .line 60
    .local v0, "death":Lcom/miui/whetstone/WhetstoneManager$WhetstoneManagerDeath;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :cond_0
    :goto_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    return-object v2

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 64
    const/4 v2, 0x0

    sput-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    goto :goto_0
.end method

.method public static getSmartConfigLevel()I
    .locals 3

    .prologue
    .line 586
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 587
    const/4 v1, 0x0

    .line 588
    .local v1, "ret":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 590
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getSmartConfigLevel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 595
    :cond_0
    :goto_0
    return v1

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWhetstoneLeve()I
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/whetstone/WhetstoneManager;->getWhetstoneLeve(I)I

    move-result v0

    return v0
.end method

.method public static getWhetstoneLeve(I)I
    .locals 3
    .param p0, "defValue"    # I

    .prologue
    .line 116
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 117
    move v1, p0

    .line 118
    .local v1, "level":I
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 120
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->getWhetstoneLevel()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 125
    :cond_0
    :goto_0
    return v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWhetstonePackage(Landroid/os/IBinder;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    .locals 3
    .param p0, "applicationThread"    # Landroid/os/IBinder;

    .prologue
    .line 186
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 187
    const/4 v1, 0x0

    .line 188
    .local v1, "info":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 190
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->getWhetstonePackage(Landroid/os/IBinder;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 195
    :cond_0
    :goto_0
    return-object v1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWhetstonePackageInfo(Ljava/lang/String;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 201
    const/4 v1, 0x0

    .line 202
    .local v1, "info":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 204
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->getWhetstonePackageInfo(Ljava/lang/String;)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 209
    :cond_0
    :goto_0
    return-object v1

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWhetstonePackageInfo(Ljava/lang/String;I)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .prologue
    .line 214
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 215
    const/4 v1, 0x0

    .line 216
    .local v1, "info":Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 218
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->getWhetstonePackageInfoByUid(Ljava/lang/String;I)Lcom/miui/whetstone/strategy/WhetstonePackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 223
    :cond_0
    :goto_0
    return-object v1

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 3
    .param p0, "event"    # Landroid/view/InputEvent;
    .param p1, "mode"    # I

    .prologue
    .line 503
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 504
    const/4 v1, 0x0

    .line 505
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 507
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 512
    :cond_0
    :goto_0
    return v1

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;I)Z
    .locals 3
    .param p0, "packageURI"    # Landroid/net/Uri;
    .param p1, "observer"    # Landroid/content/pm/IPackageInstallObserver;
    .param p2, "flags"    # I

    .prologue
    .line 529
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 530
    const/4 v1, 0x0

    .line 531
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 533
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 538
    :cond_0
    :goto_0
    return v1

    .line 534
    :catch_0
    move-exception v0

    .line 535
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isBitmapCacheNeeded()Z
    .locals 4

    .prologue
    .line 76
    const/4 v1, 0x0

    .line 77
    .local v1, "ret":Z
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 78
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 80
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/miui/whetstone/IWhetstone;->isNeeded(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 85
    :cond_0
    :goto_0
    return v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isInCharging()Z
    .locals 3

    .prologue
    .line 599
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 600
    const/4 v1, 0x0

    .line 601
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 603
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->isInCharging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 608
    :cond_0
    :goto_0
    return v1

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isOPENGLDisableNeeded()Z
    .locals 4

    .prologue
    .line 90
    const/4 v1, 0x0

    .line 91
    .local v1, "ret":Z
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 92
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 94
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/miui/whetstone/IWhetstone;->isNeeded(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 99
    :cond_0
    :goto_0
    return v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static killApplication(Ljava/lang/String;II)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "restartMask"    # I
    .param p2, "uid"    # I

    .prologue
    .line 756
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 757
    const/4 v1, 0x1

    .line 758
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 760
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->killApplication(Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 765
    :cond_0
    :goto_0
    return v1

    .line 761
    :catch_0
    move-exception v0

    .line 762
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static killApplicationAlways(IILjava/lang/String;)Z
    .locals 3
    .param p0, "uid"    # I
    .param p1, "restartMask"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 769
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 770
    const/4 v1, 0x1

    .line 771
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 773
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->killApplicationAlways(IILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 778
    :cond_0
    :goto_0
    return v1

    .line 774
    :catch_0
    move-exception v0

    .line 775
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static log(I[B)V
    .locals 0
    .param p0, "tag"    # I
    .param p1, "data"    # [B

    .prologue
    .line 817
    return-void
.end method

.method public static putSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "database"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 516
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 517
    const/4 v1, 0x0

    .line 518
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 520
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->putSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 525
    :cond_0
    :goto_0
    return v1

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static registTargetProcessForegroundNotify(Ljava/lang/String;Ljava/util/List;Lcom/miui/whetstone/IProcessForegroundCallback;)V
    .locals 2
    .param p0, "from"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/miui/whetstone/IProcessForegroundCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/whetstone/IProcessForegroundCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 824
    .local p1, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 825
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 827
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->registTargetProcessForegroundNotify(Ljava/lang/String;Ljava/util/List;Lcom/miui/whetstone/IProcessForegroundCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 832
    :cond_0
    :goto_0
    return-void

    .line 828
    :catch_0
    move-exception v0

    .line 829
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static registerActiveAppStatusChange(Lcom/miui/whetstone/active/IActiveAppStatusChange;)Z
    .locals 3
    .param p0, "listner"    # Lcom/miui/whetstone/active/IActiveAppStatusChange;

    .prologue
    .line 398
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 399
    const/4 v1, 0x0

    .line 400
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 402
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->registerActiveAppStatusChange(Lcom/miui/whetstone/active/IActiveAppStatusChange;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 407
    :cond_0
    :goto_0
    return v1

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static registerAppObserver(Lcom/miui/whetstone/IAppObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/miui/whetstone/IAppObserver;

    .prologue
    .line 835
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 836
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 838
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/IWhetstone;->registerAppObserver(Lcom/miui/whetstone/IAppObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 839
    :catch_0
    move-exception v0

    .line 840
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static requestBackgroundModes(III)Z
    .locals 3
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "type"    # I

    .prologue
    .line 342
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 343
    const/4 v1, 0x0

    .line 344
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 346
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1, p2}, Lcom/miui/whetstone/IWhetstone;->requestBackgroundModes(III)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 351
    :cond_0
    :goto_0
    return v1

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static requestCurrentLocation(Ljava/lang/String;Lcom/miui/whetstone/ILocationCallback;)V
    .locals 2
    .param p0, "provider"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/miui/whetstone/ILocationCallback;

    .prologue
    .line 717
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 718
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 720
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0, p1}, Lcom/miui/whetstone/IWhetstone;->requestCurrentLocation(Ljava/lang/String;Lcom/miui/whetstone/ILocationCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 721
    :catch_0
    move-exception v0

    .line 722
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static screenShot(II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 490
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 491
    const/4 v1, 0x0

    .line 492
    .local v1, "ret":Landroid/graphics/Bitmap;
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 494
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0, p1}, Lcom/miui/whetstone/IWhetstone;->screenShot(II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 499
    :cond_0
    :goto_0
    return-object v1

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setWhetstoneLeve(I)V
    .locals 2
    .param p0, "level"    # I

    .prologue
    .line 104
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 105
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 107
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/IWhetstone;->setWhetstoneLevel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static unregisterActiveAppStatusChange(Lcom/miui/whetstone/active/IActiveAppStatusChange;)Z
    .locals 3
    .param p0, "listner"    # Lcom/miui/whetstone/active/IActiveAppStatusChange;

    .prologue
    .line 412
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 413
    const/4 v1, 0x0

    .line 414
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 416
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2, p0}, Lcom/miui/whetstone/IWhetstone;->unregisterActiveAppStatusChange(Lcom/miui/whetstone/active/IActiveAppStatusChange;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 421
    :cond_0
    :goto_0
    return v1

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static unregisterAppObserver(Lcom/miui/whetstone/IAppObserver;)V
    .locals 2
    .param p0, "observer"    # Lcom/miui/whetstone/IAppObserver;

    .prologue
    .line 846
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 847
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 849
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0}, Lcom/miui/whetstone/IWhetstone;->unregisterAppObserver(Lcom/miui/whetstone/IAppObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 854
    :cond_0
    :goto_0
    return-void

    .line 850
    :catch_0
    move-exception v0

    .line 851
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateActiveProcessStatus(IIII)V
    .locals 2
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "type"    # I
    .param p3, "status"    # I

    .prologue
    .line 329
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 330
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 332
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/miui/whetstone/IWhetstone;->updateActiveProcessStatus(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateProcessCurrentPss(II)V
    .locals 2
    .param p0, "pid"    # I
    .param p1, "pss"    # I

    .prologue
    .line 669
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 670
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 672
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1, p0, p1}, Lcom/miui/whetstone/IWhetstone;->updateProcessCurrentPss(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 673
    :catch_0
    move-exception v0

    .line 674
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/whetstone/WhetstoneResultBinder;)V
    .locals 8
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "capabilities"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/miui/whetstone/WhetstoneResultBinder;

    .prologue
    .line 441
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 442
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v0, :cond_0

    .line 444
    :try_start_0
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigStartAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 445
    :catch_0
    move-exception v7

    .line 446
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    .line 447
    new-instance v0, Lcom/miui/whetstone/WhetstoneResult;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/miui/whetstone/WhetstoneResult;-><init>(I)V

    invoke-virtual {p4, v0}, Lcom/miui/whetstone/WhetstoneResultBinder;->onResult(Lcom/miui/whetstone/WhetstoneResult;)V

    goto :goto_0
.end method

.method public static wifiSmartConfigAsyncWithUid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 7
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "capabilities"    # Ljava/lang/String;
    .param p4, "uid"    # I
    .param p5, "result"    # Landroid/os/IBinder;

    .prologue
    .line 556
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/miui/whetstone/WhetstoneManager;->wifiSmartConfigMacAsyncWithUid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V

    .line 558
    return-void
.end method

.method public static wifiSmartConfigMacAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/whetstone/WhetstoneResultBinder;)V
    .locals 8
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "capabilities"    # Ljava/lang/String;
    .param p4, "mac"    # Ljava/lang/String;
    .param p5, "result"    # Lcom/miui/whetstone/WhetstoneResultBinder;

    .prologue
    .line 454
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 455
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v0, :cond_0

    .line 457
    :try_start_0
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigStartAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :cond_0
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v7

    .line 459
    .local v7, "e":Landroid/os/RemoteException;
    new-instance v0, Lcom/miui/whetstone/WhetstoneResult;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/miui/whetstone/WhetstoneResult;-><init>(I)V

    invoke-virtual {p5, v0}, Lcom/miui/whetstone/WhetstoneResultBinder;->onResult(Lcom/miui/whetstone/WhetstoneResult;)V

    .line 460
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigMacAsyncWithUid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 9
    .param p0, "ssid"    # Ljava/lang/String;
    .param p1, "pwd"    # Ljava/lang/String;
    .param p2, "bssid"    # Ljava/lang/String;
    .param p3, "capabilities"    # Ljava/lang/String;
    .param p4, "mac"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "result"    # Landroid/os/IBinder;

    .prologue
    .line 543
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 544
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v0, :cond_0

    .line 546
    :try_start_0
    sget-object v0, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigMacAsyncWithUid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 548
    :catch_0
    move-exception v8

    .line 549
    .local v8, "e":Landroid/os/RemoteException;
    invoke-virtual {v8}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigStop()V
    .locals 2

    .prologue
    .line 466
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 467
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 469
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v1}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigStop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    .local v0, "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void

    .line 470
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 471
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigSupport()Z
    .locals 3

    .prologue
    .line 477
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 478
    const/4 v1, 0x0

    .line 479
    .local v1, "ret":Z
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v2, :cond_0

    .line 481
    :try_start_0
    sget-object v2, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    invoke-interface {v2}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigSupport()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 486
    :cond_0
    :goto_0
    return v1

    .line 482
    :catch_0
    move-exception v0

    .line 483
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigUap(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "addr"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/String;
    .param p2, "did"    # J
    .param p4, "token"    # Ljava/lang/String;

    .prologue
    .line 573
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 574
    const/4 v7, 0x0

    .line 575
    .local v7, "ret":Ljava/lang/String;
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 577
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigUap(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 582
    :cond_0
    :goto_0
    return-object v7

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static wifiSmartConfigUapAsync(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/os/IBinder;)V
    .locals 8
    .param p0, "addr"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/String;
    .param p2, "did"    # J
    .param p4, "token"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/os/IBinder;

    .prologue
    .line 562
    invoke-static {}, Lcom/miui/whetstone/WhetstoneManager;->checkService()V

    .line 563
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    if-eqz v1, :cond_0

    .line 565
    :try_start_0
    sget-object v1, Lcom/miui/whetstone/WhetstoneManager;->ws:Lcom/miui/whetstone/IWhetstone;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lcom/miui/whetstone/IWhetstone;->wifiSmartConfigUapAsync(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
