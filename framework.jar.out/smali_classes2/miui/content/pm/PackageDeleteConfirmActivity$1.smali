.class Lmiui/content/pm/PackageDeleteConfirmActivity$1;
.super Landroid/os/Handler;
.source "PackageDeleteConfirmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/content/pm/PackageDeleteConfirmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;


# direct methods
.method constructor <init>(Lmiui/content/pm/PackageDeleteConfirmActivity;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x64

    const/4 v1, 0x3

    const/4 v5, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    # --operator for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I
    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$006(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    # getter for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I
    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$100(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    # getter for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I
    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$000(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    # getter for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;
    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$200(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x110700d8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    # getter for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;
    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$200(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    # getter for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I
    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$000(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    # getter for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;
    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$200(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x110700da

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    # getter for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;
    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$200(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    # getter for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mCurrentStep:I
    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$100(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    # getter for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;
    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$200(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    const v2, 0x110700db

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    # getter for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I
    invoke-static {v4}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$000(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    # getter for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$300(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    # getter for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$300(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    # getter for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mDeleteButton:Landroid/widget/Button;
    invoke-static {v0}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$200(Lmiui/content/pm/PackageDeleteConfirmActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    const v2, 0x110700d9

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lmiui/content/pm/PackageDeleteConfirmActivity$1;->this$0:Lmiui/content/pm/PackageDeleteConfirmActivity;

    # getter for: Lmiui/content/pm/PackageDeleteConfirmActivity;->mAutoNextStepTime:I
    invoke-static {v4}, Lmiui/content/pm/PackageDeleteConfirmActivity;->access$000(Lmiui/content/pm/PackageDeleteConfirmActivity;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lmiui/content/pm/PackageDeleteConfirmActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
