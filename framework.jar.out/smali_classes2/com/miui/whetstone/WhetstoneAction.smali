.class public Lcom/miui/whetstone/WhetstoneAction;
.super Ljava/lang/Object;
.source "WhetstoneAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/miui/whetstone/WhetstoneAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DT:Ljava/lang/String;

.field private content:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/miui/whetstone/WhetstoneAction$1;

    invoke-direct {v0}, Lcom/miui/whetstone/WhetstoneAction$1;-><init>()V

    sput-object v0, Lcom/miui/whetstone/WhetstoneAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/WhetstoneAction;->DT:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/whetstone/WhetstoneAction;->convertStringToJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/whetstone/WhetstoneAction;->content:Lorg/json/JSONObject;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/miui/whetstone/WhetstoneAction$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/miui/whetstone/WhetstoneAction$1;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/miui/whetstone/WhetstoneAction;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "dt"    # Ljava/lang/String;
    .param p2, "jb"    # Lorg/json/JSONObject;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/miui/whetstone/WhetstoneAction;->DT:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/miui/whetstone/WhetstoneAction;->content:Lorg/json/JSONObject;

    .line 19
    return-void
.end method

.method private convertStringToJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v1, 0x0

    .line 62
    .local v1, "jb":Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "jb":Lorg/json/JSONObject;
    .local v2, "jb":Lorg/json/JSONObject;
    move-object v1, v2

    .line 66
    .end local v2    # "jb":Lorg/json/JSONObject;
    .restart local v1    # "jb":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public getContent()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneAction;->content:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneAction;->DT:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneAction;->DT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/miui/whetstone/WhetstoneAction;->content:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 38
    return-void
.end method
