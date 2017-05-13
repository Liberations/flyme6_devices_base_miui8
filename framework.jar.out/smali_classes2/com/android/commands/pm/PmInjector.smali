.class public final Lcom/android/commands/pm/PmInjector;
.super Ljava/lang/Object;
.source "PmInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/pm/PmInjector$InstallObserver;
    }
.end annotation


# static fields
.field private static final PM:Ljava/lang/String; = "Pm"

.field public static final STATUS_INVALID_APK:I = 0x3

.field public static final STATUS_REJECT:I = -0x1

.field public static final STATUS_SUCESS:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    return-void
.end method

.method public static getDefaultUserId()I
    .locals 4

    .prologue
    .line 189
    :try_start_0
    const-string v3, "user"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v1

    .line 190
    .local v1, "um":Landroid/os/IUserManager;
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/os/IUserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 191
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-static {v2}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUser(Landroid/content/pm/UserInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 192
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 198
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_0
    return v3

    .line 195
    :catch_0
    move-exception v3

    .line 198
    :cond_1
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public static installVerify(Ljava/lang/String;)I
    .locals 11
    .param p0, "apkFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 59
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, "apkFile":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 62
    .local v2, "apkURI":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "com.miui.securitycenter"

    const-string v9, "com.miui.permcenter.install.AdbInstallActivity"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    const-string v8, "application/vnd.android.package-archive"

    invoke-virtual {v4, v2, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    new-instance v0, Lcom/android/commands/pm/PmInjector$InstallObserver;

    invoke-direct {v0}, Lcom/android/commands/pm/PmInjector$InstallObserver;-><init>()V

    .line 67
    .local v0, "activityObs":Lcom/android/commands/pm/PmInjector$InstallObserver;
    const-string v8, "observer"

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 68
    const/high16 v8, 0x18000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    :try_start_0
    invoke-static {v4}, Lcom/android/commands/pm/IActivityManagerCompat;->startActivity(Landroid/content/Intent;)I

    move-result v6

    .line 72
    .local v6, "res":I
    if-eqz v6, :cond_0

    .line 73
    const-string v8, "Pm"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "start PackageInstallerActivity failed ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v6    # "res":I
    :goto_0
    return v7

    .line 76
    :catch_0
    move-exception v3

    .line 77
    .local v3, "e1":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 78
    const-string v8, "Pm"

    const-string v9, "start PackageInstallerActivity RemoteException"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 83
    .end local v3    # "e1":Landroid/os/RemoteException;
    .restart local v6    # "res":I
    :cond_0
    monitor-enter v0

    .line 84
    :goto_1
    :try_start_1
    iget-boolean v8, v0, Lcom/android/commands/pm/PmInjector$InstallObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_1

    .line 86
    const-wide/32 v8, 0xea60

    :try_start_2
    invoke-virtual {v0, v8, v9}, Ljava/lang/Object;->wait(J)V

    .line 87
    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/android/commands/pm/PmInjector$InstallObserver;->finished:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 88
    :catch_1
    move-exception v8

    goto :goto_1

    .line 91
    :cond_1
    :try_start_3
    iget v8, v0, Lcom/android/commands/pm/PmInjector$InstallObserver;->result:I

    if-ne v8, v7, :cond_2

    .line 92
    const/4 v7, 0x2

    monitor-exit v0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v7

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 94
    :cond_2
    :try_start_4
    iget-object v5, v0, Lcom/android/commands/pm/PmInjector$InstallObserver;->msg:Ljava/lang/String;

    .line 95
    .local v5, "msg":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 96
    const-string v5, "Failure [INSTALL_CANCELED_BY_USER]"

    .line 98
    :cond_3
    const-string v8, "Pm"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "install msg : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string v8, "Invalid apk"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 100
    const/4 v7, 0x3

    monitor-exit v0

    goto :goto_0

    .line 102
    :cond_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public static isSupport()Z
    .locals 2

    .prologue
    .line 32
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_CTS_BUILD:Z

    if-eqz v0, :cond_1

    .line 33
    :cond_0
    const/4 v0, 0x1

    .line 36
    :goto_0
    return v0

    .line 35
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Failure [UNSUPPORTED]"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static startPackageInstallerForConfirm(Ljava/lang/String;)Z
    .locals 1
    .param p0, "apkFilePath"    # Ljava/lang/String;

    .prologue
    .line 114
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/commands/pm/PmInjector;->startPackageInstallerForConfirm(Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    return v0
.end method

.method public static startPackageInstallerForConfirm(Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 12
    .param p0, "apkFilePath"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 119
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, "apkFile":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 122
    .local v2, "apkURI":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v4, "intent":Landroid/content/Intent;
    const-string v9, "com.miui.securitycenter"

    const-string v10, "com.miui.permcenter.install.AdbInstallActivity"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v9, "application/vnd.android.package-archive"

    invoke-virtual {v4, v2, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    new-instance v0, Lcom/android/commands/pm/PmInjector$InstallObserver;

    invoke-direct {v0}, Lcom/android/commands/pm/PmInjector$InstallObserver;-><init>()V

    .line 127
    .local v0, "activityObs":Lcom/android/commands/pm/PmInjector$InstallObserver;
    const-string v9, "observer"

    invoke-virtual {v4, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 128
    const/high16 v9, 0x18000000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 131
    :try_start_0
    invoke-static {v4}, Lcom/android/commands/pm/IActivityManagerCompat;->startActivity(Landroid/content/Intent;)I

    move-result v6

    .line 132
    .local v6, "res":I
    if-eqz v6, :cond_0

    .line 133
    const-string v8, "Pm"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "start PackageInstallerActivity failed ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v6    # "res":I
    :goto_0
    return v7

    .line 136
    :catch_0
    move-exception v3

    .line 137
    .local v3, "e1":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 138
    const-string v8, "Pm"

    const-string v9, "start PackageInstallerActivity RemoteException"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    .end local v3    # "e1":Landroid/os/RemoteException;
    .restart local v6    # "res":I
    :cond_0
    monitor-enter v0

    .line 144
    :goto_1
    :try_start_1
    iget-boolean v9, v0, Lcom/android/commands/pm/PmInjector$InstallObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v9, :cond_1

    .line 146
    const-wide/32 v10, 0xea60

    :try_start_2
    invoke-virtual {v0, v10, v11}, Ljava/lang/Object;->wait(J)V

    .line 147
    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/android/commands/pm/PmInjector$InstallObserver;->finished:Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 148
    :catch_1
    move-exception v9

    goto :goto_1

    .line 151
    :cond_1
    :try_start_3
    iget v9, v0, Lcom/android/commands/pm/PmInjector$InstallObserver;->result:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    .line 152
    monitor-exit v0

    move v7, v8

    goto :goto_0

    .line 154
    :cond_2
    iget-object v5, v0, Lcom/android/commands/pm/PmInjector$InstallObserver;->msg:Ljava/lang/String;

    .line 155
    .local v5, "msg":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 156
    const-string v5, "Failure [INSTALL_CANCELED_BY_USER]"

    .line 158
    :cond_3
    if-eqz p1, :cond_4

    .line 159
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    :goto_2
    monitor-exit v0

    goto :goto_0

    .line 165
    .end local v5    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 161
    .restart local v5    # "msg":Ljava/lang/String;
    :cond_4
    :try_start_4
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method public static statusToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 40
    const-string v0, ""

    .line 41
    .local v0, "msg":Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 55
    :goto_0
    :pswitch_0
    return-object v0

    .line 43
    :pswitch_1
    const-string v0, "Install canceled by user"

    .line 44
    goto :goto_0

    .line 46
    :pswitch_2
    const-string v0, "Sucess"

    .line 47
    goto :goto_0

    .line 49
    :pswitch_3
    const-string v0, "Invalid apk"

    .line 50
    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
