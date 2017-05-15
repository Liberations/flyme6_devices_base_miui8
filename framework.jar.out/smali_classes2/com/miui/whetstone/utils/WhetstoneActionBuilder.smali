.class public Lcom/miui/whetstone/utils/WhetstoneActionBuilder;
.super Ljava/lang/Object;
.source "WhetstoneActionBuilder.java"


# instance fields
.field private content:Lorg/json/JSONObject;

.field private department:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->department:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->content:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)Lcom/miui/whetstone/utils/WhetstoneActionBuilder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->content:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public add(Ljava/lang/String;J)Lcom/miui/whetstone/utils/WhetstoneActionBuilder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->content:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public add(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/whetstone/utils/WhetstoneActionBuilder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->content:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public add(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/miui/whetstone/utils/WhetstoneActionBuilder;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lorg/json/JSONObject;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->content:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAction()Lcom/miui/whetstone/WhetstoneAction;
    .locals 3

    .prologue
    new-instance v0, Lcom/miui/whetstone/WhetstoneAction;

    iget-object v1, p0, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->department:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/whetstone/utils/WhetstoneActionBuilder;->content:Lorg/json/JSONObject;

    invoke-direct {v0, v1, v2}, Lcom/miui/whetstone/WhetstoneAction;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method
