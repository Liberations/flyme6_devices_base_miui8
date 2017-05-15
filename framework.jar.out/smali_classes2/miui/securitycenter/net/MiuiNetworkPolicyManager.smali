.class public Lmiui/securitycenter/net/MiuiNetworkPolicyManager;
.super Ljava/lang/Object;
.source "MiuiNetworkPolicyManager.java"


# instance fields
.field private mPolicyService:Landroid/net/NetworkPolicyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v0

    iput-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkPolicyManager;->mPolicyService:Landroid/net/NetworkPolicyManager;

    return-void
.end method


# virtual methods
.method public getAppRestrictBackground(I)I
    .locals 2
    .param p1, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "policy":I
    iget-object v1, p0, Lmiui/securitycenter/net/MiuiNetworkPolicyManager;->mPolicyService:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1, p1}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v0

    return v0
.end method

.method public getRestrictBackground()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkPolicyManager;->mPolicyService:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    return v0
.end method

.method public isAppRestrictBackground(I)Z
    .locals 1
    .param p1, "uid"    # I

    .prologue
    iget-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkPolicyManager;->mPolicyService:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAppRestrictBackground(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "restrictBackground"    # Z

    .prologue
    iget-object v1, p0, Lmiui/securitycenter/net/MiuiNetworkPolicyManager;->mPolicyService:Landroid/net/NetworkPolicyManager;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p1, v0}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRestrictBackground(Z)V
    .locals 1
    .param p1, "restrictBackground"    # Z

    .prologue
    iget-object v0, p0, Lmiui/securitycenter/net/MiuiNetworkPolicyManager;->mPolicyService:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    return-void
.end method
