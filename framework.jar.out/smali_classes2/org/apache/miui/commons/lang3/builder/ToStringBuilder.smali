.class public Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
.super Ljava/lang/Object;
.source "ToStringBuilder.java"

# interfaces
.implements Lorg/apache/miui/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/miui/commons/lang3/builder/Builder",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile defaultStyle:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;


# instance fields
.field private final buffer:Ljava/lang/StringBuffer;

.field private final object:Ljava/lang/Object;

.field private final style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-object v0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->DEFAULT_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    sput-object v0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->defaultStyle:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "style"    # Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "style"    # Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
    .param p3, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getDefaultStyle()Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    move-result-object p2

    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Ljava/lang/StringBuffer;

    .end local p3    # "buffer":Ljava/lang/StringBuffer;
    const/16 v0, 0x200

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .restart local p3    # "buffer":Ljava/lang/StringBuffer;
    :cond_1
    iput-object p3, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    iput-object p2, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iput-object p1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->object:Ljava/lang/Object;

    invoke-virtual {p2, p3, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendStart(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-void
.end method

.method public static getDefaultStyle()Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
    .locals 1

    .prologue
    sget-object v0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->defaultStyle:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    .prologue
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;Z)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;ZLjava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p1, "style"    # Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
    .param p2, "outputTransients"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/apache/miui/commons/lang3/builder/ToStringStyle;",
            "Z",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "object":Ljava/lang/Object;, "TT;"
    .local p3, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;ZZLjava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultStyle(Lorg/apache/miui/commons/lang3/builder/ToStringStyle;)V
    .locals 2
    .param p0, "style"    # Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    .prologue
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The style must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sput-object p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->defaultStyle:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    return-void
.end method


# virtual methods
.method public append(B)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # B

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    return-object p0
.end method

.method public append(C)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # C

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    return-object p0
.end method

.method public append(D)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # D

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    return-object p0
.end method

.method public append(F)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # F

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    return-object p0
.end method

.method public append(I)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # I

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-object p0
.end method

.method public append(J)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # J

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;B)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # B

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    return-object p0
.end method

.method public append(Ljava/lang/String;C)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # C

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    return-object p0
.end method

.method public append(Ljava/lang/String;D)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    return-object p0
.end method

.method public append(Ljava/lang/String;F)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    return-object p0
.end method

.method public append(Ljava/lang/String;I)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    return-object p0
.end method

.method public append(Ljava/lang/String;J)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;Z)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "fullDetail"    # Z

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;S)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # S

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    return-object p0
.end method

.method public append(Ljava/lang/String;Z)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[B)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [B

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[BZ)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [B
    .param p3, "fullDetail"    # Z

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[C)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [C

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[CZ)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [C
    .param p3, "fullDetail"    # Z

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[D)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [D

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[DZ)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [D
    .param p3, "fullDetail"    # Z

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[F)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [F

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[FZ)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [F
    .param p3, "fullDetail"    # Z

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[I)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [I

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[IZ)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [I
    .param p3, "fullDetail"    # Z

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[J)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [J

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[JZ)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [J
    .param p3, "fullDetail"    # Z

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[Ljava/lang/Object;Z)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [Ljava/lang/Object;
    .param p3, "fullDetail"    # Z

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[S)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [S

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[SZ)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [S
    .param p3, "fullDetail"    # Z

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[Z)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [Z

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(Ljava/lang/String;[ZZ)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [Z
    .param p3, "fullDetail"    # Z

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append(S)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # S

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    return-object p0
.end method

.method public append(Z)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # Z

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public append([B)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [B

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([C)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [C

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([D)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [D

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([F)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [F

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([I)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [I

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([J)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [J

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method public append([S)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [S

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    return-object p0
.end method

.method public append([Z)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [Z

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    return-object p0
.end method

.method public appendAsObjectToString(Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/ObjectUtils;->identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    return-object p0
.end method

.method public appendSuper(Ljava/lang/String;)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 2
    .param p1, "superToString"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSuper(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public appendToString(Ljava/lang/String;)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 2
    .param p1, "toString"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public build()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getStringBuffer()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public getStyle()Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
    .locals 1

    .prologue
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getStyle()Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->getNullText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendEnd(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    goto :goto_0
.end method
