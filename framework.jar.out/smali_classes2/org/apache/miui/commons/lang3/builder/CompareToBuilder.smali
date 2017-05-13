.class public Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
.super Ljava/lang/Object;
.source "CompareToBuilder.java"

# interfaces
.implements Lorg/apache/miui/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/miui/commons/lang3/builder/Builder",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private comparison:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    .line 106
    return-void
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V
    .locals 6
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p3, "builder"    # Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .param p4, "useTransients"    # Z
    .param p5, "excludeFields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 314
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 315
    .local v2, "fields":[Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 316
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    iget v4, p3, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v4, :cond_2

    .line 317
    aget-object v1, v2, v3

    .line 318
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p5, v4}, Lorg/apache/miui/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    if-nez p4, :cond_0

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 323
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 324
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/InternalError;

    const-string v5, "Unexpected IllegalAccessException"

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 331
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_2
    return-void
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 136
    const/4 v0, 0x0

    new-array v1, v2, [Ljava/lang/String;

    invoke-static {p0, p1, v2, v0, v1}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)I
    .locals 1
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 201
    .local p2, "excludeFields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p2}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;Z)I
    .locals 2
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "compareTransients"    # Z

    .prologue
    .line 168
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .locals 6
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "compareTransients"    # Z
    .param p4, "excludeFields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Z",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 276
    .local p3, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne p0, p1, :cond_0

    .line 277
    const/4 v0, 0x0

    .line 292
    :goto_0
    return v0

    .line 279
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 280
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 282
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 283
    .local v2, "lhsClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 284
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    .line 286
    :cond_3
    new-instance v3, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    invoke-direct {v3}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;-><init>()V

    .local v3, "compareToBuilder":Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    .line 287
    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V

    .line 288
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eq v2, p3, :cond_4

    .line 289
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    .line 290
    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;Z[Ljava/lang/String;)V

    goto :goto_1

    .line 292
    :cond_4
    invoke-virtual {v3}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->toComparison()I

    move-result v0

    goto :goto_0
.end method

