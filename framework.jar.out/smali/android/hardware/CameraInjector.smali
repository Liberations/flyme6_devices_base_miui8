.class public Landroid/hardware/CameraInjector;
.super Ljava/lang/Object;
.source "CameraInjector.java"


# static fields
.field private static final CAMERA_CONFIG_KEY:Ljava/lang/String; = "camera"

.field private static final EXTRA_BEAUTIFY_VALUE:Ljava/lang/String; = "extra_still_beautify_value"

.field private static final EXTRA_MIN_PREVIEW_SIZE:Ljava/lang/String; = "extra_min_preview_size"

.field private static final KEY_BEAUTIFY:Ljava/lang/String; = "xiaomi-still-beautify-values"

.field private static final KEY_CAMERA_ID:Ljava/lang/String; = "camera-id"

.field private static final KEY_PICTURE_SIZE:Ljava/lang/String; = "picture-size"

.field private static final KEY_PREVIEW_SIZE:Ljava/lang/String; = "preview-size"

.field private static final SUPPORTED_VALUES_SUFFIX:Ljava/lang/String; = "-values"

.field private static final TAG:Ljava/lang/String; = "CameraInjector"

.field private static sCameraInfoMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/hardware/Camera;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static convertSizeToString(Landroid/hardware/Camera$Size;)Ljava/lang/String;
    .locals 2
    .param p0, "size"    # Landroid/hardware/Camera$Size;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getParametersEx(Landroid/hardware/Camera$Parameters;)V
    .locals 7
    .param p0, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const-string v5, "remove_lower_perview_size_list"

    invoke-static {v5}, Landroid/hardware/CameraInjector;->isInWhiteList(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    .local v3, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .local v2, "newSizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const-string v5, "extra_min_preview_size"

    const v6, 0xe1000

    invoke-static {v5, v6}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v1

    .local v1, "minSize":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    .local v4, "size":Landroid/hardware/Camera$Size;
    iget v5, v4, Landroid/hardware/Camera$Size;->width:I

    iget v6, v4, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v5, v6

    if-gt v1, v5, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v4    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-eq v5, v6, :cond_2

    const-string v5, "preview-size-values"

    invoke-static {v2}, Landroid/hardware/CameraInjector;->getValueString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "minSize":I
    .end local v2    # "newSizeList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v3    # "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_2
    return-void
.end method

.method private static getValueString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz p0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .local v2, "size":Landroid/hardware/Camera$Size;
    iget v3, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x78

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v0    # "buffer":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    :goto_1
    return-object v3

    :cond_2
    const-string v3, ""

    goto :goto_1
.end method

.method public static initCamera(Landroid/hardware/Camera;I)V
    .locals 3
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "cameraId"    # I

    .prologue
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "camera-id"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static isInWhiteList(Ljava/lang/String;)Z
    .locals 7
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    .local v3, "processName":Ljava/lang/String;
    invoke-static {p0}, Lmiui/util/FeatureParser;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, "whitelist":[Ljava/lang/String;
    if-eqz v5, :cond_1

    array-length v6, v5

    if-lez v6, :cond_1

    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "str":Ljava/lang/String;
    :goto_1
    return v6

    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v4    # "str":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static releaseCamera(Landroid/hardware/Camera;)V
    .locals 1
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    sget-object v0, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setParametersEx(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    .locals 5
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    const/16 v3, 0x2d0

    const-string v2, "add_still_beautify_list"

    invoke-static {v2}, Landroid/hardware/CameraInjector;->isInWhiteList(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "xiaomi-still-beautify-values"

    invoke-virtual {p1, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .local v1, "size":Landroid/hardware/Camera$Size;
    if-eqz v1, :cond_1

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    if-le v2, v3, :cond_0

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    if-gt v2, v3, :cond_1

    :cond_0
    const-string v2, "xiaomi-still-beautify-values"

    const-string v3, "extra_still_beautify_value"

    invoke-static {v3}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .end local v1    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    sget-object v2, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .local v0, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    const-string v2, "preview-size"

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/CameraInjector;->convertSizeToString(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "picture-size"

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/CameraInjector;->convertSizeToString(Landroid/hardware/Camera$Size;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_2
    const-string v2, "CameraInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setParametersEx: Lost camera info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static startPreview(Landroid/hardware/Camera;)V
    .locals 6
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    sget-object v3, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .local v1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    const-string v3, "camera-id"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "cameraId":Ljava/lang/String;
    const-string v3, "preview-size"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "previewSize":Ljava/lang/String;
    new-instance v3, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;

    const-string v4, "camera"

    invoke-direct {v3, v4}, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "camera-id"

    invoke-virtual {v3, v4, v0}, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/whetstone/utils/WhetstoneActionBuilder;

    move-result-object v3

    const-string v4, "preview-size"

    invoke-virtual {v3, v4, v2}, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/whetstone/utils/WhetstoneActionBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->getAction()Lcom/miui/whetstone/WhetstoneAction;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/whetstone/WhetstoneManager;->analyticTrack(Lcom/miui/whetstone/WhetstoneAction;)V

    .end local v0    # "cameraId":Ljava/lang/String;
    .end local v2    # "previewSize":Ljava/lang/String;
    :goto_0
    return-void

    :cond_0
    const-string v3, "CameraInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startPreview: Lost camera info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static takePicture(Landroid/hardware/Camera;)V
    .locals 6
    .param p0, "camera"    # Landroid/hardware/Camera;

    .prologue
    sget-object v3, Landroid/hardware/CameraInjector;->sCameraInfoMap:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .local v1, "info":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    const-string v3, "camera-id"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "cameraId":Ljava/lang/String;
    const-string v3, "picture-size"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .local v2, "pictureSize":Ljava/lang/String;
    new-instance v3, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;

    const-string v4, "camera"

    invoke-direct {v3, v4}, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "camera-id"

    invoke-virtual {v3, v4, v0}, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/whetstone/utils/WhetstoneActionBuilder;

    move-result-object v3

    const-string v4, "picture-size"

    invoke-virtual {v3, v4, v2}, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/whetstone/utils/WhetstoneActionBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->getAction()Lcom/miui/whetstone/WhetstoneAction;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/whetstone/WhetstoneManager;->analyticTrack(Lcom/miui/whetstone/WhetstoneAction;)V

    .end local v0    # "cameraId":Ljava/lang/String;
    .end local v2    # "pictureSize":Ljava/lang/String;
    :goto_0
    return-void

    :cond_0
    const-string v3, "CameraInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "takePicture: Lost camera info "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
