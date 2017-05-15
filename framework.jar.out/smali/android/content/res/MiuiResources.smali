.class public final Landroid/content/res/MiuiResources;
.super Landroid/content/res/Resources;
.source "MiuiResources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/MiuiResources$PreloadDrawableSource;,
        Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    }
.end annotation


# static fields
.field private static final sMiuiThemeEnabled:Z

.field private static final sPreloadDrawableSources:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/Set",
            "<",
            "Landroid/content/res/MiuiResources$PreloadDrawableSource;",
            ">;>;"
        }
    .end annotation
.end field

.field public static sUpdatedTimeSystem:Ljava/lang/Long;


# instance fields
.field private mIsPreloadOverlayed:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;

.field private mPreloadingIds:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

.field private mSkipFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeResources:Lmiui/content/res/ThemeResources;

.field private mThemeValues:Lmiui/content/res/ThemeValues;

.field private mUpdatedTime:J

.field private mValueLoadedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    invoke-static {}, Lmiui/content/res/ThemeCompatibility;->isThemeEnabled()Z

    move-result v0

    sput-boolean v0, Landroid/content/res/MiuiResources;->sMiuiThemeEnabled:Z

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Landroid/content/res/MiuiResources;->sUpdatedTimeSystem:Ljava/lang/Long;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/content/res/MiuiResources;->sPreloadDrawableSources:Landroid/util/SparseArray;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    invoke-direct {p0}, Landroid/content/res/Resources;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mPreloadingIds:Ljava/util/Stack;

    sget-object v0, Lmiui/content/res/ThemeResourcesEmpty;->sInstance:Lmiui/content/res/ThemeResourcesEmpty;

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    iput-wide v2, p0, Landroid/content/res/MiuiResources;->mUpdatedTime:J

    iput-wide v2, p0, Landroid/content/res/MiuiResources;->mValueLoadedTime:J

    new-instance v0, Lmiui/content/res/ThemeValues;

    invoke-direct {v0}, Lmiui/content/res/ThemeValues;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mThemeValues:Lmiui/content/res/ThemeValues;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;

    .prologue
    const-wide/16 v2, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mPreloadingIds:Ljava/util/Stack;

    sget-object v0, Lmiui/content/res/ThemeResourcesEmpty;->sInstance:Lmiui/content/res/ThemeResourcesEmpty;

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    iput-wide v2, p0, Landroid/content/res/MiuiResources;->mUpdatedTime:J

    iput-wide v2, p0, Landroid/content/res/MiuiResources;->mValueLoadedTime:J

    new-instance v0, Lmiui/content/res/ThemeValues;

    invoke-direct {v0}, Lmiui/content/res/ThemeValues;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mThemeValues:Lmiui/content/res/ThemeValues;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V
    .locals 4
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "compInfo"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    const-wide/16 v2, -0x1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mPreloadingIds:Ljava/util/Stack;

    sget-object v0, Lmiui/content/res/ThemeResourcesEmpty;->sInstance:Lmiui/content/res/ThemeResourcesEmpty;

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    iput-wide v2, p0, Landroid/content/res/MiuiResources;->mUpdatedTime:J

    iput-wide v2, p0, Landroid/content/res/MiuiResources;->mValueLoadedTime:J

    new-instance v0, Lmiui/content/res/ThemeValues;

    invoke-direct {v0}, Lmiui/content/res/ThemeValues;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mThemeValues:Lmiui/content/res/ThemeValues;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    return-void
.end method

.method private static delayGCAtlasPreloadedBitmaps()V
    .locals 2

    .prologue
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getPreloadedDrawables()Landroid/util/LongSparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v0

    .local v0, "preload":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {}, Lmiui/content/res/ThemeNativeUtils;->terminateAtlas()V

    new-instance v1, Landroid/content/res/MiuiResources$1;

    invoke-direct {v1, v0}, Landroid/content/res/MiuiResources$1;-><init>(Landroid/util/LongSparseArray;)V

    invoke-virtual {v1}, Landroid/content/res/MiuiResources$1;->start()V

    :cond_0
    return-void
.end method

