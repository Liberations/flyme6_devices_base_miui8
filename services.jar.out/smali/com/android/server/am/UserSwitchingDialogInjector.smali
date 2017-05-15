.class public Lcom/android/server/am/UserSwitchingDialogInjector;
.super Ljava/lang/Object;
.source "UserSwitchingDialogInjector.java"


# static fields
.field private static onWindowShownListener:Landroid/view/ViewTreeObserver$OnWindowShownListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finishSwitchUser(Landroid/app/Dialog;)V
    .locals 3
    .param p0, "dialog"    # Landroid/app/Dialog;

    .prologue
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/UserSwitchingDialogInjector;->onWindowShownListener:Landroid/view/ViewTreeObserver$OnWindowShownListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    :cond_0
    return-void
.end method

.method public static startUserInForeground(Lcom/android/server/am/ActivityManagerService;ILandroid/app/Dialog;)V
    .locals 0
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "userId"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->startUserInForeground(ILandroid/app/Dialog;)Z

    return-void
.end method

.method public static switchUser(Landroid/os/Handler;Lcom/android/server/am/MiuiUserSwitchingDialog;)V
    .locals 3
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "dialog"    # Lcom/android/server/am/MiuiUserSwitchingDialog;

    .prologue
    new-instance v1, Lcom/android/server/am/UserSwitchingDialogInjector$1;

    invoke-direct {v1, p1}, Lcom/android/server/am/UserSwitchingDialogInjector$1;-><init>(Lcom/android/server/am/MiuiUserSwitchingDialog;)V

    sput-object v1, Lcom/android/server/am/UserSwitchingDialogInjector;->onWindowShownListener:Landroid/view/ViewTreeObserver$OnWindowShownListener;

    invoke-virtual {p1}, Lcom/android/server/am/MiuiUserSwitchingDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/UserSwitchingDialogInjector;->onWindowShownListener:Landroid/view/ViewTreeObserver$OnWindowShownListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnWindowShownListener(Landroid/view/ViewTreeObserver$OnWindowShownListener;)V

    :cond_0
    return-void
.end method
