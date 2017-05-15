.class public Landroid/miui/AppOpsUtils;
.super Ljava/lang/Object;
.source "AppOpsUtils.java"


# static fields
.field private static final ALARM_WHITE_LIST:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AppOpsUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.deskclock"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.xiaomi.xmsf"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.mobiletools.systemhelper"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.chinaunicom.registerhelper"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.tencent.mobileqq"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.tencent.mm"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.zdworks.android.zdclock:zdclock"

    aput-object v2, v0, v1

    sput-object v0, Landroid/miui/AppOpsUtils;->ALARM_WHITE_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationAutoStart(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .local v3, "uid":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v2, p1, v4}, Landroid/content/pm/PackageManagerCompat;->getPackageUidAsUser(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const-string v4, "appops"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .local v0, "aom":Landroid/app/AppOpsManager;
    const/16 v4, 0x2718

    invoke-virtual {v0, v4, v3, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v4

    .end local v0    # "aom":Landroid/app/AppOpsManager;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return v4

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "AppOpsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t obtain the uid for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static getApplicationAutoStart(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    const-string v1, "appops"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .local v0, "aom":Landroid/app/AppOpsManager;
    const/16 v1, 0x2718

    invoke-virtual {v0, v1, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getExactAlarm(Landroid/content/Context;I)I
    .locals 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # I

    .prologue
    const/16 v12, 0x271e

    const/4 v10, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .local v7, "packages":[Ljava/lang/String;
    const-string v11, "appops"

    invoke-virtual {p0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .local v0, "aom":Landroid/app/AppOpsManager;
    if-eqz v7, :cond_4

    array-length v11, v7

    if-lez v11, :cond_4

    aget-object v6, v7, v3

    .local v6, "packageName":Ljava/lang/String;
    new-array v11, v10, [I

    aput v12, v11, v3

    invoke-virtual {v0, p1, v6, v11}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v9

    .local v9, "pkgOpsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-nez v9, :cond_1

    invoke-static {p0, v6}, Landroid/miui/AppOpsUtils;->inAlarmWhiteList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .end local v6    # "packageName":Ljava/lang/String;
    .end local v9    # "pkgOpsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_0
    return v3

    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v9    # "pkgOpsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_0
    move v3, v10

    goto :goto_0

    :cond_1
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$PackageOps;

    .local v8, "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v8}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v5

    .local v5, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$OpEntry;

    .local v4, "op":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v11

    if-ne v11, v12, :cond_3

    invoke-virtual {v4}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v3

    goto :goto_0

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "op":Landroid/app/AppOpsManager$OpEntry;
    .end local v5    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v8    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    .end local v9    # "pkgOpsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_4
    move v3, v10

    goto :goto_0
.end method

.method private static inAlarmWhiteList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/miui/AppOpsUtils;->ALARM_WHITE_LIST:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    sget-object v2, Landroid/miui/AppOpsUtils;->ALARM_WHITE_LIST:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v2, Lmiui/provider/CloudAppControll$TAG;->TAG_ACCURATE_ALARM_CLOCK:Lmiui/provider/CloudAppControll$TAG;

    invoke-static {p0, v2, p1}, Lmiui/provider/CloudAppControll;->get(Landroid/content/Context;Lmiui/provider/CloudAppControll$TAG;Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static setApplicationAutoStart(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "autoStart"    # Z

    .prologue
    const/4 v3, -0x1

    .local v3, "uid":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v2, p1, v4}, Landroid/content/pm/PackageManagerCompat;->getPackageUidAsUser(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const-string v4, "appops"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .local v0, "aom":Landroid/app/AppOpsManager;
    const/16 v5, 0x2718

    if-eqz p2, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v5, v3, p1, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .end local v0    # "aom":Landroid/app/AppOpsManager;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_1
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "AppOpsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t obtain the uid for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "aom":Landroid/app/AppOpsManager;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const/4 v4, 0x2

    goto :goto_0
.end method

.method public static setExactAlarm(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "exactAlarm"    # Z

    .prologue
    const/4 v3, -0x1

    .local v3, "uid":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v2, p1, v4}, Landroid/content/pm/PackageManagerCompat;->getPackageUidAsUser(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const-string v4, "appops"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .local v0, "aom":Landroid/app/AppOpsManager;
    const/16 v5, 0x271e

    if-eqz p2, :cond_0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v5, v3, p1, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .end local v0    # "aom":Landroid/app/AppOpsManager;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_1
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "AppOpsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t obtain the uid for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "aom":Landroid/app/AppOpsManager;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    const/4 v4, 0x2

    goto :goto_0
.end method
