.class public Lmiui/util/ProximitySensorWrapper;
.super Ljava/lang/Object;
.source "ProximitySensorWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;
    }
.end annotation


# static fields
.field private static final EVENT_FAR:I = 0x1

.field private static final EVENT_TOO_CLOSE:I = 0x0

.field private static final PROXIMITY_THRESHOLD:F = 4.0f

.field public static final STATE_STABLE_DELAY:I = 0x12c


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mProximitySensorChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mProximitySensorState:I

.field private final mSensor:Landroid/hardware/Sensor;

.field private final mSensorListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    new-instance v0, Lmiui/util/ProximitySensorWrapper$1;

    invoke-direct {v0, p0}, Lmiui/util/ProximitySensorWrapper$1;-><init>(Lmiui/util/ProximitySensorWrapper;)V

    iput-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mSensorListener:Landroid/hardware/SensorEventListener;

    iput-object p1, p0, Lmiui/util/ProximitySensorWrapper;->mContext:Landroid/content/Context;

    new-instance v0, Lmiui/util/ProximitySensorWrapper$2;

    invoke-direct {v0, p0}, Lmiui/util/ProximitySensorWrapper$2;-><init>(Lmiui/util/ProximitySensorWrapper;)V

    iput-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorState:I

    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    return-void
.end method

.method static synthetic access$000(Lmiui/util/ProximitySensorWrapper;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lmiui/util/ProximitySensorWrapper;

    .prologue
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/util/ProximitySensorWrapper;)I
    .locals 1
    .param p0, "x0"    # Lmiui/util/ProximitySensorWrapper;

    .prologue
    iget v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorState:I

    return v0
.end method

.method static synthetic access$102(Lmiui/util/ProximitySensorWrapper;I)I
    .locals 0
    .param p0, "x0"    # Lmiui/util/ProximitySensorWrapper;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorState:I

    return p1
.end method

.method static synthetic access$200(Lmiui/util/ProximitySensorWrapper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lmiui/util/ProximitySensorWrapper;

    .prologue
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/util/ProximitySensorWrapper;Z)V
    .locals 0
    .param p0, "x0"    # Lmiui/util/ProximitySensorWrapper;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lmiui/util/ProximitySensorWrapper;->notifyListeners(Z)V

    return-void
.end method

.method private notifyListeners(Z)V
    .locals 3
    .param p1, "tooClose"    # Z

    .prologue
    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    .local v1, "listener":Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;
    invoke-interface {v1, p1}, Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;->onSensorChanged(Z)V

    goto :goto_0

    .end local v1    # "listener":Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;
    :cond_0
    return-void
.end method

.method private unregisterSensorEventListener()V
    .locals 3

    .prologue
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lmiui/util/ProximitySensorWrapper;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public registerListener(Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;)V
    .locals 4
    .param p1, "listener"    # Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    .prologue
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lmiui/util/ProximitySensorWrapper;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lmiui/util/ProximitySensorWrapper;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public unregisterAllListeners()V
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lmiui/util/ProximitySensorWrapper;->unregisterSensorEventListener()V

    return-void
.end method

.method public unregisterListener(Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lmiui/util/ProximitySensorWrapper$ProximitySensorChangeListener;

    .prologue
    iget-object v0, p0, Lmiui/util/ProximitySensorWrapper;->mProximitySensorChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lmiui/util/ProximitySensorWrapper;->unregisterSensorEventListener()V

    return-void
.end method
