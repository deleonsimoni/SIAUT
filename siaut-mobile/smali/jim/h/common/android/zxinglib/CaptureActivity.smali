.class public Ljim/h/common/android/zxinglib/CaptureActivity;
.super Landroid/app/Activity;
.source "CaptureActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final INTENT_RESULT_DURATION:J = 0x5dcL

.field public static final KEY_LAYOUT_RES_ID:Ljava/lang/String; = "layoutResId"

.field public static final KEY_PREVIEW_VIEW_RES_ID:Ljava/lang/String; = "previewViewResId"

.field public static final KEY_USE_FRONT_LIGHT:Ljava/lang/String; = "useFrontLight"

.field public static final KEY_VIEW_FINDER_VIEW_RES_ID:Ljava/lang/String; = "viewFinderViewResId"

.field private static final TAG:Ljava/lang/String;

.field private static final VIBRATE_DURATION:J = 0xc8L


# instance fields
.field private characterSet:Ljava/lang/String;

.field private decodeFormats:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Ljim/h/common/android/zxinglib/CaptureActivityHandler;

.field private hasSurface:Z

.field private inactivityTimer:Ljim/h/common/android/zxinglib/InactivityTimer;

.field private layoutResId:I

.field private previewViewResId:I

.field private useFrontLight:Z

.field private vibrate:Z

.field private viewFinderViewResId:I

.field private viewfinderView:Ljim/h/common/android/zxinglib/view/ViewfinderView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Ljim/h/common/android/zxinglib/CaptureActivity;

    .line 40
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 39
    sput-object v0, Ljim/h/common/android/zxinglib/CaptureActivity;->TAG:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->vibrate:Z

    .line 32
    return-void
.end method

