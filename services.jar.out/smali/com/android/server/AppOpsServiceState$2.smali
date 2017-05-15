.class Lcom/android/server/AppOpsServiceState$2;
.super Ljava/lang/Object;
.source "AppOpsServiceState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppOpsServiceState;->startService(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppOpsServiceState;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/AppOpsServiceState;I)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/AppOpsServiceState$2;->this$0:Lcom/android/server/AppOpsServiceState;

    iput p2, p0, Lcom/android/server/AppOpsServiceState$2;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.permission.Action.SecurityService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.lbe.security.miui"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/AppOpsServiceState$2;->this$0:Lcom/android/server/AppOpsServiceState;

    # getter for: Lcom/android/server/AppOpsServiceState;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/AppOpsServiceState;->access$200(Lcom/android/server/AppOpsServiceState;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/AppOpsServiceState$2;->val$userId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AppOpsServiceState"

    const-string v3, "Start Error"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
