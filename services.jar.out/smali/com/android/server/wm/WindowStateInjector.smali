.class Lcom/android/server/wm/WindowStateInjector;
.super Ljava/lang/Object;
.source "WindowStateInjector.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static reportHappendErrorDuringResized(Lcom/android/server/wm/WindowState;Landroid/os/RemoteException;)V
    .locals 3
    .param p0, "thiz"    # Lcom/android/server/wm/WindowState;
    .param p1, "e"    # Landroid/os/RemoteException;

    .prologue
    const/4 v2, 0x0

    instance-of v0, p1, Landroid/os/DeadObjectException;

    if-eqz v0, :cond_0

    const-string v0, "WindowState"

    const-string v1, "Error happens during resized "

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mStableInsetsChanged:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    :cond_0
    return-void
.end method
