.class public Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
.super Ljava/lang/Object;
.source "HashCodeBuilder.java"

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


# static fields
.field private static final REGISTRY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final iConstant:I

.field private iTotal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 518
    const/16 v0, 0x25

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    .line 519
    const/16 v0, 0x11

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 520
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "initialNonZeroOddNumber"    # I
    .param p2, "multiplierNonZeroOddNumber"    # I

    .prologue
    .line 539
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 540
    if-nez p1, :cond_0

    .line 541
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HashCodeBuilder requires a non zero initial value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_0
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_1

    .line 544
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HashCodeBuilder requires an odd initial value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_1
    if-nez p2, :cond_2

    .line 547
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HashCodeBuilder requires a non zero multiplier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :cond_2
    rem-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_3

    .line 550
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HashCodeBuilder requires an odd multiplier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_3
    iput p2, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    .line 553
    iput p1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 554
    return-void
.end method

.method static getRegistry()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    sget-object v0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static isRegistered(Ljava/lang/Object;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 152
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 153
    .local v0, "registry":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/miui/commons/lang3/builder/IDKey;>;"
    if-eqz v0, :cond_0

    new-instance v1, Lorg/apache/miui/commons/lang3/builder/IDKey;

    invoke-direct {v1, p0}, Lorg/apache/miui/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;Z[Ljava/lang/String;)V
    .locals 9
    .param p0, "object"    # Ljava/lang/Object;
    .param p2, "builder"    # Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .param p3, "useTransients"    # Z
    .param p4, "excludeFields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 174
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->isRegistered(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 199
    :goto_0
    return-void

    .line 178
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->register(Ljava/lang/Object;)V

    .line 179
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 180
    .local v4, "fields":[Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-static {v4, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    .line 181
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v2, v0, v5

    .line 182
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {p4, v7}, Lorg/apache/miui/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x24

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    if-nez p3, :cond_1

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    .line 187
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 188
    .local v3, "fieldValue":Ljava/lang/Object;
    invoke-virtual {p2, v3}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    .end local v3    # "fieldValue":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 189
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Ljava/lang/IllegalAccessException;
    :try_start_2
    new-instance v7, Ljava/lang/InternalError;

    const-string v8, "Unexpected IllegalAccessException"

    invoke-direct {v7, v8}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 197
    .end local v0    # "arr$":[Ljava/lang/reflect/Field;
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "fields":[Ljava/lang/reflect/Field;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :catchall_0
    move-exception v7

    invoke-static {p0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->unregister(Ljava/lang/Object;)V

    throw v7

    .restart local v0    # "arr$":[Ljava/lang/reflect/Field;
    .restart local v4    # "fields":[Ljava/lang/reflect/Field;
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    :cond_3
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->unregister(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static reflectionHashCode(IILjava/lang/Object;)I
    .locals 6
    .param p0, "initialNonZeroOddNumber"    # I
    .param p1, "multiplierNonZeroOddNumber"    # I
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 239
    const/4 v4, 0x0

    new-array v5, v3, [Ljava/lang/String;

    move v0, p0

    move v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionHashCode(IILjava/lang/Object;Z)I
    .locals 6
    .param p0, "initialNonZeroOddNumber"    # I
    .param p1, "multiplierNonZeroOddNumber"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "testTransients"    # Z

    .prologue
    .line 283
    const/4 v4, 0x0

    const/4 v0, 0x0

    new-array v5, v0, [Ljava/lang/String;

    move v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I
    .locals 4
    .param p0, "initialNonZeroOddNumber"    # I
    .param p1, "multiplierNonZeroOddNumber"    # I
    .param p3, "testTransients"    # Z
    .param p5, "excludeFields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IITT;Z",
            "Ljava/lang/Class",
            "<-TT;>;[",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 336
    .local p2, "object":Ljava/lang/Object;, "TT;"
    .local p4, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    if-nez p2, :cond_0

    .line 337
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The object to build a hash code for must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 339
    :cond_0
    new-instance v0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0, p0, p1}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;-><init>(II)V

    .line 340
    .local v0, "builder":Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 341
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p2, v1, v0, p3, p5}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;Z[Ljava/lang/String;)V

    .line 342
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eq v1, p4, :cond_1

    .line 343
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 344
    invoke-static {p2, v1, v0, p3, p5}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;Z[Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v2

    return v2
.end method

.method public static reflectionHashCode(Ljava/lang/Object;Ljava/util/Collection;)I
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 418
    .local p1, "excludeFields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static reflectionHashCode(Ljava/lang/Object;Z)I
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "testTransients"    # Z

    .prologue
    .line 382
    const/16 v0, 0x11

    const/16 v1, 0x25

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/String;

    move-object v2, p0

    move v3, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static varargs reflectionHashCode(Ljava/lang/Object;[Ljava/lang/String;)I
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "excludeFields"    # [Ljava/lang/String;

    .prologue
    .line 456
    const/16 v0, 0x11

    const/16 v1, 0x25

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->reflectionHashCode(IILjava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static register(Ljava/lang/Object;)V
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 468
    const-class v1, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    monitor-enter v1

    .line 469
    :try_start_0
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    .line 470
    sget-object v0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 472
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lorg/apache/miui/commons/lang3/builder/IDKey;

    invoke-direct {v1, p0}, Lorg/apache/miui/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 474
    return-void

    .line 472
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static unregister(Ljava/lang/Object;)V
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 489
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 490
    .local v0, "registry":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/miui/commons/lang3/builder/IDKey;>;"
    if-eqz v0, :cond_1

    .line 491
    new-instance v1, Lorg/apache/miui/commons/lang3/builder/IDKey;

    invoke-direct {v1, p0}, Lorg/apache/miui/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 492
    const-class v2, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    monitor-enter v2

    .line 494
    :try_start_0
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v0

    .line 495
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 496
    sget-object v1, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 498
    :cond_0
    monitor-exit v2

    .line 500
    :cond_1
    return-void

    .line 498
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public append(B)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # B

    .prologue
    .line 614
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 615
    return-object p0
.end method

.method public append(C)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # C

    .prologue
    .line 650
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 651
    return-object p0
.end method

.method public append(D)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 684
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(J)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    return-object v0
.end method

.method public append(F)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 717
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 718
    return-object p0
.end method

.method public append(I)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 751
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 752
    return-object p0
.end method

.method public append(J)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .locals 5
    .param p1, "value"    # J

    .prologue
    .line 789
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    const/16 v1, 0x20

    shr-long v2, p1, v1

    xor-long/2addr v2, p1

    long-to-int v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 790
    return-object p0
.end method

.method public append(Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 823
    if-nez p1, :cond_0

    .line 824
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 854
    .end local p1    # "object":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 827
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 830
    instance-of v0, p1, [J

    if-eqz v0, :cond_1

    .line 831
    check-cast p1, [J

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [J

    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append([J)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 832
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, [I

    if-eqz v0, :cond_2

    .line 833
    check-cast p1, [I

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [I

    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append([I)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 834
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, [S

    if-eqz v0, :cond_3

    .line 835
    check-cast p1, [S

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [S

    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append([S)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 836
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_3
    instance-of v0, p1, [C

    if-eqz v0, :cond_4

    .line 837
    check-cast p1, [C

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [C

    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append([C)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 838
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, [B

    if-eqz v0, :cond_5

    .line 839
    check-cast p1, [B

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append([B)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 840
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_5
    instance-of v0, p1, [D

    if-eqz v0, :cond_6

    .line 841
    check-cast p1, [D

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [D

    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append([D)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 842
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_6
    instance-of v0, p1, [F

    if-eqz v0, :cond_7

    .line 843
    check-cast p1, [F

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [F

    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append([F)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 844
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_7
    instance-of v0, p1, [Z

    if-eqz v0, :cond_8

    .line 845
    check-cast p1, [Z

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [Z

    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append([Z)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 848
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_8
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "object":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append([Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    goto :goto_0

    .line 851
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_9
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    goto :goto_0
.end method

.method public append(S)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # S

    .prologue
    .line 887
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 888
    return-object p0
.end method

.method public append(Z)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 578
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v1, v0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 579
    return-object p0

    .line 578
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public append([B)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .locals 6
    .param p1, "array"    # [B

    .prologue
    .line 630
    if-nez p1, :cond_1

    .line 631
    iget v4, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v5, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v4, v5

    iput v4, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 637
    :cond_0
    return-object p0

    .line 633
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .line 634
    .local v1, "element":B
    invoke-virtual {p0, v1}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(B)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    .line 633
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public append([C)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .locals 6
    .param p1, "array"    # [C

    .prologue
    .line 664
    if-nez p1, :cond_1

    .line 665
    iget v4, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v5, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v4, v5

    iput v4, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 671
    :cond_0
    return-object p0

    .line 667
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[C
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    .line 668
    .local v1, "element":C
    invoke-virtual {p0, v1}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(C)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    .line 667
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public append([D)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .locals 7
    .param p1, "array"    # [D

    .prologue
    .line 697
    if-nez p1, :cond_1

    .line 698
    iget v5, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v6, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v5, v6

    iput v5, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 704
    :cond_0
    return-object p0

    .line 700
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[D
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-wide v2, v0, v1

    .line 701
    .local v2, "element":D
    invoke-virtual {p0, v2, v3}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(D)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    .line 700
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public append([F)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .locals 6
    .param p1, "array"    # [F

    .prologue
    .line 731
    if-nez p1, :cond_1

    .line 732
    iget v4, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v5, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v4, v5

    iput v4, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 738
    :cond_0
    return-object p0

    .line 734
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[F
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 735
    .local v1, "element":F
    invoke-virtual {p0, v1}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(F)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    .line 734
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public append([I)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .locals 6
    .param p1, "array"    # [I

    .prologue
    .line 765
    if-nez p1, :cond_1

    .line 766
    iget v4, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v5, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v4, v5

    iput v4, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 772
    :cond_0
    return-object p0

    .line 768
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 769
    .local v1, "element":I
    invoke-virtual {p0, v1}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(I)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    .line 768
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public append([J)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .locals 7
    .param p1, "array"    # [J

    .prologue
    .line 803
    if-nez p1, :cond_1

    .line 804
    iget v5, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v6, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v5, v6

    iput v5, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 810
    :cond_0
    return-object p0

    .line 806
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[J
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-wide v2, v0, v1

    .line 807
    .local v2, "element":J
    invoke-virtual {p0, v2, v3}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(J)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    .line 806
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public append([Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .locals 6
    .param p1, "array"    # [Ljava/lang/Object;

    .prologue
    .line 867
    if-nez p1, :cond_1

    .line 868
    iget v4, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v5, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v4, v5

    iput v4, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 874
    :cond_0
    return-object p0

    .line 870
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 871
    .local v1, "element":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    .line 870
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public append([S)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .locals 6
    .param p1, "array"    # [S

    .prologue
    .line 901
    if-nez p1, :cond_1

    .line 902
    iget v4, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v5, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v4, v5

    iput v4, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 908
    :cond_0
    return-object p0

    .line 904
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[S
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-short v1, v0, v2

    .line 905
    .local v1, "element":S
    invoke-virtual {p0, v1}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(S)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    .line 904
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public append([Z)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .locals 6
    .param p1, "array"    # [Z

    .prologue
    .line 592
    if-nez p1, :cond_1

    .line 593
    iget v4, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v5, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v4, v5

    iput v4, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 599
    :cond_0
    return-object p0

    .line 595
    :cond_1
    move-object v0, p1

    .local v0, "arr$":[Z
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-boolean v1, v0, v2

    .line 596
    .local v1, "element":Z
    invoke-virtual {p0, v1}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->append(Z)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;

    .line 595
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public appendSuper(I)Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;
    .locals 2
    .param p1, "superHashCode"    # I

    .prologue
    .line 922
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    iget v1, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iConstant:I

    mul-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    .line 923
    return-object p0
.end method

.method public build()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 945
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->build()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 959
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public toHashCode()I
    .locals 1

    .prologue
    .line 934
    iget v0, p0, Lorg/apache/miui/commons/lang3/builder/HashCodeBuilder;->iTotal:I

    return v0
.end method