.method public static isPreloadedCacheEmpty()Z
    .locals 1

    .prologue
    invoke-static {}, Landroid/content/res/MiuiResources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getPreloadedDrawables()Landroid/util/LongSparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadValues()V
    .locals 6

    .prologue
    iget-wide v2, p0, Landroid/content/res/MiuiResources;->mValueLoadedTime:J

    iget-wide v4, p0, Landroid/content/res/MiuiResources;->mUpdatedTime:J

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lmiui/content/res/ThemeValues;

    invoke-direct {v0}, Lmiui/content/res/ThemeValues;-><init>()V

    .local v0, "tmp":Lmiui/content/res/ThemeValues;
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    iget-object v2, p0, Landroid/content/res/MiuiResources;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lmiui/content/res/ThemeResources;->mergeThemeValues(Ljava/lang/String;Lmiui/content/res/ThemeValues;)V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mThemeValues:Lmiui/content/res/ThemeValues;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/content/res/MiuiResources;->mValueLoadedTime:J

    goto :goto_0
.end method

.method private resolveOverlayValue(ILandroid/util/TypedValue;)V
    .locals 3
    .param p1, "resId"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;

    .prologue
    sget-boolean v1, Landroid/content/res/MiuiResources;->sMiuiThemeEnabled:Z

    if-eqz v1, :cond_0

    iget v1, p2, Landroid/util/TypedValue;->resourceId:I

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-le v1, v2, :cond_3

    :cond_2
    iget v1, p2, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    :cond_3
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->loadValues()V

    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    .local v0, "themeInteger":Ljava/lang/Integer;
    if-nez v0, :cond_4

    iget v1, p2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v1}, Landroid/content/res/MiuiResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_4
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p2, Landroid/util/TypedValue;->data:I

    goto :goto_0
.end method


