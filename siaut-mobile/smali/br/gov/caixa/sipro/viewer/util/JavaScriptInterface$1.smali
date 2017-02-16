.class Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface$1;
.super Ljava/lang/Object;
.source "JavaScriptInterface.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->lightOn()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;


# direct methods
.method constructor <init>(Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface$1;->this$0:Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 399
    return-void
.end method
