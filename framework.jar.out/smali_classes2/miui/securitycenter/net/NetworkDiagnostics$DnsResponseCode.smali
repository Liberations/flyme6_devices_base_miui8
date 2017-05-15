.class public final enum Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;
.super Ljava/lang/Enum;
.source "NetworkDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/securitycenter/net/NetworkDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DnsResponseCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

.field public static final enum FORMERR:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

.field public static final enum NOERROR:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

.field public static final enum NOTIMP:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

.field public static final enum NXDOMAIN:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

.field public static final enum REFUSED:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

.field public static final enum SERVFAIL:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    const-string v1, "NOERROR"

    invoke-direct {v0, v1, v3}, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;->NOERROR:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    new-instance v0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    const-string v1, "FORMERR"

    invoke-direct {v0, v1, v4}, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;->FORMERR:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    new-instance v0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    const-string v1, "SERVFAIL"

    invoke-direct {v0, v1, v5}, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;->SERVFAIL:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    new-instance v0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    const-string v1, "NXDOMAIN"

    invoke-direct {v0, v1, v6}, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;->NXDOMAIN:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    new-instance v0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    const-string v1, "NOTIMP"

    invoke-direct {v0, v1, v7}, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;->NOTIMP:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    new-instance v0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    const-string v1, "REFUSED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;->REFUSED:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    const/4 v0, 0x6

    new-array v0, v0, [Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    sget-object v1, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;->NOERROR:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    aput-object v1, v0, v3

    sget-object v1, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;->FORMERR:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    aput-object v1, v0, v4

    sget-object v1, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;->SERVFAIL:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    aput-object v1, v0, v5

    sget-object v1, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;->NXDOMAIN:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    aput-object v1, v0, v6

    sget-object v1, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;->NOTIMP:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;->REFUSED:Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    aput-object v2, v0, v1

    sput-object v0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;->$VALUES:[Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    return-object v0
.end method

.method public static values()[Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;
    .locals 1

    .prologue
    sget-object v0, Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;->$VALUES:[Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    invoke-virtual {v0}, [Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmiui/securitycenter/net/NetworkDiagnostics$DnsResponseCode;

    return-object v0
.end method
