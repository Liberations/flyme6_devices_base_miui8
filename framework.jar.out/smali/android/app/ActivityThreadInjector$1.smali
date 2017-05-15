.class final Landroid/app/ActivityThreadInjector$1;
.super Ljava/lang/Object;
.source "ActivityThreadInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ActivityThreadInjector;->preloadSubActivity(Landroid/app/ActivityThread;ILandroid/app/LoadedApk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/app/ActivityThreadInjector$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    :try_start_0
    iget-object v4, p0, Landroid/app/ActivityThreadInjector$1;->val$context:Landroid/content/Context;

    sget-object v5, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v4, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .local v1, "backgroundResource":I
    if-eqz v1, :cond_0

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-le v4, v5, :cond_1

    const-string v4, "android.content.res.ResourcesImpl"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lmiui/util/ReflectionUtils;->tryFindClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .local v2, "clasz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v4, p0, Landroid/app/ActivityThreadInjector$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "mResourcesImpl"

    invoke-static {v4, v5, v2}, Lmiui/util/ReflectionUtils;->tryGetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Lmiui/util/ObjectReference;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v3

    .local v3, "resImpl":Ljava/lang/Object;
    const-string v4, "mCaching"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lmiui/util/ReflectionUtils;->trySetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Landroid/app/ActivityThreadInjector$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    const-string v4, "mCaching"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lmiui/util/ReflectionUtils;->trySetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .end local v2    # "clasz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "resImpl":Ljava/lang/Object;
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "backgroundResource":I
    :goto_1
    return-void

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v1    # "backgroundResource":I
    :cond_1
    iget-object v4, p0, Landroid/app/ActivityThreadInjector$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "mCaching"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lmiui/util/ReflectionUtils;->trySetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Landroid/app/ActivityThreadInjector$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Landroid/app/ActivityThreadInjector$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "mCaching"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lmiui/util/ReflectionUtils;->trySetObjectField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "backgroundResource":I
    :catch_0
    move-exception v4

    goto :goto_1
.end method
