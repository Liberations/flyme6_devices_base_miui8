.class public Lmiui/app/ConnectivityManagerReflector;
.super Ljava/lang/Object;
.source "ConnectivityManagerReflector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiManagerReflector"

.field public static final TETHERING_WIFI:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWifiStaSapConcurrency(Landroid/net/wifi/WifiManager;)Z
    .locals 5
    .param p0, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .prologue
    const/4 v1, 0x0

    const-string v2, "getWifiStaSapConcurrency"

    const-class v3, Ljava/lang/Boolean;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p0, v2, v3, v4}, Lmiui/util/ReflectionUtils;->tryCallMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Object;)Lmiui/util/ObjectReference;

    move-result-object v0

    .local v0, "reference":Lmiui/util/ObjectReference;, "Lmiui/util/ObjectReference<Ljava/lang/Boolean;>;"
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lmiui/util/ObjectReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public static startTethering(Landroid/net/ConnectivityManager;IZ)Z
    .locals 8
    .param p0, "cm"    # Landroid/net/ConnectivityManager;
    .param p1, "type"    # I
    .param p2, "showProvisioningUi"    # Z

    .prologue
    const/4 v4, 0x0

    .local v4, "result":Z
    const-class v0, Landroid/net/ConnectivityManager;

    .local v0, "clazz":Ljava/lang/Class;
    const/4 v5, 0x3

    :try_start_0
    new-array v3, v5, [Ljava/lang/Class;

    .local v3, "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "android.net.ConnectivityManager$OnStartTetheringCallback"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v5, "startTethering"

    invoke-virtual {v0, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v2, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v4, 0x1

    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "params":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_0
    return v4

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v5, "WifiManagerReflector"

    const-string v6, "ClassNotFoundException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v5, "WifiManagerReflector"

    const-string v6, "NoSuchMethodException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v5, "WifiManagerReflector"

    const-string v6, "IllegalAccessException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v5, "WifiManagerReflector"

    const-string v6, "InvocationTargetException"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "WifiManagerReflector"

    const-string v6, "Exception"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static stopTethering(Landroid/net/ConnectivityManager;I)Z
    .locals 8
    .param p0, "cm"    # Landroid/net/ConnectivityManager;
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    .local v3, "result":Z
    const-class v0, Landroid/net/ConnectivityManager;

    .local v0, "clazz":Ljava/lang/Class;
    :try_start_0
    const-string v4, "stopTethering"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v3, 0x1

    .end local v2    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v3

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "WifiManagerReflector"

    const-string v5, "NoSuchMethodException"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v4, "WifiManagerReflector"

    const-string v5, "IllegalAccessException"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "WifiManagerReflector"

    const-string v5, "InvocationTargetException"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "WifiManagerReflector"

    const-string v5, "Exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
