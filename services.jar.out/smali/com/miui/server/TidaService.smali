.class public Lcom/miui/server/TidaService;
.super Lmiui/security/ITidaService$Stub;
.source "TidaService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/server/TidaService$1;,
        Lcom/miui/server/TidaService$MyPackageMonitor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final SERVICE_NAME:Ljava/lang/String; = "miui.security.keystore"

.field private static final TAG:Ljava/lang/String;

.field private static sTesting:Z


# instance fields
.field private keys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/PrivateKey;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    const-class v1, Lcom/miui/server/TidaService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/miui/server/TidaService;->TAG:Ljava/lang/String;

    .line 27
    const/4 v1, 0x0

    sput-boolean v1, Lcom/miui/server/TidaService;->sTesting:Z

    .line 33
    :try_start_0
    const-string v1, "tida"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 34
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 35
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    const/4 v1, 0x1

    sput-boolean v1, Lcom/miui/server/TidaService;->sTesting:Z

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Lmiui/security/ITidaService$Stub;-><init>()V

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/server/TidaService;->keys:Ljava/util/Map;

    .line 55
    iput-object p1, p0, Lcom/miui/server/TidaService;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Lcom/miui/server/TidaService$MyPackageMonitor;

    invoke-direct {v0, p0, v2}, Lcom/miui/server/TidaService$MyPackageMonitor;-><init>(Lcom/miui/server/TidaService;Lcom/miui/server/TidaService$1;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/miui/server/TidaService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/miui/server/TidaService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/server/TidaService;
    .param p1, "x1"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/miui/server/TidaService;->onUidRemoved(I)V

    return-void
.end method

.method private native nativeContains(ILjava/lang/String;)Z
.end method

.method private native nativeGenerateKeyPair(ILjava/lang/String;Ljava/lang/String;)Ljava/security/KeyPair;
.end method

.method private native nativeRemoveAllKey(I)V
.end method

.method private native nativeSign()[B
.end method

.method private native nativeSignInit(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSignUpdate(Ljava/lang/String;)V
.end method

.method private onUidRemoved(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 60
    sget-boolean v0, Lcom/miui/server/TidaService;->sTesting:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lcom/miui/server/TidaService;->testRemoveAllKey(I)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/server/TidaService;->nativeRemoveAllKey(I)V

    goto :goto_0
.end method

.method private testContains(ILjava/lang/String;)Z
    .locals 3
    .param p1, "uid"    # I
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 142
    sget-object v0, Lcom/miui/server/TidaService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "testContains("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/miui/server/TidaService;->keys:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private testGenerateKeyPair(ILjava/lang/String;Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 5
    .param p1, "uid"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "alg"    # Ljava/lang/String;

    .prologue
    .line 147
    sget-object v2, Lcom/miui/server/TidaService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "testGenerateKeyPair("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Lmiui/security/TidaPrivateKey;

    invoke-direct {v0, p2}, Lmiui/security/TidaPrivateKey;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, "priv":Lmiui/security/TidaPrivateKey;
    new-instance v1, Lmiui/security/TidaPublicKey;

    invoke-direct {v1}, Lmiui/security/TidaPublicKey;-><init>()V

    .line 150
    .local v1, "pub":Lmiui/security/TidaPublicKey;
    iget-object v2, p0, Lcom/miui/server/TidaService;->keys:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    new-instance v2, Ljava/security/KeyPair;

    invoke-direct {v2, v1, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method private testRemoveAllKey(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 167
    sget-object v0, Lcom/miui/server/TidaService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "testRemoveAllKey("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method

.method private testSign()[B
    .locals 2

    .prologue
    .line 155
    sget-object v0, Lcom/miui/server/TidaService;->TAG:Ljava/lang/String;

    const-string v1, "testSing()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const-string v0, "testSign"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private testSignInit(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 164
    sget-object v0, Lcom/miui/server/TidaService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "testSignInit("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method

.method private testSignUpdate(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 160
    sget-object v0, Lcom/miui/server/TidaService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "testSignUpdate("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 70
    .local v0, "uid":I
    sget-boolean v1, Lcom/miui/server/TidaService;->sTesting:Z

    if-eqz v1, :cond_0

    .line 71
    invoke-direct {p0, v0, p1}, Lcom/miui/server/TidaService;->testContains(ILjava/lang/String;)Z

    move-result v1

    .line 73
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/miui/server/TidaService;->nativeContains(ILjava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public generateKeyPair(Ljava/lang/String;Ljava/lang/String;)Lmiui/security/KeyPairParcel;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "alg"    # Ljava/lang/String;

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 79
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Alias is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 81
    :cond_0
    if-nez p2, :cond_1

    .line 82
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Algorithm is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 86
    .local v1, "uid":I
    const/4 v0, 0x0

    .line 88
    .local v0, "kp":Ljava/security/KeyPair;
    sget-boolean v2, Lcom/miui/server/TidaService;->sTesting:Z

    if-eqz v2, :cond_2

    .line 89
    invoke-direct {p0, v1, p1, p2}, Lcom/miui/server/TidaService;->testGenerateKeyPair(ILjava/lang/String;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    .line 94
    :goto_0
    if-eqz v0, :cond_3

    .line 95
    new-instance v2, Lmiui/security/KeyPairParcel;

    invoke-direct {v2, v0}, Lmiui/security/KeyPairParcel;-><init>(Ljava/security/KeyPair;)V

    .line 97
    :goto_1
    return-object v2

    .line 91
    :cond_2
    invoke-direct {p0, v1, p1, p2}, Lcom/miui/server/TidaService;->nativeGenerateKeyPair(ILjava/lang/String;Ljava/lang/String;)Ljava/security/KeyPair;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public sign()[B
    .locals 1

    .prologue
    .line 102
    sget-boolean v0, Lcom/miui/server/TidaService;->sTesting:Z

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/miui/server/TidaService;->testSign()[B

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/miui/server/TidaService;->nativeSign()[B

    move-result-object v0

    goto :goto_0
.end method

.method public signInit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 122
    if-nez p1, :cond_0

    .line 123
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Alias is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :cond_0
    if-nez p2, :cond_1

    .line 126
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Algorithm is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 131
    .local v0, "uid":I
    sget-boolean v1, Lcom/miui/server/TidaService;->sTesting:Z

    if-eqz v1, :cond_2

    .line 132
    invoke-direct {p0, v0, p1, p2}, Lcom/miui/server/TidaService;->testSignInit(ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_2
    invoke-direct {p0, v0, p1, p2}, Lcom/miui/server/TidaService;->nativeSignInit(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public signUpdate(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 119
    :goto_0
    return-void

    .line 114
    :cond_0
    sget-boolean v0, Lcom/miui/server/TidaService;->sTesting:Z

    if-eqz v0, :cond_1

    .line 115
    invoke-direct {p0, p1}, Lcom/miui/server/TidaService;->testSignUpdate(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/server/TidaService;->nativeSignUpdate(Ljava/lang/String;)V

    goto :goto_0
.end method