# virtual methods
.method public getIntArray(I)[I
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    sget-boolean v1, Landroid/content/res/MiuiResources;->sMiuiThemeEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->getThemeIntArray(I)[I

    move-result-object v0

    .local v0, "array":[I
    if-eqz v0, :cond_0

    .end local v0    # "array":[I
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    sget-boolean v1, Landroid/content/res/MiuiResources;->sMiuiThemeEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->getThemeStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "array":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "array":[Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    sget-boolean v1, Landroid/content/res/MiuiResources;->sMiuiThemeEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->getThemeString(I)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .end local v0    # "cs":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I
    .param p2, "def"    # Ljava/lang/CharSequence;

    .prologue
    sget-boolean v1, Landroid/content/res/MiuiResources;->sMiuiThemeEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->getThemeString(I)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .end local v0    # "cs":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    sget-boolean v1, Landroid/content/res/MiuiResources;->sMiuiThemeEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/content/res/MiuiResources;->getThemeStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "array":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .end local v0    # "array":[Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method getThemeInt(I)Ljava/lang/Integer;
    .locals 2
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->loadValues()V

    iget-object v0, p0, Landroid/content/res/MiuiResources;->mThemeValues:Lmiui/content/res/ThemeValues;

    iget-object v0, v0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method getThemeIntArray(I)[I
    .locals 2
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->loadValues()V

    iget-object v0, p0, Landroid/content/res/MiuiResources;->mThemeValues:Lmiui/content/res/ThemeValues;

    iget-object v0, v0, Lmiui/content/res/ThemeValues;->mIntegerArrays:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method getThemeString(I)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->loadValues()V

    iget-object v0, p0, Landroid/content/res/MiuiResources;->mThemeValues:Lmiui/content/res/ThemeValues;

    iget-object v0, v0, Lmiui/content/res/ThemeValues;->mStrings:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method getThemeStringArray(I)[Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->loadValues()V

    iget-object v0, p0, Landroid/content/res/MiuiResources;->mThemeValues:Lmiui/content/res/ThemeValues;

    iget-object v0, v0, Lmiui/content/res/ThemeValues;->mStringArrays:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-direct {p0, p1, p2}, Landroid/content/res/MiuiResources;->resolveOverlayValue(ILandroid/util/TypedValue;)V

    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Landroid/content/res/MiuiResources;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Landroid/content/res/MiuiResources;->mPackageName:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string v0, "android"

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mPackageName:Ljava/lang/String;

    invoke-static {p0}, Lmiui/content/res/ThemeResources;->getSystem(Landroid/content/res/MiuiResources;)Lmiui/content/res/ThemeResources;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    :goto_1
    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->reset()V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lmiui/content/res/ThemeResourcesPackage;->getThemeResources(Landroid/content/res/MiuiResources;Ljava/lang/String;)Lmiui/content/res/ThemeResourcesPackage;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    goto :goto_1
.end method

.method isPreloadOverlayed(I)Z
    .locals 8
    .param p1, "id"    # I

    .prologue
    const/4 v7, 0x0

    sget-boolean v5, Landroid/content/res/MiuiResources;->sMiuiThemeEnabled:Z

    if-nez v5, :cond_0

    invoke-super {p0, p1}, Landroid/content/res/Resources;->isPreloadOverlayed(I)Z

    move-result v5

    :goto_0
    return v5

    :cond_0
    iget-object v5, p0, Landroid/content/res/MiuiResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .local v2, "isOverlayed":Ljava/lang/Boolean;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0

    :cond_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sget-object v5, Landroid/content/res/MiuiResources;->sPreloadDrawableSources:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .local v4, "sources":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/res/MiuiResources$PreloadDrawableSource;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/MiuiResources$PreloadDrawableSource;

    .local v3, "source":Landroid/content/res/MiuiResources$PreloadDrawableSource;
    new-instance v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    iget v5, v3, Landroid/content/res/MiuiResources$PreloadDrawableSource;->mCookie:I

    iget-object v6, v3, Landroid/content/res/MiuiResources$PreloadDrawableSource;->mResourcePath:Ljava/lang/String;

    invoke-direct {v1, v5, v6, v7}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(ILjava/lang/String;Z)V

    .local v1, "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    iget-object v5, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v5, v1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    iget-object v5, v3, Landroid/content/res/MiuiResources$PreloadDrawableSource;->mThemePath:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    .end local v3    # "source":Landroid/content/res/MiuiResources$PreloadDrawableSource;
    :cond_3
    iget-object v5, p0, Landroid/content/res/MiuiResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    invoke-virtual {v5, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_0
.end method

.method loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    sget-boolean v6, Landroid/content/res/MiuiResources;->sMiuiThemeEnabled:Z

    if-nez v6, :cond_1

    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->isPreloading()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Landroid/content/res/MiuiResources;->mPreloadingIds:Ljava/util/Stack;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->isPreloading()Z

    move-result v6

    if-eqz v6, :cond_0

    iget v6, p1, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_3

    iget v6, p1, Landroid/util/TypedValue;->type:I

    const/16 v7, 0x1f

    if-le v6, v7, :cond_6

    :cond_3
    iget-object v6, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "file":Ljava/lang/String;
    const-string v6, ".xml"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    new-instance v4, Landroid/content/res/MiuiResources$PreloadDrawableSource;

    iget v6, p1, Landroid/util/TypedValue;->assetCookie:I

    invoke-direct {v4, p0, v6, v1, v8}, Landroid/content/res/MiuiResources$PreloadDrawableSource;-><init>(Landroid/content/res/MiuiResources;ILjava/lang/String;Ljava/lang/String;)V

    .local v4, "source":Landroid/content/res/MiuiResources$PreloadDrawableSource;
    iget-object v6, p0, Landroid/content/res/MiuiResources;->mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    if-eqz v6, :cond_4

    iget-object v6, p0, Landroid/content/res/MiuiResources;->mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    iget-object v6, v6, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outFilterPath:Ljava/lang/String;

    iput-object v6, v4, Landroid/content/res/MiuiResources$PreloadDrawableSource;->mThemePath:Ljava/lang/String;

    iput-object v8, p0, Landroid/content/res/MiuiResources;->mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    :cond_4
    iget-object v6, p0, Landroid/content/res/MiuiResources;->mPreloadingIds:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .local v3, "loadingId":Ljava/lang/Integer;
    sget-object v6, Landroid/content/res/MiuiResources;->sPreloadDrawableSources:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    .local v5, "sources":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/res/MiuiResources$PreloadDrawableSource;>;"
    if-nez v5, :cond_5

    new-instance v5, Ljava/util/HashSet;

    .end local v5    # "sources":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/res/MiuiResources$PreloadDrawableSource;>;"
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .restart local v5    # "sources":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/res/MiuiResources$PreloadDrawableSource;>;"
    sget-object v6, Landroid/content/res/MiuiResources;->sPreloadDrawableSources:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1    # "file":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "loadingId":Ljava/lang/Integer;
    .end local v4    # "source":Landroid/content/res/MiuiResources$PreloadDrawableSource;
    .end local v5    # "sources":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/res/MiuiResources$PreloadDrawableSource;>;"
    :cond_6
    iget-object v6, p0, Landroid/content/res/MiuiResources;->mPreloadingIds:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0
.end method

.method loadOverlayDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    sget-boolean v6, Landroid/content/res/MiuiResources;->sMiuiThemeEnabled:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v6, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    new-instance v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    invoke-direct {v1, p1, v8}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(Landroid/util/TypedValue;Z)V

    .local v1, "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->isPreloading()Z

    move-result v6

    if-eqz v6, :cond_2

    iput-object v1, p0, Landroid/content/res/MiuiResources;->mPreloadingInfo:Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    :cond_2
    const/4 v3, 0x0

    .local v3, "themeOverlay":Z
    iget-object v6, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {}, Lmiui/content/res/FixedSizeStringBuffer;->getBuffer()Lmiui/content/res/FixedSizeStringBuffer;

    move-result-object v0

    .local v0, "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    iget-object v6, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, ".xml"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v4, v6, v7

    .local v4, "withoutSuffixLength":I
    iget-object v6, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-virtual {v0, v6, v4}, Lmiui/content/res/FixedSizeStringBuffer;->assign(Ljava/lang/String;I)V

    const-string v6, ".9.png"

    invoke-virtual {v0, v6}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    iget-object v6, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v6, v1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v4}, Lmiui/content/res/FixedSizeStringBuffer;->setLength(I)V

    const-string v6, ".png"

    invoke-virtual {v0, v6}, Lmiui/content/res/FixedSizeStringBuffer;->append(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmiui/content/res/FixedSizeStringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    :cond_3
    invoke-static {v0}, Lmiui/content/res/FixedSizeStringBuffer;->freeBuffer(Lmiui/content/res/FixedSizeStringBuffer;)V

    .end local v0    # "buffer":Lmiui/content/res/FixedSizeStringBuffer;
    .end local v4    # "withoutSuffixLength":I
    :goto_1
    if-eqz v3, :cond_6

    :try_start_0
    iget v6, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    iput v6, p1, Landroid/util/TypedValue;->density:I

    iget-object v2, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    .local v2, "is":Ljava/io/InputStream;
    iget-object v6, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    const-string v7, ".9.png"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v2}, Lmiui/content/res/SimulateNinePngUtil;->convertIntoNinePngStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v2

    :cond_4
    iget-object v6, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    invoke-static {p0, p1, v2, v6}, Landroid/graphics/drawable/Drawable;->createFromResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    :try_start_1
    iget-object v6, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    goto :goto_0

    .end local v2    # "is":Ljava/io/InputStream;
    :cond_5
    iget-object v6, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v6, v1}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v3

    goto :goto_1

    :catch_1
    move-exception v6

    :try_start_2
    iget-object v6, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v6

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    :try_start_3
    iget-object v6, v1, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_2
    throw v5

    :cond_6
    iget-object v6, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, p2, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    :catch_3
    move-exception v6

    goto :goto_2
.end method

.method loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;
    .locals 7
    .param p1, "array"    # Landroid/content/res/TypedArray;

    .prologue
    sget-boolean v5, Landroid/content/res/MiuiResources;->sMiuiThemeEnabled:Z

    if-nez v5, :cond_1

    invoke-super {p0, p1}, Landroid/content/res/Resources;->loadOverlayTypedArray(Landroid/content/res/TypedArray;)Landroid/content/res/TypedArray;

    move-result-object p1

    .end local p1    # "array":Landroid/content/res/TypedArray;
    :cond_0
    return-object p1

    .restart local p1    # "array":Landroid/content/res/TypedArray;
    :cond_1
    invoke-direct {p0}, Landroid/content/res/MiuiResources;->loadValues()V

    iget-object v5, p0, Landroid/content/res/MiuiResources;->mThemeValues:Lmiui/content/res/ThemeValues;

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/content/res/MiuiResources;->mThemeValues:Lmiui/content/res/ThemeValues;

    iget-object v5, v5, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v0, p1, Landroid/content/res/TypedArray;->mData:[I

    .local v0, "data":[I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_0

    add-int/lit8 v5, v2, 0x0

    aget v4, v0, v5

    .local v4, "type":I
    add-int/lit8 v5, v2, 0x3

    aget v1, v0, v5

    .local v1, "id":I
    const/16 v5, 0x10

    if-lt v4, v5, :cond_2

    const/16 v5, 0x1f

    if-le v4, v5, :cond_3

    :cond_2
    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    :cond_3
    invoke-virtual {p0, v1}, Landroid/content/res/MiuiResources;->getThemeInt(I)Ljava/lang/Integer;

    move-result-object v3

    .local v3, "themeInteger":Ljava/lang/Integer;
    if-eqz v3, :cond_4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v0, v5

    .end local v3    # "themeInteger":Ljava/lang/Integer;
    :cond_4
    add-int/lit8 v2, v2, 0x6

    goto :goto_0
.end method

.method loadOverlayValue(Landroid/util/TypedValue;I)V
    .locals 0
    .param p1, "outValue"    # Landroid/util/TypedValue;
    .param p2, "id"    # I

    .prologue
    invoke-direct {p0, p2, p1}, Landroid/content/res/MiuiResources;->resolveOverlayValue(ILandroid/util/TypedValue;)V

    return-void
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 3
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    sget-boolean v1, Landroid/content/res/MiuiResources;->sMiuiThemeEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-super {p0, p1, p2, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    new-instance v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;

    invoke-direct {v0, p2, v2}, Landroid/content/res/MiuiResources$ThemeFileInfoOption;-><init>(Landroid/util/TypedValue;Z)V

    .local v0, "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v1, v0}, Lmiui/content/res/ThemeResources;->getThemeFile(Landroid/content/res/MiuiResources$ThemeFileInfoOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outDensity:I

    iput v1, p2, Landroid/util/TypedValue;->density:I

    iget-object v1, v0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->outInputStream:Ljava/io/InputStream;

    .end local v0    # "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    :goto_0
    return-object v1

    .restart local v0    # "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    :cond_0
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .end local v0    # "info":Landroid/content/res/MiuiResources$ThemeFileInfoOption;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0
.end method

.method protected reset()V
    .locals 2

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/MiuiResources;->mUpdatedTime:J

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mSkipFiles:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/content/res/MiuiResources;->mIsPreloadOverlayed:Landroid/util/SparseArray;

    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 8
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    .prologue
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .local v0, "configChanges":I
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    sget-boolean v1, Landroid/content/res/MiuiResources;->sMiuiThemeEnabled:Z

    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return-void

    .end local v0    # "configChanges":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "configChanges":I
    :cond_2
    iget-object v1, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    if-eqz v1, :cond_0

    iget-wide v2, p0, Landroid/content/res/MiuiResources;->mUpdatedTime:J

    .local v2, "updatedTime":J
    invoke-static {v0}, Landroid/content/res/MiuiConfiguration;->needNewResources(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v4, Landroid/content/res/MiuiResources;->sUpdatedTimeSystem:Ljava/lang/Long;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lmiui/content/res/ThemeResources;->getSystem()Lmiui/content/res/ThemeResourcesSystem;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/content/res/ThemeResourcesSystem;->checkUpdate()J

    move-result-wide v2

    sget-object v1, Landroid/content/res/MiuiResources;->sUpdatedTimeSystem:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v6, v2

    if-gez v1, :cond_3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sput-object v1, Landroid/content/res/MiuiResources;->sUpdatedTimeSystem:Ljava/lang/Long;

    invoke-static {}, Landroid/content/res/MiuiResources;->delayGCAtlasPreloadedBitmaps()V

    invoke-static {}, Landroid/content/res/Resources;->clearPreloadedCache()V

    :cond_3
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/content/res/MiuiResources;->mThemeResources:Lmiui/content/res/ThemeResources;

    invoke-virtual {v1}, Lmiui/content/res/ThemeResources;->checkUpdate()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_4
    iget-wide v4, p0, Landroid/content/res/MiuiResources;->mUpdatedTime:J

    cmp-long v1, v4, v2

    if-ltz v1, :cond_5

    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_5

    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_0

    :cond_5
    invoke-virtual {p0}, Landroid/content/res/MiuiResources;->reset()V

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
