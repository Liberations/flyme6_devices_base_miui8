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
    .line 95
    sget-object v0, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->DEFAULT_STYLE:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    sput-object v0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->defaultStyle:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 227
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    .line 228
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "style"    # Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;-><init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V

    .line 240
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;Ljava/lang/StringBuffer;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "style"    # Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
    .param p3, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    if-nez p2, :cond_0

    .line 255
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getDefaultStyle()Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    move-result-object p2

    .line 257
    :cond_0
    if-nez p3, :cond_1

    .line 258
    new-instance p3, Ljava/lang/StringBuffer;

    .end local p3    # "buffer":Ljava/lang/StringBuffer;
    const/16 v0, 0x200

    invoke-direct {p3, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 260
    .restart local p3    # "buffer":Ljava/lang/StringBuffer;
    :cond_1
    iput-object p3, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    .line 261
    iput-object p2, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    .line 262
    iput-object p1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->object:Ljava/lang/Object;

    .line 264
    invoke-virtual {p2, p3, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendStart(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 265
    return-void
.end method

.method public static getDefaultStyle()Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->defaultStyle:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 153
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static reflectionToString(Ljava/lang/Object;Lorg/apache/miui/commons/lang3/builder/ToStringStyle;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "style"    # Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    .prologue
    .line 166
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
    .line 180
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
    .line 201
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
    .line 137
    if-nez p0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The style must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    sput-object p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->defaultStyle:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    .line 141
    return-void
.end method


# virtual methods
.method public append(B)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # B

    .prologue
    .line 305
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    .line 306
    return-object p0
.end method

.method public append(C)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # C

    .prologue
    .line 333
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    .line 334
    return-object p0
.end method

.method public append(D)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 361
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    .line 362
    return-object p0
.end method

.method public append(F)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # F

    .prologue
    .line 389
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    .line 390
    return-object p0
.end method

.method public append(I)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 417
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 418
    return-object p0
.end method

.method public append(J)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # J

    .prologue
    .line 445
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    .line 446
    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 473
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 474
    return-object p0
.end method

.method public append(Ljava/lang/String;B)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # B

    .prologue
    .line 574
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;B)V

    .line 575
    return-object p0
.end method

.method public append(Ljava/lang/String;C)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # C

    .prologue
    .line 619
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;C)V

    .line 620
    return-object p0
.end method

.method public append(Ljava/lang/String;D)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 665
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;D)V

    .line 666
    return-object p0
.end method

.method public append(Ljava/lang/String;F)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 711
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;F)V

    .line 712
    return-object p0
.end method

.method public append(Ljava/lang/String;I)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 757
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;I)V

    .line 758
    return-object p0
.end method

.method public append(Ljava/lang/String;J)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 803
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;J)V

    .line 804
    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 849
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 850
    return-object p0
.end method

.method public append(Ljava/lang/String;Ljava/lang/Object;Z)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "fullDetail"    # Z

    .prologue
    .line 864
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 865
    return-object p0
.end method

.method public append(Ljava/lang/String;S)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # S

    .prologue
    .line 910
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    .line 911
    return-object p0
.end method

.method public append(Ljava/lang/String;Z)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 528
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 529
    return-object p0
.end method

