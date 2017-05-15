.class public Landroid/service/securespaces/SecureSpacesService$UserRestriction;
.super Ljava/lang/Object;
.source "SecureSpacesService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/securespaces/SecureSpacesService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserRestriction"
.end annotation


# instance fields
.field public deviceOwnerOnly:Z

.field public name:Ljava/lang/String;

.field final synthetic this$0:Landroid/service/securespaces/SecureSpacesService;


# direct methods
.method public constructor <init>(Landroid/service/securespaces/SecureSpacesService;Ljava/lang/String;Z)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "deviceOwnerOnly"    # Z

    .prologue
    iput-object p1, p0, Landroid/service/securespaces/SecureSpacesService$UserRestriction;->this$0:Landroid/service/securespaces/SecureSpacesService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/service/securespaces/SecureSpacesService$UserRestriction;->name:Ljava/lang/String;

    iput-boolean p3, p0, Landroid/service/securespaces/SecureSpacesService$UserRestriction;->deviceOwnerOnly:Z

    return-void
.end method
