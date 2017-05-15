.class public Lorg/apache/miui/commons/lang3/reflect/FieldUtils;
.super Ljava/lang/Object;
.source "FieldUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public static getDeclaredField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "forceAccess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    if-nez p0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The class must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The field name must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-static {v0}, Lorg/apache/miui/commons/lang3/reflect/MemberUtils;->isAccessible(Ljava/lang/reflect/Member;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "field":Ljava/lang/reflect/Field;
    :cond_2
    :goto_0
    return-object v0

    .restart local v0    # "field":Ljava/lang/reflect/Field;
    :cond_3
    move-object v0, v1

    goto :goto_0

    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v2

    move-object v0, v1

    goto :goto_0
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-static {v0}, Lorg/apache/miui/commons/lang3/reflect/MemberUtils;->setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)V

    return-object v0
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;
    .locals 9
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "forceAccess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez p0, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "The class must not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    if-nez p1, :cond_1

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "The field name must not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    move-object v0, p0

    .local v0, "acls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    if-eqz v0, :cond_4

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-nez v6, :cond_2

    if-eqz p2, :cond_3

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_2
    :goto_1
    return-object v2

    :catch_0
    move-exception v6

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    .local v4, "match":Ljava/lang/reflect/Field;
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/ClassUtils;->getAllInterfaces(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .local v1, "class1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .local v5, "test":Ljava/lang/reflect/Field;
    if-eqz v4, :cond_5

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reference to field "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is ambiguous relative to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; a matching field exists on two or more implemented interfaces."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v5    # "test":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v6

    goto :goto_2

    .restart local v5    # "test":Ljava/lang/reflect/Field;
    :cond_5
    move-object v4, v5

    goto :goto_2

    .end local v1    # "class1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "test":Ljava/lang/reflect/Field;
    :cond_6
    move-object v2, v4

    goto :goto_1
.end method

.method public static readDeclaredField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->readDeclaredField(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readDeclaredField(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 5
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "forceAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "target object must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, p1, p2}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "field":Ljava/lang/reflect/Field;
    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot locate declared field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v1, p0}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static readDeclaredStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->readDeclaredStaticField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readDeclaredStaticField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "forceAccess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "field":Ljava/lang/reflect/Field;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot locate declared field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->readStaticField(Ljava/lang/reflect/Field;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readField(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 5
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "forceAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "target object must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, p1, p2}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "field":Ljava/lang/reflect/Field;
    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot locate field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v1, p0}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static readField(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readField(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "forceAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The field must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/reflect/MemberUtils;->setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)V

    goto :goto_0
.end method

.method public static readStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->readStaticField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readStaticField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "forceAccess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "field":Ljava/lang/reflect/Field;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot locate field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->readStaticField(Ljava/lang/reflect/Field;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static readStaticField(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 1
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->readStaticField(Ljava/lang/reflect/Field;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static readStaticField(Ljava/lang/reflect/Field;Z)Ljava/lang/Object;
    .locals 3
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "forceAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The field must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not static"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    invoke-static {p0, v0, p1}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static writeDeclaredField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->writeDeclaredField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static writeDeclaredField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 5
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "forceAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "target object must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, p1, p3}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "field":Ljava/lang/reflect/Field;
    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot locate declared field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v1, p0, p2}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static writeDeclaredStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->writeDeclaredStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static writeDeclaredStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "forceAccess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p3}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->getDeclaredField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "field":Ljava/lang/reflect/Field;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot locate declared field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Object;

    invoke-static {v0, v1, p2}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 5
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "forceAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "target object must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0, p1, p3}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .local v1, "field":Ljava/lang/reflect/Field;
    if-nez v1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot locate declared field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v1, p0, p2}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "forceAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The field must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :goto_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {p0}, Lorg/apache/miui/commons/lang3/reflect/MemberUtils;->setAccessibleWorkaround(Ljava/lang/reflect/AccessibleObject;)V

    goto :goto_0
.end method

.method public static writeStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->writeStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static writeStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "forceAccess"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p3}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "field":Ljava/lang/reflect/Field;
    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot locate field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {v0, p2}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->writeStaticField(Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    return-void
.end method

.method public static writeStaticField(Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 1
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->writeStaticField(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)V

    return-void
.end method

.method public static writeStaticField(Ljava/lang/reflect/Field;Ljava/lang/Object;Z)V
    .locals 3
    .param p0, "field"    # Ljava/lang/reflect/Field;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "forceAccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The field must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not static"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    invoke-static {p0, v0, p1, p2}, Lorg/apache/miui/commons/lang3/reflect/FieldUtils;->writeField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method