.method public append(Ljava/lang/String;[B)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [B

    .prologue
    .line 586
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    .line 587
    return-object p0
.end method

.method public append(Ljava/lang/String;[BZ)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [B
    .param p3, "fullDetail"    # Z

    .prologue
    .line 606
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    .line 607
    return-object p0
.end method

.method public append(Ljava/lang/String;[C)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [C

    .prologue
    .line 632
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    .line 633
    return-object p0
.end method

.method public append(Ljava/lang/String;[CZ)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [C
    .param p3, "fullDetail"    # Z

    .prologue
    .line 652
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    .line 653
    return-object p0
.end method

.method public append(Ljava/lang/String;[D)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [D

    .prologue
    .line 678
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    .line 679
    return-object p0
.end method

.method public append(Ljava/lang/String;[DZ)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [D
    .param p3, "fullDetail"    # Z

    .prologue
    .line 698
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    .line 699
    return-object p0
.end method

.method public append(Ljava/lang/String;[F)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [F

    .prologue
    .line 724
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    .line 725
    return-object p0
.end method

.method public append(Ljava/lang/String;[FZ)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [F
    .param p3, "fullDetail"    # Z

    .prologue
    .line 744
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    .line 745
    return-object p0
.end method

.method public append(Ljava/lang/String;[I)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [I

    .prologue
    .line 770
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    .line 771
    return-object p0
.end method

.method public append(Ljava/lang/String;[IZ)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [I
    .param p3, "fullDetail"    # Z

    .prologue
    .line 790
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    .line 791
    return-object p0
.end method

.method public append(Ljava/lang/String;[J)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [J

    .prologue
    .line 816
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    .line 817
    return-object p0
.end method

.method public append(Ljava/lang/String;[JZ)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [J
    .param p3, "fullDetail"    # Z

    .prologue
    .line 836
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    .line 837
    return-object p0
.end method

.method public append(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [Ljava/lang/Object;

    .prologue
    .line 877
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 878
    return-object p0
.end method

.method public append(Ljava/lang/String;[Ljava/lang/Object;Z)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [Ljava/lang/Object;
    .param p3, "fullDetail"    # Z

    .prologue
    .line 897
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 898
    return-object p0
.end method

.method public append(Ljava/lang/String;[S)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [S

    .prologue
    .line 923
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    .line 924
    return-object p0
.end method

.method public append(Ljava/lang/String;[SZ)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [S
    .param p3, "fullDetail"    # Z

    .prologue
    .line 943
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    .line 944
    return-object p0
.end method

.method public append(Ljava/lang/String;[Z)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [Z

    .prologue
    .line 541
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    .line 542
    return-object p0
.end method

.method public append(Ljava/lang/String;[ZZ)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "array"    # [Z
    .param p3, "fullDetail"    # Z

    .prologue
    .line 561
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    .line 562
    return-object p0
.end method

.method public append(S)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # S

    .prologue
    .line 501
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;S)V

    .line 502
    return-object p0
.end method

.method public append(Z)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 277
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;Z)V

    .line 278
    return-object p0
.end method

.method public append([B)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [B

    .prologue
    const/4 v2, 0x0

    .line 319
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[BLjava/lang/Boolean;)V

    .line 320
    return-object p0
.end method

.method public append([C)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [C

    .prologue
    const/4 v2, 0x0

    .line 347
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[CLjava/lang/Boolean;)V

    .line 348
    return-object p0
.end method

.method public append([D)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [D

    .prologue
    const/4 v2, 0x0

    .line 375
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[DLjava/lang/Boolean;)V

    .line 376
    return-object p0
.end method

.method public append([F)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [F

    .prologue
    const/4 v2, 0x0

    .line 403
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[FLjava/lang/Boolean;)V

    .line 404
    return-object p0
.end method

.method public append([I)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [I

    .prologue
    const/4 v2, 0x0

    .line 431
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ILjava/lang/Boolean;)V

    .line 432
    return-object p0
.end method

.method public append([J)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [J

    .prologue
    const/4 v2, 0x0

    .line 459
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[JLjava/lang/Boolean;)V

    .line 460
    return-object p0
.end method

.method public append([Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 487
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Boolean;)V

    .line 488
    return-object p0
.end method

.method public append([S)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [S

    .prologue
    const/4 v2, 0x0

    .line 515
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[SLjava/lang/Boolean;)V

    .line 516
    return-object p0
.end method

.method public append([Z)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 3
    .param p1, "array"    # [Z

    .prologue
    const/4 v2, 0x0

    .line 291
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, v2, p1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->append(Ljava/lang/StringBuffer;Ljava/lang/String;[ZLjava/lang/Boolean;)V

    .line 292
    return-object p0
.end method

.method public appendAsObjectToString(Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 957
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/miui/commons/lang3/ObjectUtils;->identityToString(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    .line 958
    return-object p0
.end method

.method public appendSuper(Ljava/lang/String;)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 2
    .param p1, "superToString"    # Ljava/lang/String;

    .prologue
    .line 976
    if-eqz p1, :cond_0

    .line 977
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendSuper(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 979
    :cond_0
    return-object p0
.end method

.method public appendToString(Ljava/lang/String;)Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;
    .locals 2
    .param p1, "toString"    # Ljava/lang/String;

    .prologue
    .line 1010
    if-eqz p1, :cond_0

    .line 1011
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    iget-object v1, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1, p1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendToString(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 1013
    :cond_0
    return-object p0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public build()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1078
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getStringBuffer()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 1032
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->buffer:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public getStyle()Lorg/apache/miui/commons/lang3/builder/ToStringStyle;
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1059
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1060
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getStyle()Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->getNullText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1064
    :goto_0
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1062
    :cond_0
    iget-object v0, p0, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->style:Lorg/apache/miui/commons/lang3/builder/ToStringStyle;

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getStringBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/ToStringBuilder;->getObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/ToStringStyle;->appendEnd(Ljava/lang/StringBuffer;Ljava/lang/Object;)V

    goto :goto_0
.end method
