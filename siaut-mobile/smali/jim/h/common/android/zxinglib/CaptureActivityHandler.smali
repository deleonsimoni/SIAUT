.class public final Ljim/h/common/android/zxinglib/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Ljim/h/common/android/zxinglib/CaptureActivity;

.field private final decodeThread:Ljim/h/common/android/zxinglib/DecodeThread;

.field private state:Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Ljim/h/common/android/zxinglib/CaptureActivityHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->TAG:Ljava/lang/String;

    .line 40
    return-void
.end method

.method constructor <init>(Ljim/h/common/android/zxinglib/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Ljim/h/common/android/zxinglib/CaptureActivity;
    .param p3, "characterSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljim/h/common/android/zxinglib/CaptureActivity;",
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p2, "decodeFormats":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/google/zxing/BarcodeFormat;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 56
    iput-object p1, p0, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->activity:Ljim/h/common/android/zxinglib/CaptureActivity;

    .line 57
    new-instance v0, Ljim/h/common/android/zxinglib/DecodeThread;

    .line 58
    new-instance v1, Ljim/h/common/android/zxinglib/view/ViewfinderResultPointCallback;

    invoke-virtual {p1}, Ljim/h/common/android/zxinglib/CaptureActivity;->getViewfinderView()Ljim/h/common/android/zxinglib/view/ViewfinderView;

    move-result-object v2

    invoke-direct {v1, v2}, Ljim/h/common/android/zxinglib/view/ViewfinderResultPointCallback;-><init>(Ljim/h/common/android/zxinglib/view/ViewfinderView;)V

    invoke-direct {v0, p1, p2, p3, v1}, Ljim/h/common/android/zxinglib/DecodeThread;-><init>(Ljim/h/common/android/zxinglib/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    .line 57
    iput-object v0, p0, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->decodeThread:Ljim/h/common/android/zxinglib/DecodeThread;

    .line 59
    iget-object v0, p0, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->decodeThread:Ljim/h/common/android/zxinglib/DecodeThread;

    invoke-virtual {v0}, Ljim/h/common/android/zxinglib/DecodeThread;->start()V

    .line 60
    sget-object v0, Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;->SUCCESS:Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

    iput-object v0, p0, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->state:Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

    .line 63
    invoke-static {}, Ljim/h/common/android/zxinglib/camera/CameraManager;->get()Ljim/h/common/android/zxinglib/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Ljim/h/common/android/zxinglib/camera/CameraManager;->startPreview()V

    .line 64
    invoke-direct {p0}, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->restartPreviewAndDecode()V

    .line 65
    return-void
.end method

.method private restartPreviewAndDecode()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->state:Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

    sget-object v1, Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;->SUCCESS:Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    .line 128
    sget-object v0, Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;->PREVIEW:Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

    iput-object v0, p0, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->state:Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

    .line 129
    invoke-static {}, Ljim/h/common/android/zxinglib/camera/CameraManager;->get()Ljim/h/common/android/zxinglib/camera/CameraManager;

    move-result-object v0

    iget-object v1, p0, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->decodeThread:Ljim/h/common/android/zxinglib/DecodeThread;

    invoke-virtual {v1}, Ljim/h/common/android/zxinglib/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f060001

    invoke-virtual {v0, v1, v2}, Ljim/h/common/android/zxinglib/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 130
    invoke-static {}, Ljim/h/common/android/zxinglib/camera/CameraManager;->get()Ljim/h/common/android/zxinglib/camera/CameraManager;

    move-result-object v0

    const/high16 v1, 0x7f060000

    invoke-virtual {v0, p0, v1}, Ljim/h/common/android/zxinglib/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    .line 131
    iget-object v0, p0, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->activity:Ljim/h/common/android/zxinglib/CaptureActivity;

    invoke-virtual {v0}, Ljim/h/common/android/zxinglib/CaptureActivity;->drawViewfinder()V

    .line 133
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 69
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 108
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 74
    :pswitch_1
    iget-object v4, p0, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->state:Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

    sget-object v5, Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;->PREVIEW:Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

    if-ne v4, v5, :cond_0

    .line 75
    invoke-static {}, Ljim/h/common/android/zxinglib/camera/CameraManager;->get()Ljim/h/common/android/zxinglib/camera/CameraManager;

    move-result-object v4

    const/high16 v5, 0x7f060000

    invoke-virtual {v4, p0, v5}, Ljim/h/common/android/zxinglib/camera/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    goto :goto_0

    .line 79
    :pswitch_2
    sget-object v4, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v5, "Got restart preview message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-direct {p0}, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto :goto_0

    .line 83
    :pswitch_3
    sget-object v4, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v5, "Got decode succeeded message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object v4, Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;->SUCCESS:Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

    iput-object v4, p0, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->state:Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

    .line 85
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 86
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 88
    .local v0, "barcode":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v5, p0, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->activity:Ljim/h/common/android/zxinglib/CaptureActivity;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/zxing/Result;

    invoke-virtual {v5, v4, v0}, Ljim/h/common/android/zxinglib/CaptureActivity;->handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 87
    .end local v0    # "barcode":Landroid/graphics/Bitmap;
    :cond_1
    const-string v4, "barcode_bitmap"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    move-object v0, v4

    goto :goto_1

    .line 92
    .end local v1    # "bundle":Landroid/os/Bundle;
    :pswitch_4
    sget-object v4, Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;->PREVIEW:Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

    iput-object v4, p0, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->state:Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

    .line 93
    invoke-static {}, Ljim/h/common/android/zxinglib/camera/CameraManager;->get()Ljim/h/common/android/zxinglib/camera/CameraManager;

    move-result-object v4

    iget-object v5, p0, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->decodeThread:Ljim/h/common/android/zxinglib/DecodeThread;

    invoke-virtual {v5}, Ljim/h/common/android/zxinglib/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const v6, 0x7f060001

    invoke-virtual {v4, v5, v6}, Ljim/h/common/android/zxinglib/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    goto :goto_0

    .line 96
    :pswitch_5
    sget-object v4, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v5, "Got return scan result message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v5, p0, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->activity:Ljim/h/common/android/zxinglib/CaptureActivity;

    const/4 v6, -0x1

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    invoke-virtual {v5, v6, v4}, Ljim/h/common/android/zxinglib/CaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 98
    iget-object v4, p0, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->activity:Ljim/h/common/android/zxinglib/CaptureActivity;

    invoke-virtual {v4}, Ljim/h/common/android/zxinglib/CaptureActivity;->finish()V

    goto :goto_0

    .line 101
    :pswitch_6
    sget-object v4, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v5, "Got product query message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 103
    .local v3, "url":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 104
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x80000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 105
    iget-object v4, p0, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->activity:Ljim/h/common/android/zxinglib/CaptureActivity;

    invoke-virtual {v4, v2}, Ljim/h/common/android/zxinglib/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x7f060000
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch
.end method

.method public quitSynchronously()V
    .locals 3

    .prologue
    .line 111
    sget-object v1, Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;->DONE:Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

    iput-object v1, p0, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->state:Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

    .line 112
    invoke-static {}, Ljim/h/common/android/zxinglib/camera/CameraManager;->get()Ljim/h/common/android/zxinglib/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Ljim/h/common/android/zxinglib/camera/CameraManager;->stopPreview()V

    .line 113
    iget-object v1, p0, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->decodeThread:Ljim/h/common/android/zxinglib/DecodeThread;

    invoke-virtual {v1}, Ljim/h/common/android/zxinglib/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const v2, 0x7f060005

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 114
    .local v0, "quit":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 116
    :try_start_0
    iget-object v1, p0, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->decodeThread:Ljim/h/common/android/zxinglib/DecodeThread;

    invoke-virtual {v1}, Ljim/h/common/android/zxinglib/DecodeThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    const v1, 0x7f060003

    invoke-virtual {p0, v1}, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->removeMessages(I)V

    .line 123
    const v1, 0x7f060002

    invoke-virtual {p0, v1}, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->removeMessages(I)V

    .line 124
    return-void

    .line 117
    :catch_0
    move-exception v1

    goto :goto_0
.end method
