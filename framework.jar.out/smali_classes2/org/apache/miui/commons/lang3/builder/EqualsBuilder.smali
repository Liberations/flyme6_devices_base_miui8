.class public Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
.super Ljava/lang/Object;
.source "EqualsBuilder.java"

# interfaces
.implements Lorg/apache/miui/commons/lang3/builder/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/miui/commons/lang3/builder/Builder",
        "<",
        "Ljava/lang/Boolean;",
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
            "Lorg/apache/miui/commons/lang3/tuple/Pair",
            "<",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private isEquals:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-void
.end method

.method static getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;
    .locals 3
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/apache/miui/commons/lang3/tuple/Pair",
            "<",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Lorg/apache/miui/commons/lang3/builder/IDKey;

    invoke-direct {v0, p0}, Lorg/apache/miui/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    .local v0, "left":Lorg/apache/miui/commons/lang3/builder/IDKey;
    new-instance v1, Lorg/apache/miui/commons/lang3/builder/IDKey;

    invoke-direct {v1, p1}, Lorg/apache/miui/commons/lang3/builder/IDKey;-><init>(Ljava/lang/Object;)V

    .local v1, "right":Lorg/apache/miui/commons/lang3/builder/IDKey;
    invoke-static {v0, v1}, Lorg/apache/miui/commons/lang3/tuple/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;

    move-result-object v2

    return-object v2
.end method

