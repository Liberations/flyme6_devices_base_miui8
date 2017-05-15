.class public Lmiui/maml/elements/ScreenElementFactory;
.super Ljava/lang/Object;
.source "ScreenElementFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;
    }
.end annotation


# instance fields
.field private mFactoryCallback:Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ScreenElement;
    .locals 5
    .param p1, "ele"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v1

    .local v1, "tag":Ljava/lang/String;
    :try_start_0
    const-string v2, "Image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lmiui/maml/elements/ImageScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    :goto_0
    return-object v2

    :cond_0
    const-string v2, "Time"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lmiui/maml/elements/TimepanelScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/TimepanelScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v2, "ScreenElementFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to create element."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v2, "ImageNumber"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "ImageChars"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    new-instance v2, Lmiui/maml/elements/ImageNumberScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/ImageNumberScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    :cond_4
    const-string v2, "Text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lmiui/maml/elements/TextScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/TextScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    :cond_5
    const-string v2, "DateTime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Lmiui/maml/elements/DateTimeScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/DateTimeScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    :cond_6
    const-string v2, "Button"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lmiui/maml/elements/ButtonScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/ButtonScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    :cond_7
    const-string v2, "MusicControl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lmiui/maml/elements/MusicControlScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/MusicControlScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto :goto_0

    :cond_8
    const-string v2, "ElementGroup"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "Group"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    new-instance v2, Lmiui/maml/elements/ElementGroup;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    :cond_a
    const-string v2, "Var"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    new-instance v2, Lmiui/maml/elements/VariableElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/VariableElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    :cond_b
    const-string v2, "VarArray"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Lmiui/maml/elements/VariableArrayElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/VariableArrayElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    :cond_c
    const-string v2, "SpectrumVisualizer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Lmiui/maml/elements/SpectrumVisualizerScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/SpectrumVisualizerScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    :cond_d
    const-string v2, "Slider"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    new-instance v2, Lmiui/maml/elements/AdvancedSlider;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/AdvancedSlider;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    :cond_e
    const-string v2, "FramerateController"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Lmiui/maml/elements/FramerateController;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/FramerateController;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    :cond_f
    const-string v2, "VirtualScreen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    new-instance v2, Lmiui/maml/elements/VirtualScreen;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/VirtualScreen;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    :cond_10
    const-string v2, "Line"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    new-instance v2, Lmiui/maml/elements/LineScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/LineScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    :cond_11
    const-string v2, "Rectangle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    new-instance v2, Lmiui/maml/elements/RectangleScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/RectangleScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    :cond_12
    const-string v2, "Ellipse"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    new-instance v2, Lmiui/maml/elements/EllipseScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/EllipseScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    :cond_13
    const-string v2, "Circle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    new-instance v2, Lmiui/maml/elements/CircleScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/CircleScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    :cond_14
    const-string v2, "Arc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    new-instance v2, Lmiui/maml/elements/ArcScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/ArcScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    :cond_15
    const-string v2, "Curve"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    new-instance v2, Lmiui/maml/elements/CurveScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/CurveScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    :cond_16
    const-string v2, "List"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    new-instance v2, Lmiui/maml/elements/ListScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/ListScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    :cond_17
    const-string v2, "Paint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    new-instance v2, Lmiui/maml/elements/PaintScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/PaintScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    :cond_18
    const-string v2, "Mirror"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    new-instance v2, Lmiui/maml/elements/MirrorScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/MirrorScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    :cond_19
    const-string v2, "Window"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    new-instance v2, Lmiui/maml/elements/WindowScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/WindowScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    :cond_1a
    const-string v2, "Array"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    new-instance v2, Lmiui/maml/elements/ScreenElementArray;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/ScreenElementArray;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    :cond_1b
    const-string v2, "WebView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    new-instance v2, Lmiui/maml/elements/WebViewScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/WebViewScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    :cond_1c
    const-string v2, "Layer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    new-instance v2, Lmiui/maml/elements/LayerScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/LayerScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    :cond_1d
    const-string v2, "GLLayer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    new-instance v2, Lmiui/maml/elements/GLLayerScreenElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/GLLayerScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    :cond_1e
    const-string v2, "CanvasDrawer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    new-instance v2, Lmiui/maml/elements/CanvasDrawerElement;

    invoke-direct {v2, p1, p2}, Lmiui/maml/elements/CanvasDrawerElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    goto/16 :goto_0

    :cond_1f
    iget-object v2, p0, Lmiui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;

    invoke-interface {v2, p1, p2}, Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;->onCreateInstance(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ScreenElement;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto/16 :goto_0
.end method

.method public getCallback()Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;
    .locals 1

    .prologue
    iget-object v0, p0, Lmiui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;

    return-object v0
.end method

.method public setCallback(Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;)V
    .locals 0
    .param p1, "factoryCallback"    # Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;

    .prologue
    iput-object p1, p0, Lmiui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lmiui/maml/elements/ScreenElementFactory$FactoryCallback;

    return-void
.end method
