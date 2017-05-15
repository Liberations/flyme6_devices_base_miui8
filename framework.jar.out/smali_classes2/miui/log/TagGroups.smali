.class public final Lmiui/log/TagGroups;
.super Ljava/lang/Object;
.source "TagGroups.java"


# static fields
.field public static final TAGGROUP_BROADCAST:Ljava/lang/String; = "Broadcast"

.field public static final TagGroupBroadcast:Lmiui/log/TagGroup;

.field private static final allTagGroups:[Lmiui/log/TagGroup;

.field private static final tagGroupMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/log/TagGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v4, Lmiui/log/TagGroup;

    const-string v5, "Broadcast"

    new-array v6, v9, [Ljava/lang/String;

    const-string v7, "SendBroadcast"

    aput-object v7, v6, v8

    invoke-direct {v4, v5, v6}, Lmiui/log/TagGroup;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v4, Lmiui/log/TagGroups;->TagGroupBroadcast:Lmiui/log/TagGroup;

    new-array v4, v9, [Lmiui/log/TagGroup;

    sget-object v5, Lmiui/log/TagGroups;->TagGroupBroadcast:Lmiui/log/TagGroup;

    aput-object v5, v4, v8

    sput-object v4, Lmiui/log/TagGroups;->allTagGroups:[Lmiui/log/TagGroup;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    sget-object v0, Lmiui/log/TagGroups;->allTagGroups:[Lmiui/log/TagGroup;

    .local v0, "arr$":[Lmiui/log/TagGroup;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .local v3, "tagGroup":Lmiui/log/TagGroup;
    sget-object v4, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    iget-object v5, v3, Lmiui/log/TagGroup;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "tagGroup":Lmiui/log/TagGroup;
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Lmiui/log/TagGroup;
    .locals 1
    .param p0, "groupName"    # Ljava/lang/String;

    .prologue
    sget-object v0, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/TagGroup;

    return-object v0
.end method

.method public static isOn(Ljava/lang/String;)Z
    .locals 2
    .param p0, "groupName"    # Ljava/lang/String;

    .prologue
    sget-object v1, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/TagGroup;

    .local v0, "group":Lmiui/log/TagGroup;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lmiui/log/TagGroup;->isOn()Z

    move-result v1

    goto :goto_0
.end method

.method public static switchOff(Ljava/lang/String;)V
    .locals 2
    .param p0, "groupName"    # Ljava/lang/String;

    .prologue
    sget-object v1, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/TagGroup;

    .local v0, "group":Lmiui/log/TagGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/log/TagGroup;->switchOff()V

    :cond_0
    return-void
.end method

.method public static switchOn(Ljava/lang/String;)V
    .locals 2
    .param p0, "groupName"    # Ljava/lang/String;

    .prologue
    sget-object v1, Lmiui/log/TagGroups;->tagGroupMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/log/TagGroup;

    .local v0, "group":Lmiui/log/TagGroup;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiui/log/TagGroup;->switchOn()V

    :cond_0
    return-void
.end method
