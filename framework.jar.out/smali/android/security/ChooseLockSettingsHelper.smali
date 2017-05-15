.class public final Landroid/security/ChooseLockSettingsHelper;
.super Ljava/lang/Object;
.source "ChooseLockSettingsHelper.java"


# static fields
.field public static final BG_COLOR:Ljava/lang/String; = "com.android.settings.bgColor"

.field public static final DISABLE_ACCESS_CONTROL:I = 0x1

.field public static final DISABLE_AC_FOR_PRIVACY_MODE:I = 0x3

.field public static final DISABLE_PRIVACY_MODE:I = 0x4

.field public static final ENABLE_AC_FOR_PRIVACY_MODE:I = 0x2

.field public static final EXTRA_CONFIRM_PURPOSE:Ljava/lang/String; = "confirm_purpose"

.field public static final EXTRA_KEY_PASSWORD:Ljava/lang/String; = "password"

.field public static final FOOTER_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmLockPattern.footer"

.field public static final FOOTER_TEXT_COLOR:Ljava/lang/String; = "com.android.settings.footerTextColor"

.field public static final FOOTER_WRONG_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmLockPattern.footer_wrong"

.field public static final FORGET_PATTERN_COLOR:Ljava/lang/String; = "com.android.settings.forgetPatternColor"

.field public static final HEADER_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmLockPattern.header"

.field public static final HEADER_WRONG_TEXT:Ljava/lang/String; = "com.android.settings.ConfirmLockPattern.header_wrong"

.field public static final LOCK_BTN_WHITE:Ljava/lang/String; = "com.android.settings.lockBtnWhite"

.field public static final LOCK_SETTINGS_TYPE_AC:I = 0x0

.field public static final LOCK_SETTINGS_TYPE_GALLERY:I = 0x2

.field public static final LOCK_SETTINGS_TYPE_SMS:I = 0x1

.field private static final NO_REQUEST_FOR_ACTIVITY_RESULT:I = -0x400

.field public static final SHOW_FORGET_PASSWORD:Ljava/lang/String; = "com.android.settings.forgetPassword"

.field public static final TITLE_COLOR:Ljava/lang/String; = "com.android.settings.titleColor"

.field public static final USERID_TO_CONFIRM_PASSWORD:Ljava/lang/String; = "com.android.settings.userIdToConfirm"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mFragment:Landroid/app/Fragment;

.field private mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    invoke-direct {p0, p1}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/security/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "type"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    invoke-direct {p0, p1}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Landroid/security/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/security/MiuiLockPatternUtils;

    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    return-void
.end method

.method private confirmPassword(I)Z
    .locals 3
    .param p1, "request"    # I

    .prologue
    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget-object v2, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v2}, Landroid/security/MiuiLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/security/MiuiLockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ConfirmLockPassword"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, -0x400

    if-ne p1, v1, :cond_1

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method private confirmPattern(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "request"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "details"    # Ljava/lang/CharSequence;

    .prologue
    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget-object v2, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v2}, Landroid/security/MiuiLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/security/MiuiLockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v1}, Landroid/security/MiuiLockPatternUtils;->savedPatternExists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v1, "com.android.settings.ConfirmLockPattern.footer"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.ConfirmLockPattern"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, -0x400

    if-ne p1, v1, :cond_2

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v1, v0, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method


# virtual methods
.method public isACLockEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "access_control_lock_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v2}, Landroid/security/MiuiLockPatternUtils;->savedMiuiLockPatternExists()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isPasswordForPrivacyModeEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "password_for_privacymode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isPrivacyModeEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "privacy_mode_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isPrivacyPasswordEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "privacy_password_is_open"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isPrivateGalleryEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "private_gallery_lock_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v2}, Landroid/security/MiuiLockPatternUtils;->savedMiuiLockPatternExists()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isPrivateSmsEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "private_sms_lock_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v2}, Landroid/security/MiuiLockPatternUtils;->savedMiuiLockPatternExists()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "request"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "details"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .local v0, "launched":Z
    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget-object v2, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v2}, Landroid/security/MiuiLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/security/MiuiLockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-direct {p0, p1, p2, p3}, Landroid/security/ChooseLockSettingsHelper;->confirmPattern(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1}, Landroid/security/ChooseLockSettingsHelper;->confirmPassword(I)Z

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method public launchConfirmationActivity(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 4
    .param p1, "message"    # Ljava/lang/CharSequence;
    .param p2, "details"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v3, -0x400

    const/4 v0, 0x0

    .local v0, "launched":Z
    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget-object v2, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v2}, Landroid/security/MiuiLockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/security/MiuiLockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_1
    move v1, v0

    goto :goto_0

    :sswitch_0
    invoke-direct {p0, v3, p1, p2}, Landroid/security/ChooseLockSettingsHelper;->confirmPattern(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_1

    :sswitch_1
    invoke-direct {p0, v3}, Landroid/security/ChooseLockSettingsHelper;->confirmPassword(I)Z

    move-result v0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method public setACLockEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_lock_enabled"

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/security/MiuiLockPatternUtils;->saveMiuiLockPattern(Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPasswordForPrivacyModeEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "password_for_privacymode"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPrivacyModeEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "privacy_mode_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPrivacyPasswordEnable(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/security/ChooseLockSettingsHelper;->setPrivacyPasswordEnabledAsUser(ZI)V

    return-void
.end method

.method public setPrivacyPasswordEnabledAsUser(ZI)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "privacy_password_is_open"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPrivateGalleryEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/security/ChooseLockSettingsHelper;->setPrivateGalleryEnabledAsUser(ZI)V

    return-void
.end method

.method public setPrivateGalleryEnabledAsUser(ZI)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "private_gallery_lock_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPrivateSmsEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/security/ChooseLockSettingsHelper;->setPrivateSmsEnabledAsUser(ZI)V

    return-void
.end method

.method public setPrivateSmsEnabledAsUser(ZI)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "private_sms_lock_enabled"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public utils()Landroid/security/MiuiLockPatternUtils;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/security/ChooseLockSettingsHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    return-object v0
.end method
