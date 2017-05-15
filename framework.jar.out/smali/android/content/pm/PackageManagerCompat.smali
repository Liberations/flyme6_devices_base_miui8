.class public Landroid/content/pm/PackageManagerCompat;
.super Ljava/lang/Object;
.source "PackageManagerCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstalledPackagesAsUser(Landroid/content/pm/PackageManager;II)Ljava/util/List;
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageUidAsUser(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I
    .locals 1
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
