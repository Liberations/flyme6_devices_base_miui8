.class Lcom/miui/server/WMServiceConnection$2;
.super Ljava/lang/Object;
.source "WMServiceConnection.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/WMServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/WMServiceConnection;


# direct methods
.method constructor <init>(Lcom/miui/server/WMServiceConnection;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/miui/server/WMServiceConnection$2;->this$0:Lcom/miui/server/WMServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/server/WMServiceConnection$2;->this$0:Lcom/miui/server/WMServiceConnection;

    # invokes: Lcom/miui/server/WMServiceConnection;->bindDelay()V
    invoke-static {v0}, Lcom/miui/server/WMServiceConnection;->access$400(Lcom/miui/server/WMServiceConnection;)V

    .line 119
    return-void
.end method
