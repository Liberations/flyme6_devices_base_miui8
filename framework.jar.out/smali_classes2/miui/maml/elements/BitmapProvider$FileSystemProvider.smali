.class Lmiui/maml/elements/BitmapProvider$FileSystemProvider;
.super Lmiui/maml/elements/BitmapProvider$UriProvider;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/BitmapProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileSystemProvider"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "FileSystem"


# direct methods
.method public constructor <init>(Lmiui/maml/ScreenElementRoot;)V
    .locals 0
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/elements/BitmapProvider$UriProvider;-><init>(Lmiui/maml/ScreenElementRoot;)V

    return-void
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;ZII)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 4
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "sync"    # Z
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$FileSystemProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v2, v3}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$FileSystemProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    :goto_0
    return-object v2

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    .local v1, "uri":Ljava/net/URI;
    if-nez v1, :cond_1

    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$FileSystemProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v2, v3}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$FileSystemProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-super {p0, v2, p2, p3, p4}, Lmiui/maml/elements/BitmapProvider$UriProvider;->getBitmap(Ljava/lang/String;ZII)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    move-result-object v2

    goto :goto_0
.end method
