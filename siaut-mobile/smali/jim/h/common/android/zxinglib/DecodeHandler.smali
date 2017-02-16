.class final Ljim/h/common/android/zxinglib/DecodeHandler;
.super Landroid/os/Handler;
.source "DecodeHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Ljim/h/common/android/zxinglib/CaptureActivity;

.field private final multiFormatReader:Lcom/google/zxing/MultiFormatReader;

.field private running:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Ljim/h/common/android/zxinglib/DecodeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljim/h/common/android/zxinglib/DecodeHandler;->TAG:Ljava/lang/String;

    .line 36
    return-void
.end method

.method constructor <init>(Ljim/h/common/android/zxinglib/CaptureActivity;Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "activity"    # Ljim/h/common/android/zxinglib/CaptureActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljim/h/common/android/zxinglib/CaptureActivity;",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljim/h/common/android/zxinglib/DecodeHandler;->running:Z

    .line 45
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Ljim/h/common/android/zxinglib/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 46
    iget-object v0, p0, Ljim/h/common/android/zxinglib/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Hashtable;)V

    .line 47
    iput-object p1, p0, Ljim/h/common/android/zxinglib/DecodeHandler;->activity:Ljim/h/common/android/zxinglib/CaptureActivity;

    .line 48
    return-void
.end method

.method private decode([BII)V
    .locals 18
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 76
    .local v12, "start":J
    const/4 v9, 0x0

    .line 77
    .local v9, "rawResult":Lcom/google/zxing/Result;
    invoke-static {}, Ljim/h/common/android/zxinglib/camera/CameraManager;->get()Ljim/h/common/android/zxinglib/camera/CameraManager;

    move-result-object v11

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v11, v0, v1, v2}, Ljim/h/common/android/zxinglib/camera/CameraManager;->buildLuminanceSource([BII)Ljim/h/common/android/zxinglib/camera/PlanarYUVLuminanceSource;

    move-result-object v10

    .line 78
    .local v10, "source":Ljim/h/common/android/zxinglib/camera/PlanarYUVLuminanceSource;
    new-instance v4, Lcom/google/zxing/BinaryBitmap;

    new-instance v11, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v11, v10}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v4, v11}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 80
    .local v4, "bitmap":Lcom/google/zxing/BinaryBitmap;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Ljim/h/common/android/zxinglib/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v11, v4}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 84
    move-object/from16 v0, p0

    iget-object v11, v0, Ljim/h/common/android/zxinglib/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v11}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 87
    :goto_0
    if-eqz v9, :cond_0

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 90
    .local v6, "end":J
    sget-object v11, Ljim/h/common/android/zxinglib/DecodeHandler;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Found barcode in "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v16, v6, v12

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ms"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    move-object/from16 v0, p0

    iget-object v11, v0, Ljim/h/common/android/zxinglib/DecodeHandler;->activity:Ljim/h/common/android/zxinglib/CaptureActivity;

    invoke-virtual {v11}, Ljim/h/common/android/zxinglib/CaptureActivity;->getHandler()Landroid/os/Handler;

    move-result-object v11

    const v14, 0x7f060003

    invoke-static {v11, v14, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 92
    .local v8, "message":Landroid/os/Message;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 93
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v11, "barcode_bitmap"

    invoke-virtual {v10}, Ljim/h/common/android/zxinglib/camera/PlanarYUVLuminanceSource;->renderCroppedGreyscaleBitmap()Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-virtual {v5, v11, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 94
    invoke-virtual {v8, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 100
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v6    # "end":J
    :goto_1
    return-void

    .line 81
    .end local v8    # "message":Landroid/os/Message;
    :catch_0
    move-exception v11

    .line 84
    move-object/from16 v0, p0

    iget-object v11, v0, Ljim/h/common/android/zxinglib/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v11}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v11

    .line 84
    move-object/from16 v0, p0

    iget-object v14, v0, Ljim/h/common/android/zxinglib/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v14}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 85
    throw v11

    .line 97
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Ljim/h/common/android/zxinglib/DecodeHandler;->activity:Ljim/h/common/android/zxinglib/CaptureActivity;

    invoke-virtual {v11}, Ljim/h/common/android/zxinglib/CaptureActivity;->getHandler()Landroid/os/Handler;

    move-result-object v11

    const v14, 0x7f060002

    invoke-static {v11, v14}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v8

    .line 98
    .restart local v8    # "message":Landroid/os/Message;
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 52
    iget-boolean v0, p0, Ljim/h/common/android/zxinglib/DecodeHandler;->running:Z

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 55
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 57
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Ljim/h/common/android/zxinglib/DecodeHandler;->decode([BII)V

    goto :goto_0

    .line 60
    :sswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljim/h/common/android/zxinglib/DecodeHandler;->running:Z

    .line 61
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0

    .line 55
    :sswitch_data_0
    .sparse-switch
        0x7f060001 -> :sswitch_0
        0x7f060005 -> :sswitch_1
    .end sparse-switch
.end method
