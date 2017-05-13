.class Landroid/app/FilePinner$PinTask;
.super Ljava/lang/Object;
.source "FilePinner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FilePinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PinTask"
.end annotation


# instance fields
.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mGoodToLock:Z

.field private mPkgInfo:Landroid/app/LoadedApk;


# direct methods
.method public constructor <init>(Landroid/content/pm/ApplicationInfo;Landroid/app/LoadedApk;Z)V
    .locals 1
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "pkgInfo"    # Landroid/app/LoadedApk;
    .param p3, "goodToLock"    # Z

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FilePinner$PinTask;->mGoodToLock:Z

    .line 179
    iput-boolean p3, p0, Landroid/app/FilePinner$PinTask;->mGoodToLock:Z

    .line 180
    iput-object p1, p0, Landroid/app/FilePinner$PinTask;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 181
    iput-object p2, p0, Landroid/app/FilePinner$PinTask;->mPkgInfo:Landroid/app/LoadedApk;

    .line 182
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 186
    iget-object v1, p0, Landroid/app/FilePinner$PinTask;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Landroid/app/FilePinner$PinTask;->mPkgInfo:Landroid/app/LoadedApk;

    # invokes: Landroid/app/FilePinner;->getFilesToPin(Landroid/content/pm/ApplicationInfo;Landroid/app/LoadedApk;)Ljava/util/ArrayList;
    invoke-static {v1, v2}, Landroid/app/FilePinner;->access$000(Landroid/content/pm/ApplicationInfo;Landroid/app/LoadedApk;)Ljava/util/ArrayList;

    move-result-object v0

    .line 188
    .local v0, "filesToPin":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    iget-boolean v1, p0, Landroid/app/FilePinner$PinTask;->mGoodToLock:Z

    # invokes: Landroid/app/FilePinner;->recordHotPages(Ljava/util/ArrayList;Z)V
    invoke-static {v0, v1}, Landroid/app/FilePinner;->access$100(Ljava/util/ArrayList;Z)V

    .line 191
    :cond_0
    return-void
.end method
