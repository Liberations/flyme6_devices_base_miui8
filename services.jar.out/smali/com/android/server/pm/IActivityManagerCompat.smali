.class public Lcom/android/server/pm/IActivityManagerCompat;
.super Ljava/lang/Object;
.source "IActivityManagerCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 14
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "requiredPermission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 13
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 17
    .local v0, "am":Landroid/app/IActivityManager;
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    .line 18
    .local v8, "requiredPermissions":[Ljava/lang/String;
    aput-object p1, v8, v5

    .line 19
    const/4 v9, -0x1

    move-object v2, p0

    move-object v3, v1

    move-object v4, v1

    move-object v6, v1

    move-object v7, v1

    move-object v10, v1

    move v11, v5

    move v12, v5

    move v13, v5

    invoke-interface/range {v0 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    .line 21
    return-void
.end method