.method static getRegistry()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/apache/miui/commons/lang3/tuple/Pair",
            "<",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            "Lorg/apache/miui/commons/lang3/builder/IDKey;",
            ">;>;"
        }
    .end annotation

    .prologue
    sget-object v0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method static isRegistered(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;

    .prologue
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v1

    .local v1, "registry":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;>;"
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;

    move-result-object v0

    .local v0, "pair":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;"
    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/tuple/Pair;->getLeft()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/miui/commons/lang3/tuple/Pair;->getRight()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/miui/commons/lang3/tuple/Pair;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;

    move-result-object v2

    .local v2, "swappedPair":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;Z[Ljava/lang/String;)V
    .locals 6
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p3, "builder"    # Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .param p4, "useTransients"    # Z
    .param p5, "excludeFields"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;",
            "Z[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isRegistered(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->register(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .local v2, "fields":[Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-static {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible([Ljava/lang/reflect/AccessibleObject;Z)V

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_3

    iget-boolean v4, p3, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v4, :cond_3

    aget-object v1, v2, v3

    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p5, v4}, Lorg/apache/miui/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x24

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    if-nez p4, :cond_1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_2

    :try_start_1
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p3, v4, v5}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_2
    new-instance v4, Ljava/lang/InternalError;

    const-string v5, "Unexpected IllegalAccessException"

    invoke-direct {v4, v5}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local v1    # "f":Ljava/lang/reflect/Field;
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->unregister(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v4

    .restart local v2    # "fields":[Ljava/lang/reflect/Field;
    .restart local v3    # "i":I
    :cond_3
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->unregister(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)Z
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
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "excludeFields":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p2}, Lorg/apache/miui/commons/lang3/builder/ReflectionToStringBuilder;->toNoNullStringArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;Z)Z
    .locals 2
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "testTransients"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, p1, p2, v0, v1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static varargs reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z
    .locals 10
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "testTransients"    # Z
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
            ")Z"
        }
    .end annotation

    .prologue
    .local p3, "reflectUpToClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v9, 0x0

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    :cond_1
    move v0, v9

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .local v7, "lhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .local v8, "rhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v2, v7

    .local v2, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v8, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v2, v8

    :cond_3
    :goto_1
    new-instance v3, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;-><init>()V

    .local v3, "equalsBuilder":Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    :try_start_0
    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;Z[Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eq v2, p3, :cond_6

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->reflectionAppend(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;Z[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/IllegalArgumentException;
    move v0, v9

    goto :goto_0

    .end local v2    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "equalsBuilder":Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    invoke-virtual {v8, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v2, v8

    .restart local v2    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v7, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move-object v2, v7

    goto :goto_1

    .end local v2    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_5
    move v0, v9

    goto :goto_0

    .restart local v2    # "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "equalsBuilder":Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    :cond_6
    invoke-virtual {v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z
    .locals 2
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "excludeFields"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->reflectionEquals(Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/Class;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static register(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;

    .prologue
    const-class v3, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v1

    .local v1, "registry":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;>;"
    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;

    move-result-object v0

    .local v0, "pair":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    .end local v0    # "pair":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;"
    .end local v1    # "registry":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static unregister(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;

    .prologue
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v1

    .local v1, "registry":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;>;"
    if-eqz v1, :cond_1

    invoke-static {p0, p1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegisterPair(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/tuple/Pair;

    move-result-object v0

    .local v0, "pair":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;"
    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-class v3, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->getRegistry()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->REGISTRY:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    :cond_0
    monitor-exit v3

    .end local v0    # "pair":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;"
    :cond_1
    return-void

    .restart local v0    # "pair":Lorg/apache/miui/commons/lang3/tuple/Pair;, "Lorg/apache/miui/commons/lang3/tuple/Pair<Lorg/apache/miui/commons/lang3/builder/IDKey;Lorg/apache/miui/commons/lang3/builder/IDKey;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public append(BB)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # B
    .param p2, "rhs"    # B

    .prologue
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(CC)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # C
    .param p2, "rhs"    # C

    .prologue
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(DD)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 5
    .param p1, "lhs"    # D
    .param p3, "rhs"    # D

    .prologue
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .end local p0    # "this":Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    invoke-static {p3, p4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(JJ)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    move-result-object p0

    goto :goto_0
.end method

.method public append(FF)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 2
    .param p1, "lhs"    # F
    .param p2, "rhs"    # F

    .prologue
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    .end local p0    # "this":Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(II)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    move-result-object p0

    goto :goto_0
.end method

.method public append(II)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # I
    .param p2, "rhs"    # I

    .prologue
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(JJ)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # J
    .param p3, "rhs"    # J

    .prologue
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    cmp-long v0, p1, p3

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    .end local p1    # "lhs":Ljava/lang/Object;
    .end local p2    # "rhs":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_1
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "lhsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_5

    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    :cond_5
    instance-of v1, p1, [J

    if-eqz v1, :cond_6

    check-cast p1, [J

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [J

    check-cast p2, [J

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [J

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([J[J)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_0

    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_6
    instance-of v1, p1, [I

    if-eqz v1, :cond_7

    check-cast p1, [I

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [I

    check-cast p2, [I

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [I

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([I[I)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_0

    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_7
    instance-of v1, p1, [S

    if-eqz v1, :cond_8

    check-cast p1, [S

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [S

    check-cast p2, [S

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [S

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([S[S)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_0

    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_8
    instance-of v1, p1, [C

    if-eqz v1, :cond_9

    check-cast p1, [C

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [C

    check-cast p2, [C

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [C

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([C[C)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_0

    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_9
    instance-of v1, p1, [B

    if-eqz v1, :cond_a

    check-cast p1, [B

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [B

    check-cast p2, [B

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([B[B)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto :goto_0

    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_a
    instance-of v1, p1, [D

    if-eqz v1, :cond_b

    check-cast p1, [D

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [D

    check-cast p2, [D

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [D

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([D[D)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto/16 :goto_0

    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_b
    instance-of v1, p1, [F

    if-eqz v1, :cond_c

    check-cast p1, [F

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [F

    check-cast p2, [F

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [F

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([F[F)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto/16 :goto_0

    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_c
    instance-of v1, p1, [Z

    if-eqz v1, :cond_d

    check-cast p1, [Z

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [Z

    check-cast p2, [Z

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [Z

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([Z[Z)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto/16 :goto_0

    .restart local p1    # "lhs":Ljava/lang/Object;
    .restart local p2    # "rhs":Ljava/lang/Object;
    :cond_d
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Object;

    .end local p2    # "rhs":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    goto/16 :goto_0
.end method

.method public append(SS)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # S
    .param p2, "rhs"    # S

    .prologue
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append(ZZ)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 1
    .param p1, "lhs"    # Z
    .param p2, "rhs"    # Z

    .prologue
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public append([B[B)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # [B
    .param p2, "rhs"    # [B

    .prologue
    const/4 v3, 0x0

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(BB)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([C[C)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # [C
    .param p2, "rhs"    # [C

    .prologue
    const/4 v3, 0x0

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    aget-char v1, p1, v0

    aget-char v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(CC)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([D[D)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 6
    .param p1, "lhs"    # [D
    .param p2, "rhs"    # [D

    .prologue
    const/4 v3, 0x0

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(DD)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([F[F)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # [F
    .param p2, "rhs"    # [F

    .prologue
    const/4 v3, 0x0

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(FF)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([I[I)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # [I
    .param p2, "rhs"    # [I

    .prologue
    const/4 v3, 0x0

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    aget v1, p1, v0

    aget v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(II)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([J[J)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 6
    .param p1, "lhs"    # [J
    .param p2, "rhs"    # [J

    .prologue
    const/4 v3, 0x0

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(JJ)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([Ljava/lang/Object;[Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # [Ljava/lang/Object;
    .param p2, "rhs"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([S[S)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # [S
    .param p2, "rhs"    # [S

    .prologue
    const/4 v3, 0x0

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    aget-short v1, p1, v0

    aget-short v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(SS)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public append([Z[Z)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 4
    .param p1, "lhs"    # [Z
    .param p2, "rhs"    # [Z

    .prologue
    const/4 v3, 0x0

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eq p1, p2, :cond_0

    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    :cond_3
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_4

    invoke-virtual {p0, v3}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->setEquals(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-boolean v1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-eqz v1, :cond_0

    aget-boolean v1, p1, v0

    aget-boolean v2, p2, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->append(ZZ)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public appendSuper(Z)Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;
    .locals 1
    .param p1, "superEquals"    # Z

    .prologue
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iput-boolean p1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    goto :goto_0
.end method

.method public build()Ljava/lang/Boolean;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->build()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isEquals()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-void
.end method

.method protected setEquals(Z)V
    .locals 0
    .param p1, "isEquals"    # Z

    .prologue
    iput-boolean p1, p0, Lorg/apache/miui/commons/lang3/builder/EqualsBuilder;->isEquals:Z

    return-void
.end method
