.class public Lmiui/util/LockPatternUtilsWrapper;
.super Ljava/lang/Object;
.source "LockPatternUtilsWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActivePasswordQuality(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .local v0, "utils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    return v1
.end method
