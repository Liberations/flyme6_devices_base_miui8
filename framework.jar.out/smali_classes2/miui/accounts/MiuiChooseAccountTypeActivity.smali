.class public Lmiui/accounts/MiuiChooseAccountTypeActivity;
.super Landroid/preference/PreferenceActivity;
.source "MiuiChooseAccountTypeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;,
        Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiChooseAccountType"


# instance fields
.field private mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeToAuthenticatorInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mTypeToAuthenticatorInfo:Ljava/util/HashMap;

    return-void
.end method

.method private hasXiaomiAccount()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const-string v3, "account"

    invoke-virtual {p0, v3}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManager;

    .local v1, "am":Landroid/accounts/AccountManager;
    const-string v3, "com.xiaomi"

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v3, v0

    if-lez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v3, "com.xiaomi.unactivated"

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v3, v0

    if-gtz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setResultAndFinish(Ljava/lang/String;)V
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "accountType"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->setResult(ILandroid/content/Intent;)V

    const-string v1, "MiuiChooseAccountType"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MiuiChooseAccountType"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChooseAccountTypeActivity.setResultAndFinish: selected account type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected buildTypeToAuthDescriptionMap()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    invoke-direct {p0}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->hasXiaomiAccount()Z

    move-result v5

    .local v5, "hasXiaomiAccount":Z
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    .local v0, "arr$":[Landroid/accounts/AuthenticatorDescription;
    array-length v8, v0

    .local v8, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v3, v0, v6

    .local v3, "desc":Landroid/accounts/AuthenticatorDescription;
    const/4 v9, 0x0

    .local v9, "name":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v11, v3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .local v1, "authContext":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v12, v3, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-static {v11}, Lmiui/content/res/IconCustomizer;->generateIconStyleDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v7

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v12, v3, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .local v10, "sequence":Ljava/lang/CharSequence;
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .end local v1    # "authContext":Landroid/content/Context;
    .end local v10    # "sequence":Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    const-string v11, "com.xiaomi.unactivated"

    iget-object v12, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "com.xiaomi"

    iget-object v12, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    if-nez v5, :cond_2

    :cond_1
    new-instance v2, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;

    invoke-direct {v2, v3, v9, v7}, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;-><init>(Landroid/accounts/AuthenticatorDescription;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .local v2, "authInfo":Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;
    iget-object v11, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mTypeToAuthenticatorInfo:Ljava/util/HashMap;

    iget-object v12, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v11, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v2    # "authInfo":Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v11, "MiuiChooseAccountType"

    invoke-static {v11, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "MiuiChooseAccountType"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No icon name for account type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v4

    .local v4, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v11, "MiuiChooseAccountType"

    invoke-static {v11, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "MiuiChooseAccountType"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No icon resource for account type "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v3    # "desc":Landroid/accounts/AuthenticatorDescription;
    .end local v4    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v7    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v9    # "name":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v12, 0x11050000

    invoke-virtual {p0, v12}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->addPreferencesFromResource(I)V

    const-string v12, "pref_add_account"

    invoke-virtual {p0, v12}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .local v7, "prefAddAccount":Landroid/preference/PreferenceCategory;
    const/4 v9, 0x0

    .local v9, "setOfAllowableAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v12

    const-string v13, "allowableAccountTypes"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .local v11, "validAccountTypes":[Ljava/lang/String;
    if-eqz v11, :cond_0

    new-instance v9, Ljava/util/HashSet;

    .end local v9    # "setOfAllowableAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v12, v11

    invoke-direct {v9, v12}, Ljava/util/HashSet;-><init>(I)V

    .restart local v9    # "setOfAllowableAccountTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v0, v11

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v10, v0, v4

    .local v10, "type":Ljava/lang/String;
    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    .end local v10    # "type":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->buildTypeToAuthDescriptionMap()V

    new-instance v12, Ljava/util/ArrayList;

    iget-object v13, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mTypeToAuthenticatorInfo:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v12, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    iget-object v12, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mTypeToAuthenticatorInfo:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .restart local v10    # "type":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;

    .local v5, "info":Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;
    if-eqz v9, :cond_2

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    :cond_2
    iget-object v12, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;>;"
    .end local v5    # "info":Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;
    .end local v10    # "type":Ljava/lang/String;
    :cond_3
    iget-object v12, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, "bundle":Landroid/os/Bundle;
    const-string v12, "errorMessage"

    const-string v13, "no allowable account types"

    invoke-virtual {v2, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, -0x1

    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v13, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->finish()V

    .end local v2    # "bundle":Landroid/os/Bundle;
    :cond_4
    :goto_2
    return-void

    :cond_5
    iget-object v12, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    iget-object v12, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;

    iget-object v12, v12, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    iget-object v12, v12, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-direct {p0, v12}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->setResultAndFinish(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v12, p0, Lmiui/accounts/MiuiChooseAccountTypeActivity;->mAuthenticatorInfosToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;

    .local v1, "authInfo":Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;
    new-instance v8, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;

    iget-object v12, v1, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;->desc:Landroid/accounts/AuthenticatorDescription;

    iget-object v12, v12, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v13, v1, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v14, v1, Lmiui/accounts/MiuiChooseAccountTypeActivity$AuthInfo;->name:Ljava/lang/String;

    invoke-direct {v8, p0, v12, v13, v14}, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    .local v8, "preference":Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;
    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;->setPersistent(Z)V

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    instance-of v2, p2, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;

    if-eqz v2, :cond_1

    move-object v0, p2

    check-cast v0, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;

    .local v0, "pref":Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;
    const-string v2, "MiuiChooseAccountType"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MiuiChooseAccountType"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempting to add account of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v1, p2

    check-cast v1, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;

    .local v1, "provider":Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;
    invoke-virtual {v1}, Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lmiui/accounts/MiuiChooseAccountTypeActivity;->setResultAndFinish(Ljava/lang/String;)V

    const/4 v2, 0x1

    .end local v0    # "pref":Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;
    .end local v1    # "provider":Lmiui/accounts/MiuiChooseAccountTypeActivity$ProviderPreference;
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto :goto_0
.end method
