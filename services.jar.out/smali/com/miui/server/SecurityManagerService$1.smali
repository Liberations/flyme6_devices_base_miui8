.class Lcom/miui/server/SecurityManagerService$1;
.super Ljava/lang/Thread;
.source "SecurityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/server/SecurityManagerService;->checkSystemSelfProtection(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/SecurityManagerService;

.field final synthetic val$onlyCore:Z


# direct methods
.method constructor <init>(Lcom/miui/server/SecurityManagerService;Z)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    iput-boolean p2, p0, Lcom/miui/server/SecurityManagerService$1;->val$onlyCore:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/16 v12, 0xa

    invoke-static {v12}, Landroid/os/Process;->setThreadPriority(I)V

    sget-boolean v12, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v12, :cond_4

    iget-boolean v12, p0, Lcom/miui/server/SecurityManagerService$1;->val$onlyCore:Z

    if-nez v12, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    # getter for: Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/miui/server/SecurityManagerService;->access$000(Lcom/miui/server/SecurityManagerService;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .local v9, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    .local v6, "pInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    const-string v12, "android"

    const/16 v13, 0x40

    invoke-virtual {v9, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    iget-object v8, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v8, "platformSignature":[Landroid/content/pm/Signature;
    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->nativeIsReleased()Z
    invoke-static {v12}, Lcom/miui/server/SecurityManagerService;->access$1100(Lcom/miui/server/SecurityManagerService;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->enforcePlatformSignature([Landroid/content/pm/Signature;)V
    invoke-static {v12, v8}, Lcom/miui/server/SecurityManagerService;->access$1200(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;)V

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "checkApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v12, "com.lbe.security.miui"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v12, "com.android.updater"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v12, "com.miui.securitycenter"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v12, "com.xiaomi.finddevice"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v12, "com.miui.home"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v12, "com.miui.guardprovider"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v12, "com.miui.gallery"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v12, "com.android.calendar"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v12, "com.miui.weather2"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v12, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v12, :cond_1

    sget-boolean v12, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v12, :cond_1

    sget-boolean v12, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-nez v12, :cond_1

    const-string v12, "com.xiaomi.gamecenter"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v12, "com.miui.player"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v12, "com.miui.video"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v12, "com.android.browser"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v12, "com.xiaomi.market"

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .local v7, "pkg":Ljava/lang/String;
    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->checkEnabled(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    invoke-static {v12, v9, v7}, Lcom/miui/server/SecurityManagerService;->access$1300(Lcom/miui/server/SecurityManagerService;Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    goto :goto_0

    .end local v2    # "checkApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v8    # "platformSignature":[Landroid/content/pm/Signature;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "System error: cannot find android package."

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "checkApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v8    # "platformSignature":[Landroid/content/pm/Signature;
    :cond_2
    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    const-string v13, "com.android.updater"

    # invokes: Lcom/miui/server/SecurityManagerService;->enforceAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)V
    invoke-static {v12, v8, v13, v10}, Lcom/miui/server/SecurityManagerService;->access$1400(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;Ljava/lang/String;Z)V

    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    const-string v13, "com.miui.securitycenter"

    # invokes: Lcom/miui/server/SecurityManagerService;->enforceAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)V
    invoke-static {v12, v8, v13, v11}, Lcom/miui/server/SecurityManagerService;->access$1400(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;Ljava/lang/String;Z)V

    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    const-string v13, "com.xiaomi.finddevice"

    # invokes: Lcom/miui/server/SecurityManagerService;->enforceAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)V
    invoke-static {v12, v8, v13, v10}, Lcom/miui/server/SecurityManagerService;->access$1400(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;Ljava/lang/String;Z)V

    sget-boolean v12, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v12, :cond_3

    sget-boolean v12, Lmiui/os/Build;->IS_CM_CUSTOMIZATION:Z

    if-nez v12, :cond_3

    sget-boolean v12, Lmiui/os/Build;->IS_CM_CUSTOMIZATION_TEST:Z

    if-nez v12, :cond_3

    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    const-string v13, "com.xiaomi.market"

    # invokes: Lcom/miui/server/SecurityManagerService;->enforceAppSignature([Landroid/content/pm/Signature;Ljava/lang/String;Z)V
    invoke-static {v12, v8, v13, v11}, Lcom/miui/server/SecurityManagerService;->access$1400(Lcom/miui/server/SecurityManagerService;[Landroid/content/pm/Signature;Ljava/lang/String;Z)V

    :cond_3
    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->isOldmanMode()Z
    invoke-static {v12}, Lcom/miui/server/SecurityManagerService;->access$1500(Lcom/miui/server/SecurityManagerService;)Z

    move-result v5

    .local v5, "oldmanMode":Z
    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->nativeIsReleased()Z
    invoke-static {v12}, Lcom/miui/server/SecurityManagerService;->access$1100(Lcom/miui/server/SecurityManagerService;)Z

    move-result v12

    if-eqz v12, :cond_6

    if-nez v5, :cond_6

    const-string v12, "SecurityManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "nativeIsReleased set and "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    iget-object v13, p0, Lcom/miui/server/SecurityManagerService$1;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->checkSysAppCrack()Z
    invoke-static {v13}, Lcom/miui/server/SecurityManagerService;->access$1700(Lcom/miui/server/SecurityManagerService;)Z

    move-result v13

    if-eqz v13, :cond_5

    :goto_1
    # setter for: Lcom/miui/server/SecurityManagerService;->mSysAppCracked:I
    invoke-static {v12, v10}, Lcom/miui/server/SecurityManagerService;->access$1602(Lcom/miui/server/SecurityManagerService;I)I

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .end local v0    # "begin":J
    .end local v2    # "checkApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "oldmanMode":Z
    .end local v6    # "pInfo":Landroid/content/pm/PackageInfo;
    .end local v8    # "platformSignature":[Landroid/content/pm/Signature;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    return-void

    .restart local v0    # "begin":J
    .restart local v2    # "checkApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "oldmanMode":Z
    .restart local v6    # "pInfo":Landroid/content/pm/PackageInfo;
    .restart local v8    # "platformSignature":[Landroid/content/pm/Signature;
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_5
    move v10, v11

    goto :goto_1

    :cond_6
    const-string v10, "SecurityManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "nativeIsReleased not set or "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
