.class Lmiui/maml/elements/BitmapProvider$AppIconProvider;
.super Lmiui/maml/elements/BitmapProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppIconProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ApplicationIcon"


# instance fields
.field private mCls:Ljava/lang/String;

.field private mNoIcon:Z

.field private mPkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 0
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/elements/BitmapProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;ZII)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 7
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v6, 0x1

    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v2}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mNoIcon:Z

    if-nez v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mPkg:Ljava/lang/String;

    iget-object v5, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mCls:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object v2

    .restart local v0    # "d":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mNoIcon:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "BitmapProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to get icon for src of ApplicationIcon type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v6, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mNoIcon:Z

    goto :goto_0
.end method

.method public init(Ljava/lang/String;)V
    .locals 5
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Lmiui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    iput-boolean v3, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mNoIcon:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "name":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    aget-object v1, v0, v3

    iput-object v1, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mPkg:Ljava/lang/String;

    aget-object v1, v0, v4

    iput-object v1, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mCls:Ljava/lang/String;

    .end local v0    # "name":[Ljava/lang/String;
    :goto_0
    return-void

    .restart local v0    # "name":[Ljava/lang/String;
    :cond_0
    const-string v1, "BitmapProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid src of ApplicationIcon type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mNoIcon:Z

    goto :goto_0

    .end local v0    # "name":[Ljava/lang/String;
    :cond_1
    const-string v1, "BitmapProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid src of ApplicationIcon type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lmiui/maml/elements/BitmapProvider$AppIconProvider;->mNoIcon:Z

    goto :goto_0
.end method
