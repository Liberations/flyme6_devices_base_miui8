.class public Lmiui/securityspace/SecSpaceConstants;
.super Ljava/lang/Object;
.source "SecSpaceConstants.java"


# static fields
.field public static final GRAPHITE_APPS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final GRAPHITE_PACKAGE_AGENT:Ljava/lang/String; = "com.securespaces.android.agent"

.field public static final GRAPHITE_PACKAGE_SETTINGS:Ljava/lang/String; = "com.securespaces.android.settings"

.field public static final GRAPHITE_PACKAGE_SSCM:Ljava/lang/String; = "com.securespaces.android.sscm.service"

.field public static final GRAPHITE_PACKAGE_SSM:Ljava/lang/String; = "com.securespaces.android.ssm.service"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lmiui/securityspace/SecSpaceConstants;->GRAPHITE_APPS:Ljava/util/ArrayList;

    sget-object v0, Lmiui/securityspace/SecSpaceConstants;->GRAPHITE_APPS:Ljava/util/ArrayList;

    const-string v1, "com.securespaces.android.ssm.service"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/SecSpaceConstants;->GRAPHITE_APPS:Ljava/util/ArrayList;

    const-string v1, "com.securespaces.android.sscm.service"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/SecSpaceConstants;->GRAPHITE_APPS:Ljava/util/ArrayList;

    const-string v1, "com.securespaces.android.agent"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lmiui/securityspace/SecSpaceConstants;->GRAPHITE_APPS:Ljava/util/ArrayList;

    const-string v1, "com.securespaces.android.settings"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
