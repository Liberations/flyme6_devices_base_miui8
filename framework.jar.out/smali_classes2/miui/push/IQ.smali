.class public Lmiui/push/IQ;
.super Lmiui/push/Packet;
.source "IQ.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/push/IQ$Type;
    }
.end annotation


# instance fields
.field private type:Lmiui/push/IQ$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lmiui/push/Packet;-><init>()V

    sget-object v0, Lmiui/push/IQ$Type;->GET:Lmiui/push/IQ$Type;

    iput-object v0, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1}, Lmiui/push/Packet;-><init>(Landroid/os/Bundle;)V

    sget-object v0, Lmiui/push/IQ$Type;->GET:Lmiui/push/IQ$Type;

    iput-object v0, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    const-string v0, "ext_iq_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ext_iq_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/push/IQ$Type;->fromString(Ljava/lang/String;)Lmiui/push/IQ$Type;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    :cond_0
    return-void
.end method

.method public static createErrorResponse(Lmiui/push/IQ;Lmiui/push/XMPPError;)Lmiui/push/IQ;
    .locals 4
    .param p0, "request"    # Lmiui/push/IQ;
    .param p1, "error"    # Lmiui/push/XMPPError;

    .prologue
    invoke-virtual {p0}, Lmiui/push/IQ;->getType()Lmiui/push/IQ$Type;

    move-result-object v1

    sget-object v2, Lmiui/push/IQ$Type;->GET:Lmiui/push/IQ$Type;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lmiui/push/IQ;->getType()Lmiui/push/IQ$Type;

    move-result-object v1

    sget-object v2, Lmiui/push/IQ$Type;->SET:Lmiui/push/IQ$Type;

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IQ must be of type \'set\' or \'get\'. Original IQ: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/IQ;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lmiui/push/IQ$2;

    invoke-direct {v0, p0}, Lmiui/push/IQ$2;-><init>(Lmiui/push/IQ;)V

    .local v0, "result":Lmiui/push/IQ;
    sget-object v1, Lmiui/push/IQ$Type;->ERROR:Lmiui/push/IQ$Type;

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setType(Lmiui/push/IQ$Type;)V

    invoke-virtual {p0}, Lmiui/push/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setPacketID(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/push/IQ;->getTo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setFrom(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/push/IQ;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setTo(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lmiui/push/IQ;->setError(Lmiui/push/XMPPError;)V

    return-object v0
.end method

.method public static createResultIQ(Lmiui/push/IQ;)Lmiui/push/IQ;
    .locals 4
    .param p0, "request"    # Lmiui/push/IQ;

    .prologue
    invoke-virtual {p0}, Lmiui/push/IQ;->getType()Lmiui/push/IQ$Type;

    move-result-object v1

    sget-object v2, Lmiui/push/IQ$Type;->GET:Lmiui/push/IQ$Type;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lmiui/push/IQ;->getType()Lmiui/push/IQ$Type;

    move-result-object v1

    sget-object v2, Lmiui/push/IQ$Type;->SET:Lmiui/push/IQ$Type;

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IQ must be of type \'set\' or \'get\'. Original IQ: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/IQ;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Lmiui/push/IQ$1;

    invoke-direct {v0}, Lmiui/push/IQ$1;-><init>()V

    .local v0, "result":Lmiui/push/IQ;
    sget-object v1, Lmiui/push/IQ$Type;->RESULT:Lmiui/push/IQ$Type;

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setType(Lmiui/push/IQ$Type;)V

    invoke-virtual {p0}, Lmiui/push/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setPacketID(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/push/IQ;->getTo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setFrom(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiui/push/IQ;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/push/IQ;->setTo(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getChildElementXML()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Lmiui/push/IQ$Type;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    return-object v0
.end method

.method public setType(Lmiui/push/IQ$Type;)V
    .locals 1
    .param p1, "type"    # Lmiui/push/IQ$Type;

    .prologue
    if-nez p1, :cond_0

    sget-object v0, Lmiui/push/IQ$Type;->GET:Lmiui/push/IQ$Type;

    iput-object v0, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    goto :goto_0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    invoke-super {p0}, Lmiui/push/Packet;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    if-eqz v1, :cond_0

    const-string v1, "ext_iq_type"

    iget-object v2, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    invoke-virtual {v2}, Lmiui/push/IQ$Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 5

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v3, "<iq "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/push/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lmiui/push/IQ;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lmiui/push/IQ;->getTo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "to=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lmiui/push/IQ;->getTo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Lmiui/push/IQ;->getFrom()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "from=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lmiui/push/IQ;->getFrom()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lmiui/push/IQ;->getChannelId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "chid=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lmiui/push/IQ;->getChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v3, p0, Lmiui/push/IQ;->type:Lmiui/push/IQ$Type;

    if-nez v3, :cond_6

    const-string v3, "type=\"get\">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Lmiui/push/IQ;->getChildElementXML()Ljava/lang/String;

    move-result-object v2

    .local v2, "queryXML":Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Lmiui/push/IQ;->getExtensionsXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmiui/push/IQ;->getError()Lmiui/push/XMPPError;

    move-result-object v1

    .local v1, "error":Lmiui/push/XMPPError;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lmiui/push/XMPPError;->toXML()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v3, "</iq>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .end local v1    # "error":Lmiui/push/XMPPError;
    .end local v2    # "queryXML":Ljava/lang/String;
    :cond_6
    const-string v3, "type=\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lmiui/push/IQ;->getType()Lmiui/push/IQ$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
