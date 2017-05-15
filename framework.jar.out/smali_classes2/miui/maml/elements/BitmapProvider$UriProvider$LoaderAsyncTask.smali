.class Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;
.super Landroid/os/AsyncTask;
.source "BitmapProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/BitmapProvider$UriProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mHeight:I

.field private mUri:Ljava/lang/String;

.field private mWidth:I

.field final synthetic this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/BitmapProvider$UriProvider;Ljava/lang/String;II)V
    .locals 2
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v1, -0x1

    iput-object p1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mUri:Ljava/lang/String;

    iput v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mWidth:I

    iput v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mHeight:I

    iput-object p2, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mUri:Ljava/lang/String;

    iput p3, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mWidth:I

    iput p4, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mHeight:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;

    iget-object v2, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget v3, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mWidth:I

    iget v4, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mHeight:I

    invoke-virtual {v1, v2, v3, v4}, Lmiui/maml/elements/BitmapProvider$UriProvider;->getBitmapFromUri(Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    const-string v1, "BitmapProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to decode bitmap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;

    # getter for: Lmiui/maml/elements/BitmapProvider$UriProvider;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lmiui/maml/elements/BitmapProvider$UriProvider;->access$100(Lmiui/maml/elements/BitmapProvider$UriProvider;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->mUri:Ljava/lang/String;

    iget-object v3, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;

    # getter for: Lmiui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;
    invoke-static {v3}, Lmiui/maml/elements/BitmapProvider$UriProvider;->access$200(Lmiui/maml/elements/BitmapProvider$UriProvider;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;

    iget-object v1, v1, Lmiui/maml/elements/BitmapProvider$UriProvider;->mVersionedBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v1, v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;

    iget-object v3, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;

    # getter for: Lmiui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;
    invoke-static {v3}, Lmiui/maml/elements/BitmapProvider$UriProvider;->access$200(Lmiui/maml/elements/BitmapProvider$UriProvider;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lmiui/maml/elements/BitmapProvider$UriProvider;->mCachedBitmapUri:Ljava/lang/String;
    invoke-static {v1, v3}, Lmiui/maml/elements/BitmapProvider$UriProvider;->access$302(Lmiui/maml/elements/BitmapProvider$UriProvider;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;

    iget-object v1, v1, Lmiui/maml/elements/BitmapProvider$UriProvider;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->requestUpdate()V

    iget-object v1, p0, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->this$0:Lmiui/maml/elements/BitmapProvider$UriProvider;

    const/4 v3, 0x0

    # setter for: Lmiui/maml/elements/BitmapProvider$UriProvider;->mCurLoadingBitmapUri:Ljava/lang/String;
    invoke-static {v1, v3}, Lmiui/maml/elements/BitmapProvider$UriProvider;->access$202(Lmiui/maml/elements/BitmapProvider$UriProvider;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    invoke-virtual {p0, p1}, Lmiui/maml/elements/BitmapProvider$UriProvider$LoaderAsyncTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
