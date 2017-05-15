.class Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;
.super Ljava/lang/Object;
.source "PackageDexOptimizerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageDexOptimizerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppDexoptInfo"
.end annotation


# instance fields
.field observer:Lmiui/os/IMiuiDexoptObserver;

.field packageName:Ljava/lang/String;

.field returnCode:I

.field final synthetic this$0:Lcom/android/server/pm/PackageDexOptimizerManager;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageDexOptimizerManager;Ljava/lang/String;Lmiui/os/IMiuiDexoptObserver;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "obs"    # Lmiui/os/IMiuiDexoptObserver;

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->this$0:Lcom/android/server/pm/PackageDexOptimizerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->observer:Lmiui/os/IMiuiDexoptObserver;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/pm/PackageDexOptimizerManager$AppDexoptInfo;->returnCode:I

    return-void
.end method
