.class public Lmiui/animation/LayoutTransitionUtil;
.super Ljava/lang/Object;
.source "LayoutTransitionUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel(Landroid/animation/LayoutTransition;)V
    .locals 0
    .param p0, "layoutTransition"    # Landroid/animation/LayoutTransition;

    .prologue
    invoke-virtual {p0}, Landroid/animation/LayoutTransition;->cancel()V

    return-void
.end method

.method public static endChangingAnimations(Landroid/animation/LayoutTransition;)V
    .locals 0
    .param p0, "layoutTransition"    # Landroid/animation/LayoutTransition;

    .prologue
    invoke-virtual {p0}, Landroid/animation/LayoutTransition;->endChangingAnimations()V

    return-void
.end method