.method public static varargs reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)I
    .locals 2
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "excludeFields"    # [Ljava/lang/String;

    .prologue
    .line 234
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->reflectionCompare(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public append(BB)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # B
    .param p2, "rhs"    # B

    .prologue
    .line 528
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 532
    :goto_0
    return-object p0

    .line 531
    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(CC)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # C
    .param p2, "rhs"    # C

    .prologue
    .line 512
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 516
    :goto_0
    return-object p0

    .line 515
    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(DD)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # D
    .param p3, "rhs"    # D

    .prologue
    .line 549
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 553
    :goto_0
    return-object p0

    .line 552
    :cond_0
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0
.end method

.method public append(FF)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # F
    .param p2, "rhs"    # F

    .prologue
    .line 570
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 574
    :goto_0
    return-object p0

    .line 573
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0
.end method

.method public append(II)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # I
    .param p2, "rhs"    # I

    .prologue
    .line 480
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 484
    :goto_0
    return-object p0

    .line 483
    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(JJ)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # J
    .param p3, "rhs"    # J

    .prologue
    .line 464
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 468
    :goto_0
    return-object p0

    .line 467
    :cond_0
    cmp-long v0, p1, p3

    if-gez v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_1
    cmp-long v0, p1, p3

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 371
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .locals 3
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<*>;)",
            "Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;"
        }
    .end annotation

    .prologue
    .line 400
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    iget v2, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v2, :cond_1

    .line 451
    .end local p1    # "lhs":Ljava/lang/Object;
    .end local p2    # "rhs":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 403
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_1
    if-eq p1, p2, :cond_0

    .line 406
    if-nez p1, :cond_2

    .line 407
    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 410
    :cond_2
    if-nez p2, :cond_3

    .line 411
    const/4 v2, 0x1

    iput v2, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 414
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 418
    instance-of v2, p1, [J

    if-eqz v2, :cond_4

    .line 419
    check-cast p1, [J

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [J

    check-cast p2, [J

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([J[J)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto :goto_0

    .line 420
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_4
    instance-of v2, p1, [I

    if-eqz v2, :cond_5

    .line 421
    check-cast p1, [I

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [I

    check-cast p2, [I

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([I[I)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto :goto_0

    .line 422
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_5
    instance-of v2, p1, [S

    if-eqz v2, :cond_6

    .line 423
    check-cast p1, [S

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [S

    check-cast p2, [S

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([S[S)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto :goto_0

    .line 424
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_6
    instance-of v2, p1, [C

    if-eqz v2, :cond_7

    .line 425
    check-cast p1, [C

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [C

    check-cast p2, [C

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([C[C)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto :goto_0

    .line 426
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_7
    instance-of v2, p1, [B

    if-eqz v2, :cond_8

    .line 427
    check-cast p1, [B

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [B

    check-cast p2, [B

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([B[B)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto :goto_0

    .line 428
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_8
    instance-of v2, p1, [D

    if-eqz v2, :cond_9

    .line 429
    check-cast p1, [D

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [D

    check-cast p2, [D

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([D[D)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto :goto_0

    .line 430
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_9
    instance-of v2, p1, [F

    if-eqz v2, :cond_a

    .line 431
    check-cast p1, [F

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [F

    check-cast p2, [F

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([F[F)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto/16 :goto_0

    .line 432
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_a
    instance-of v2, p1, [Z

    if-eqz v2, :cond_b

    .line 433
    check-cast p1, [Z

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [Z

    check-cast p2, [Z

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([Z[Z)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto/16 :goto_0

    .line 437
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_b
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    goto/16 :goto_0

    .line 441
    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_c
    if-nez p3, :cond_d

    move-object v0, p1

    .line 443
    check-cast v0, Ljava/lang/Comparable;

    .line 444
    .local v0, "comparable":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto/16 :goto_0

    .line 447
    .end local v0    # "comparable":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    :cond_d
    move-object v1, p3

    .line 448
    .local v1, "comparator2":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Object;>;"
    invoke-interface {v1, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    iput v2, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto/16 :goto_0
.end method

.method public append(SS)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # S
    .param p2, "rhs"    # S

    .prologue
    .line 496
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 500
    :goto_0
    return-object p0

    .line 499
    :cond_0
    if-ge p1, p2, :cond_1

    const/4 v0, -0x1

    :goto_1
    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(ZZ)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # Z
    .param p2, "rhs"    # Z

    .prologue
    .line 586
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-object p0

    .line 589
    :cond_1
    if-eq p1, p2, :cond_0

    .line 592
    if-nez p1, :cond_2

    .line 593
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 595
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0
.end method

.method public append([B[B)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .locals 5
    .param p1, "lhs"    # [B
    .param p2, "rhs"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 849
    iget v3, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    .line 870
    :cond_0
    :goto_0
    return-object p0

    .line 852
    :cond_1
    if-eq p1, p2, :cond_0

    .line 855
    if-nez p1, :cond_2

    .line 856
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 859
    :cond_2
    if-nez p2, :cond_3

    .line 860
    iput v2, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 863
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    .line 864
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 867
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    .line 868
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(BB)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    .line 867
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([C[C)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .locals 5
    .param p1, "lhs"    # [C
    .param p2, "rhs"    # [C

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 809
    iget v3, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    .line 830
    :cond_0
    :goto_0
    return-object p0

    .line 812
    :cond_1
    if-eq p1, p2, :cond_0

    .line 815
    if-nez p1, :cond_2

    .line 816
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 819
    :cond_2
    if-nez p2, :cond_3

    .line 820
    iput v2, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 823
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    .line 824
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 827
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    .line 828
    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(CC)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    .line 827
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([D[D)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .locals 6
    .param p1, "lhs"    # [D
    .param p2, "rhs"    # [D

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 889
    iget v3, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    .line 910
    :cond_0
    :goto_0
    return-object p0

    .line 892
    :cond_1
    if-eq p1, p2, :cond_0

    .line 895
    if-nez p1, :cond_2

    .line 896
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 899
    :cond_2
    if-nez p2, :cond_3

    .line 900
    iput v2, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 903
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    .line 904
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 907
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    .line 908
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(DD)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    .line 907
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([F[F)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .locals 5
    .param p1, "lhs"    # [F
    .param p2, "rhs"    # [F

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 929
    iget v3, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    .line 950
    :cond_0
    :goto_0
    return-object p0

    .line 932
    :cond_1
    if-eq p1, p2, :cond_0

    .line 935
    if-nez p1, :cond_2

    .line 936
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 939
    :cond_2
    if-nez p2, :cond_3

    .line 940
    iput v2, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 943
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    .line 944
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 947
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    .line 948
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(FF)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    .line 947
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([I[I)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .locals 5
    .param p1, "lhs"    # [I
    .param p2, "rhs"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 729
    iget v3, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    .line 750
    :cond_0
    :goto_0
    return-object p0

    .line 732
    :cond_1
    if-eq p1, p2, :cond_0

    .line 735
    if-nez p1, :cond_2

    .line 736
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 739
    :cond_2
    if-nez p2, :cond_3

    .line 740
    iput v2, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 743
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    .line 744
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 747
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    .line 748
    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(II)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    .line 747
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([J[J)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .locals 6
    .param p1, "lhs"    # [J
    .param p2, "rhs"    # [J

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 689
    iget v3, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    .line 710
    :cond_0
    :goto_0
    return-object p0

    .line 692
    :cond_1
    if-eq p1, p2, :cond_0

    .line 695
    if-nez p1, :cond_2

    .line 696
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 699
    :cond_2
    if-nez p2, :cond_3

    .line 700
    iput v2, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 703
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    .line 704
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 707
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    .line 708
    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(JJ)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    .line 707
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .locals 1
    .param p1, "lhs"    # [Ljava/lang/Object;
    .param p2, "rhs"    # [Ljava/lang/Object;

    .prologue
    .line 622
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .locals 5
    .param p1, "lhs"    # [Ljava/lang/Object;
    .param p2, "rhs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Comparator",
            "<*>;)",
            "Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;"
        }
    .end annotation

    .prologue
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 649
    iget v3, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    .line 670
    :cond_0
    :goto_0
    return-object p0

    .line 652
    :cond_1
    if-eq p1, p2, :cond_0

    .line 655
    if-nez p1, :cond_2

    .line 656
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 659
    :cond_2
    if-nez p2, :cond_3

    .line 660
    iput v2, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 663
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    .line 664
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 667
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    .line 668
    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2, p3}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    .line 667
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([S[S)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .locals 5
    .param p1, "lhs"    # [S
    .param p2, "rhs"    # [S

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 769
    iget v3, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    .line 790
    :cond_0
    :goto_0
    return-object p0

    .line 772
    :cond_1
    if-eq p1, p2, :cond_0

    .line 775
    if-nez p1, :cond_2

    .line 776
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 779
    :cond_2
    if-nez p2, :cond_3

    .line 780
    iput v2, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 783
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    .line 784
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 787
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    .line 788
    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(SS)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    .line 787
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public append([Z[Z)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .locals 5
    .param p1, "lhs"    # [Z
    .param p2, "rhs"    # [Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 969
    iget v3, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v3, :cond_1

    .line 990
    :cond_0
    :goto_0
    return-object p0

    .line 972
    :cond_1
    if-eq p1, p2, :cond_0

    .line 975
    if-nez p1, :cond_2

    .line 976
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 979
    :cond_2
    if-nez p2, :cond_3

    .line 980
    iput v2, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    .line 983
    :cond_3
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_5

    .line 984
    array-length v3, p1

    array-length v4, p2

    if-ge v3, v4, :cond_4

    :goto_1
    iput v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    .line 987
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-nez v1, :cond_0

    .line 988
    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->append(ZZ)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;

    .line 987
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public appendSuper(I)Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;
    .locals 1
    .param p1, "superCompareTo"    # I

    .prologue
    .line 343
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    if-eqz v0, :cond_0

    .line 347
    :goto_0
    return-object p0

    .line 346
    :cond_0
    iput p1, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    goto :goto_0
.end method

.method public build()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1018
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->toComparison()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->build()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public toComparison()I
    .locals 1

    .prologue
    .line 1004
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/CompareToBuilder;->comparison:I

    return v0
.end method