.method private static drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V
    .locals 6
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "a"    # Lcom/google/zxing/ResultPoint;
    .param p3, "b"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 188
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    invoke-virtual {p3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 189
    return-void
.end method

.method private drawResultPoints(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    .locals 10
    .param p1, "barcode"    # Landroid/graphics/Bitmap;
    .param p2, "rawResult"    # Lcom/google/zxing/Result;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x2

    .line 159
    invoke-virtual {p2}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v4

    .line 160
    .local v4, "points":[Lcom/google/zxing/ResultPoint;
    if-eqz v4, :cond_0

    array-length v6, v4

    if-lez v6, :cond_0

    .line 161
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 162
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 163
    .local v2, "paint":Landroid/graphics/Paint;
    const/4 v6, -0x1

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    const/high16 v6, 0x40400000    # 3.0f

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 165
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 166
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-direct {v0, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 167
    .local v0, "border":Landroid/graphics/Rect;
    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 169
    const v6, -0x3fff0100

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    array-length v6, v4

    if-ne v6, v8, :cond_1

    .line 171
    const/high16 v6, 0x40800000    # 4.0f

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 172
    aget-object v5, v4, v5

    aget-object v6, v4, v9

    invoke-static {v1, v2, v5, v6}, Ljim/h/common/android/zxinglib/CaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    .line 185
    .end local v0    # "border":Landroid/graphics/Rect;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "paint":Landroid/graphics/Paint;
    :cond_0
    :goto_0
    return-void

    .line 173
    .restart local v0    # "border":Landroid/graphics/Rect;
    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v2    # "paint":Landroid/graphics/Paint;
    :cond_1
    array-length v6, v4

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 174
    invoke-virtual {p2}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v6

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 175
    invoke-virtual {p2}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v6

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 176
    :cond_2
    aget-object v5, v4, v5

    aget-object v6, v4, v9

    invoke-static {v1, v2, v5, v6}, Ljim/h/common/android/zxinglib/CaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    .line 177
    aget-object v5, v4, v8

    const/4 v6, 0x3

    aget-object v6, v4, v6

    invoke-static {v1, v2, v5, v6}, Ljim/h/common/android/zxinglib/CaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    goto :goto_0

    .line 179
    :cond_3
    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 180
    array-length v6, v4

    :goto_1
    if-ge v5, v6, :cond_0

    aget-object v3, v4, v5

    .line 181
    .local v3, "point":Lcom/google/zxing/ResultPoint;
    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v7

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    invoke-virtual {v1, v7, v8, v2}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 180
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 5
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 193
    :try_start_0
    invoke-static {}, Ljim/h/common/android/zxinglib/camera/CameraManager;->get()Ljim/h/common/android/zxinglib/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljim/h/common/android/zxinglib/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 199
    iget-object v2, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->handler:Ljim/h/common/android/zxinglib/CaptureActivityHandler;

    if-nez v2, :cond_0

    .line 200
    new-instance v2, Ljim/h/common/android/zxinglib/CaptureActivityHandler;

    iget-object v3, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->decodeFormats:Ljava/util/Vector;

    iget-object v4, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->characterSet:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Ljim/h/common/android/zxinglib/CaptureActivityHandler;-><init>(Ljim/h/common/android/zxinglib/CaptureActivity;Ljava/util/Vector;Ljava/lang/String;)V

    iput-object v2, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->handler:Ljim/h/common/android/zxinglib/CaptureActivityHandler;

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v1

    .line 195
    .local v1, "ioe":Ljava/io/IOException;
    goto :goto_0

    .line 196
    .end local v1    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/RuntimeException;
    goto :goto_0
.end method

.method private playBeepSoundAndVibrate()V
    .locals 4

    .prologue
    .line 205
    iget-boolean v1, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->vibrate:Z

    if-eqz v1, :cond_0

    .line 206
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Ljim/h/common/android/zxinglib/CaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 207
    .local v0, "vibrator":Landroid/os/Vibrator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 209
    .end local v0    # "vibrator":Landroid/os/Vibrator;
    :cond_0
    return-void
.end method


# virtual methods
.method public drawViewfinder()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->viewfinderView:Ljim/h/common/android/zxinglib/view/ViewfinderView;

    invoke-virtual {v0}, Ljim/h/common/android/zxinglib/view/ViewfinderView;->drawViewfinder()V

    .line 135
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->handler:Ljim/h/common/android/zxinglib/CaptureActivityHandler;

    return-object v0
.end method

.method public getViewfinderView()Ljim/h/common/android/zxinglib/view/ViewfinderView;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->viewfinderView:Ljim/h/common/android/zxinglib/view/ViewfinderView;

    return-object v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "obj"    # Lcom/google/zxing/Result;
    .param p2, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 138
    iget-object v3, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->inactivityTimer:Ljim/h/common/android/zxinglib/InactivityTimer;

    invoke-virtual {v3}, Ljim/h/common/android/zxinglib/InactivityTimer;->onActivity()V

    .line 139
    invoke-direct {p0, p2, p1}, Ljim/h/common/android/zxinglib/CaptureActivity;->drawResultPoints(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V

    .line 141
    invoke-direct {p0}, Ljim/h/common/android/zxinglib/CaptureActivity;->playBeepSoundAndVibrate()V

    .line 142
    iget-object v3, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->viewfinderView:Ljim/h/common/android/zxinglib/view/ViewfinderView;

    invoke-virtual {v3, p2}, Ljim/h/common/android/zxinglib/view/ViewfinderView;->drawResultBitmap(Landroid/graphics/Bitmap;)V

    .line 143
    sget-object v3, Ljim/h/common/android/zxinglib/CaptureActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljim/h/common/android/zxinglib/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 146
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x80000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 147
    const-string v3, "SCAN_RESULT"

    invoke-virtual {p1}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v3, "SCAN_RESULT_FORMAT"

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v2

    .line 150
    .local v2, "rawBytes":[B
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 151
    const-string v3, "SCAN_RESULT_BYTES"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 153
    :cond_0
    iget-object v3, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->handler:Ljim/h/common/android/zxinglib/CaptureActivityHandler;

    const v4, 0x7f060007

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 154
    .local v1, "message":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 155
    iget-object v3, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->handler:Ljim/h/common/android/zxinglib/CaptureActivityHandler;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v3, v1, v4, v5}, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 156
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Ljim/h/common/android/zxinglib/CaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 63
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "layoutResId"

    const/high16 v2, 0x7f030000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->layoutResId:I

    .line 64
    const-string v1, "viewFinderViewResId"

    const v2, 0x7f06000b

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->viewFinderViewResId:I

    .line 65
    const-string v1, "previewViewResId"

    const v2, 0x7f06000a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->previewViewResId:I

    .line 66
    const-string v1, "useFrontLight"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->useFrontLight:Z

    .line 68
    iget v1, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->layoutResId:I

    invoke-virtual {p0, v1}, Ljim/h/common/android/zxinglib/CaptureActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0}, Ljim/h/common/android/zxinglib/CaptureActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-boolean v2, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->useFrontLight:Z

    invoke-static {v1, v2}, Ljim/h/common/android/zxinglib/camera/CameraManager;->init(Landroid/content/Context;Z)V

    .line 72
    iget v1, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->viewFinderViewResId:I

    invoke-virtual {p0, v1}, Ljim/h/common/android/zxinglib/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Ljim/h/common/android/zxinglib/view/ViewfinderView;

    iput-object v1, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->viewfinderView:Ljim/h/common/android/zxinglib/view/ViewfinderView;

    .line 73
    iput-boolean v3, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->hasSurface:Z

    .line 74
    new-instance v1, Ljim/h/common/android/zxinglib/InactivityTimer;

    invoke-direct {v1, p0}, Ljim/h/common/android/zxinglib/InactivityTimer;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->inactivityTimer:Ljim/h/common/android/zxinglib/InactivityTimer;

    .line 75
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->inactivityTimer:Ljim/h/common/android/zxinglib/InactivityTimer;

    invoke-virtual {v0}, Ljim/h/common/android/zxinglib/InactivityTimer;->shutdown()V

    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 106
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 95
    iget-object v0, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->handler:Ljim/h/common/android/zxinglib/CaptureActivityHandler;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->handler:Ljim/h/common/android/zxinglib/CaptureActivityHandler;

    invoke-virtual {v0}, Ljim/h/common/android/zxinglib/CaptureActivityHandler;->quitSynchronously()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->handler:Ljim/h/common/android/zxinglib/CaptureActivityHandler;

    .line 99
    :cond_0
    invoke-static {}, Ljim/h/common/android/zxinglib/camera/CameraManager;->get()Ljim/h/common/android/zxinglib/camera/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Ljim/h/common/android/zxinglib/camera/CameraManager;->closeDriver()V

    .line 100
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 80
    iget v2, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->previewViewResId:I

    invoke-virtual {p0, v2}, Ljim/h/common/android/zxinglib/CaptureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    .line 81
    .local v1, "surfaceView":Landroid/view/SurfaceView;
    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 82
    .local v0, "surfaceHolder":Landroid/view/SurfaceHolder;
    iget-boolean v2, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->hasSurface:Z

    if-eqz v2, :cond_0

    .line 83
    invoke-direct {p0, v0}, Ljim/h/common/android/zxinglib/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 88
    :goto_0
    iput-object v3, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->decodeFormats:Ljava/util/Vector;

    .line 89
    iput-object v3, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->characterSet:Ljava/lang/String;

    .line 90
    return-void

    .line 85
    :cond_0
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 86
    const/4 v2, 0x3

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 110
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 114
    iget-boolean v0, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->hasSurface:Z

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->hasSurface:Z

    .line 116
    invoke-direct {p0, p1}, Ljim/h/common/android/zxinglib/CaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 118
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljim/h/common/android/zxinglib/CaptureActivity;->hasSurface:Z

    .line 123
    return-void
.end method
