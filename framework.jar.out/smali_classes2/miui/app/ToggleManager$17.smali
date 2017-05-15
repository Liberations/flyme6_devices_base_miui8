.class Lmiui/app/ToggleManager$17;
.super Ljava/lang/Object;
.source "ToggleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/ToggleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/ToggleManager;


# direct methods
.method constructor <init>(Lmiui/app/ToggleManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lmiui/app/ToggleManager$17;->this$0:Lmiui/app/ToggleManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/app/ToggleManager$17;->this$0:Lmiui/app/ToggleManager;

    # invokes: Lmiui/app/ToggleManager;->updateSyncToggle()V
    invoke-static {v0}, Lmiui/app/ToggleManager;->access$2000(Lmiui/app/ToggleManager;)V

    return-void
.end method
