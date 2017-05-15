.class Landroid/widget/Editor$ActionPopupWindow$1;
.super Landroid/os/Handler;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$ActionPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$ActionPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/Editor$ActionPopupWindow;)V
    .locals 0

    .prologue
    iput-object p1, p0, Landroid/widget/Editor$ActionPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    const-string v1, "Editor"

    const-string v2, "Unrecognised message received."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Editor$ActionPopupWindow;->setContentAreaAsTouchableSurface(Z)V

    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/miui/translationservice/provider/TranslationResult;

    .local v0, "result":Lcom/miui/translationservice/provider/TranslationResult;
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    # getter for: Landroid/widget/Editor$ActionPopupWindow;->mTranslationPresenter:Landroid/widget/TranslationPresenter;
    invoke-static {v1}, Landroid/widget/Editor$ActionPopupWindow;->access$3100(Landroid/widget/Editor$ActionPopupWindow;)Landroid/widget/TranslationPresenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TranslationPresenter;->updatePanel(Lcom/miui/translationservice/provider/TranslationResult;)V

    goto :goto_0

    .end local v0    # "result":Lcom/miui/translationservice/provider/TranslationResult;
    :pswitch_1
    iget-object v1, p0, Landroid/widget/Editor$ActionPopupWindow$1;->this$1:Landroid/widget/Editor$ActionPopupWindow;

    # getter for: Landroid/widget/Editor$ActionPopupWindow;->mTranslationPresenter:Landroid/widget/TranslationPresenter;
    invoke-static {v1}, Landroid/widget/Editor$ActionPopupWindow;->access$3100(Landroid/widget/Editor$ActionPopupWindow;)Landroid/widget/TranslationPresenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TranslationPresenter;->updatePanel(Lcom/miui/translationservice/provider/TranslationResult;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
