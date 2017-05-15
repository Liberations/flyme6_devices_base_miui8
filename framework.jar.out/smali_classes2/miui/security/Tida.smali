.class public Lmiui/security/Tida;
.super Ljava/lang/Object;
.source "Tida.java"


# static fields
.field static final DEBUG:Z = true


# instance fields
.field private final mService:Lmiui/security/ITidaService;


# direct methods
.method private constructor <init>(Lmiui/security/ITidaService;)V
    .locals 0
    .param p1, "tida"    # Lmiui/security/ITidaService;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiui/security/Tida;->mService:Lmiui/security/ITidaService;

    return-void
.end method

.method public static getInstance()Lmiui/security/Tida;
    .locals 2

    .prologue
    const-string v1, "miui.security.keystore"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lmiui/security/ITidaService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/security/ITidaService;

    move-result-object v0

    .local v0, "tida":Lmiui/security/ITidaService;
    new-instance v1, Lmiui/security/Tida;

    invoke-direct {v1, v0}, Lmiui/security/Tida;-><init>(Lmiui/security/ITidaService;)V

    return-object v1
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Lmiui/security/Tida;->mService:Lmiui/security/ITidaService;

    invoke-interface {v2, p1}, Lmiui/security/ITidaService;->contains(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public generateKeyPair(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyPair;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "alg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .local v2, "ret":Ljava/security/KeyPair;
    :try_start_0
    iget-object v3, p0, Lmiui/security/Tida;->mService:Lmiui/security/ITidaService;

    invoke-interface {v3, p1, p2}, Lmiui/security/ITidaService;->generateKeyPair(Ljava/lang/String;Ljava/lang/String;)Lmiui/security/KeyPairParcel;

    move-result-object v1

    .local v1, "kpp":Lmiui/security/KeyPairParcel;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmiui/security/KeyPairParcel;->getKeyPair()Ljava/security/KeyPair;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v1    # "kpp":Lmiui/security/KeyPairParcel;
    :cond_0
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public sign()[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":[B
    :try_start_0
    iget-object v2, p0, Lmiui/security/Tida;->mService:Lmiui/security/ITidaService;

    invoke-interface {v2}, Lmiui/security/ITidaService;->sign()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public signInit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "algorithm"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Lmiui/security/Tida;->mService:Lmiui/security/ITidaService;

    invoke-interface {v1, p1, p2}, Lmiui/security/ITidaService;->signInit(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public signUpdate([BII)V
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    .local v1, "msg":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lmiui/security/Tida;->mService:Lmiui/security/ITidaService;

    invoke-interface {v2, v1}, Lmiui/security/ITidaService;->signUpdate(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
