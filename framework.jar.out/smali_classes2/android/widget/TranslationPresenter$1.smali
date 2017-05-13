.class Landroid/widget/TranslationPresenter$1;
.super Ljava/lang/Object;
.source "TranslationPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TranslationPresenter;->updatePanel(Lcom/miui/translationservice/provider/TranslationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TranslationPresenter;

.field final synthetic val$detailLink:Ljava/lang/String;

.field final synthetic val$result:Lcom/miui/translationservice/provider/TranslationResult;


# direct methods
.method constructor <init>(Landroid/widget/TranslationPresenter;Ljava/lang/String;Lcom/miui/translationservice/provider/TranslationResult;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Landroid/widget/TranslationPresenter$1;->this$0:Landroid/widget/TranslationPresenter;

    iput-object p2, p0, Landroid/widget/TranslationPresenter$1;->val$detailLink:Ljava/lang/String;

    iput-object p3, p0, Landroid/widget/TranslationPresenter$1;->val$result:Lcom/miui/translationservice/provider/TranslationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 177
    iget-object v2, p0, Landroid/widget/TranslationPresenter$1;->val$detailLink:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/widget/TranslationPresenter$1;->val$result:Lcom/miui/translationservice/provider/TranslationResult;

    invoke-virtual {v5}, Lcom/miui/translationservice/provider/TranslationResult;->getWordName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "link":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 179
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/widget/TranslationPresenter$1;->this$0:Landroid/widget/TranslationPresenter;

    # getter for: Landroid/widget/TranslationPresenter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/widget/TranslationPresenter;->access$000(Landroid/widget/TranslationPresenter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 180
    return-void
.end method
