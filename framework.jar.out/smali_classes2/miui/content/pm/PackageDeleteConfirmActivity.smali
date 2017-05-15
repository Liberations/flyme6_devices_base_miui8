.class public Lmiui/content/pm/PackageDeleteConfirmActivity;
.super Landroid/app/Activity;
.source "PackageDeleteConfirmActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DELETE_MSG_NEXT_STEP_INTERVAL:I = 0x3e8

.field private static final DELETE_MSG_NEXT_STEP_WHAT:I = 0x64

.field public static final EXTRA_PKGNAME:Ljava/lang/String; = "extra_pkgname"

.field private static final MAX_STEPS:I = 0x3


# instance fields
.field private delete:Z

.field private mAppLabel:Ljava/lang/CharSequence;

.field private mAutoNextStepTime:I

.field private mCancelButton:Landroid/widget/Button;

.field private mCurrentStep:I

.field private mDeleteButton:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mObs:Lmiui/content/pm/IPackageDeleteConfirmObserver;

.field private mPkgName:Ljava/lang/String;

.field private mWarningInfoView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    const/4 v0, 0x5

    iput v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->delete:Z

    new-instance v0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;

    invoke-direct {v0, p0}, Lmiui/content/pm/PackageDeleteConfirmActivity$1;-><init>(Lmiui/content/pm/PackageDeleteConfirmActivity;)V

    iput-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lmiui/content/pm/PackageDeleteConfirmActivity;)I
    .locals 1
    .param p0, "x0"    # Lmiui/content/pm/PackageDeleteConfirmActivity;

    .prologue
    iget v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I

    return v0
.end method

.method static synthetic access$006(Lmiui/content/pm/PackageDeleteConfirmActivity;)I
    .locals 1
    .param p0, "x0"    # Lmiui/content/pm/PackageDeleteConfirmActivity;

    .prologue
    iget v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I

    return v0
.end method

.method static synthetic access$100(Lmiui/content/pm/PackageDeleteConfirmActivity;)I
    .locals 1
    .param p0, "x0"    # Lmiui/content/pm/PackageDeleteConfirmActivity;

    .prologue
    iget v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    return v0
.end method

.method static synthetic access$200(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lmiui/content/pm/PackageDeleteConfirmActivity;

    .prologue
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lmiui/content/pm/PackageDeleteConfirmActivity;

    .prologue
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getWarningInfo(ILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p1, "step"    # I
    .param p2, "appLabel"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const v0, 0x110700dc

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v0, 0x110700dd

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v0, 0x110700de

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private loadAppLabel()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    invoke-virtual {p0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mPkgName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    iget-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mPkgName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x1

    const/16 v5, 0x64

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v4, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->delete:Z

    invoke-virtual {p0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->finish()V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v3, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->delete:Z

    invoke-virtual {p0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->finish()V

    goto :goto_0

    :cond_0
    iget v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    const/4 v0, 0x5

    iput v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mWarningInfoView:Landroid/widget/TextView;

    iget v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    iget-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAppLabel:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getWarningInfo(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    const v1, 0x110700db

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    const v1, 0x110700d9

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x110b0013
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x11030001

    invoke-virtual {p0, v2}, Lmiui/content/pm/PackageDeleteConfirmActivity;->setContentView(I)V

    invoke-virtual {p0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    const-string v2, "extra_pkgname"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mPkgName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mPkgName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->finish()V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mPkgName:Ljava/lang/String;

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v2, "observer"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v2}, Lmiui/content/pm/IPackageDeleteConfirmObserver$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/content/pm/IPackageDeleteConfirmObserver;

    move-result-object v2

    iput-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mObs:Lmiui/content/pm/IPackageDeleteConfirmObserver;

    invoke-direct {p0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->loadAppLabel()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAppLabel:Ljava/lang/CharSequence;

    const v2, 0x110b0012

    invoke-virtual {p0, v2}, Lmiui/content/pm/PackageDeleteConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mWarningInfoView:Landroid/widget/TextView;

    const v2, 0x110b0013

    invoke-virtual {p0, v2}, Lmiui/content/pm/PackageDeleteConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCancelButton:Landroid/widget/Button;

    iget-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x110b0014

    invoke-virtual {p0, v2}, Lmiui/content/pm/PackageDeleteConfirmActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    iget-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mWarningInfoView:Landroid/widget/TextView;

    iget v3, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I

    iget-object v4, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAppLabel:Ljava/lang/CharSequence;

    invoke-direct {p0, v3, v4}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getWarningInfo(ILjava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    const v3, 0x110700d9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method public onStop()V
    .locals 3

    .prologue
    iget-object v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :try_start_0
    iget-object v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->mObs:Lmiui/content/pm/IPackageDeleteConfirmObserver;

    iget-boolean v2, p0, Lmiui/content/pm/PackageDeleteConfirmActivity;->delete:Z

    invoke-interface {v1, v2}, Lmiui/content/pm/IPackageDeleteConfirmObserver;->onConfirm(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-virtual {p0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->finish()V

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
