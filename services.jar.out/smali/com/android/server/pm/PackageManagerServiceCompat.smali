.class public Lcom/android/server/pm/PackageManagerServiceCompat;
.super Ljava/lang/Object;
.source "PackageManagerServiceCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackageUid(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)I
    .locals 1
    .param p0, "service"    # Lcom/android/server/pm/PackageManagerService;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
