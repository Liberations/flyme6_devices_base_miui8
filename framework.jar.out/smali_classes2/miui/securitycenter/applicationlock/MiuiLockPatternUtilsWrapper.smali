.class public Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;
.super Ljava/lang/Object;
.source "MiuiLockPatternUtilsWrapper.java"


# instance fields
.field private mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

.field private mSecurityManager:Lmiui/security/SecurityManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    invoke-direct {v0, p1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    const-string v0, "security"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/security/SecurityManager;

    iput-object v0, p0, Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;->mSecurityManager:Lmiui/security/SecurityManager;

    return-void
.end method


# virtual methods
.method public checkMiuiLockPattern(Ljava/lang/String;)Z
    .locals 1
    .param p1, "patternString"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {v0, p1}, Lmiui/security/SecurityManager;->checkAccessControlPattern(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public clearLockoutAttemptDeadline()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->clearLockoutAttemptDeadline()V

    return-void
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v0}, Landroid/security/MiuiLockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v0

    return v0
.end method

.method public saveMiuiLockPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "patternString"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {v0, p1}, Lmiui/security/SecurityManager;->setAccessControlPattern(Ljava/lang/String;)V

    return-void
.end method

.method public savedMiuiLockPatternExists()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/securitycenter/applicationlock/MiuiLockPatternUtilsWrapper;->mSecurityManager:Lmiui/security/SecurityManager;

    invoke-virtual {v0}, Lmiui/security/SecurityManager;->haveAccessControlPattern()Z

    move-result v0

    return v0
.end method
