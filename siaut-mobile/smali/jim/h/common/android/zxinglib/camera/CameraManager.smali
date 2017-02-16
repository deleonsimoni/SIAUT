.class public final Ljim/h/common/android/zxinglib/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final MAX_FRAME_HEIGHT:I = 0x1c2

.field private static final MAX_FRAME_WIDTH:I = 0x258

.field private static final MIN_FRAME_HEIGHT:I = 0xf0

.field private static final MIN_FRAME_WIDTH:I = 0xf0

.field static final SDK_INT:I

.field private static final TAG:Ljava/lang/String;

.field private static cameraManager:Ljim/h/common/android/zxinglib/camera/CameraManager;


# instance fields
.field private final autoFocusCallback:Ljim/h/common/android/zxinglib/camera/AutoFocusCallback;

.field private camera:Landroid/hardware/Camera;

.field private final configManager:Ljim/h/common/android/zxinglib/camera/CameraConfigurationManager;

.field private framingRect:Landroid/graphics/Rect;

.field private framingRectInPreview:Landroid/graphics/Rect;

.field private initialized:Z

.field private final previewCallback:Ljim/h/common/android/zxinglib/camera/PreviewCallback;

.field private previewing:Z

.field private reverseImage:Z

.field private useFrontLight:Z

.field private final useOneShotPreviewCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const-class v2, Ljim/h/common/android/zxinglib/camera/CameraManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Ljim/h/common/android/zxinglib/camera/CameraManager;->TAG:Ljava/lang/String;

    .line 55
    :try_start_0
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 60
    .local v1, "sdkInt":I
    :goto_0
    sput v1, Ljim/h/common/android/zxinglib/camera/CameraManager;->SDK_INT:I

    .line 38
    return-void

    .line 56
    .end local v1    # "sdkInt":I
    :catch_0
    move-exception v0

    .line 58
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/16 v1, 0x2710

    .restart local v1    # "sdkInt":I
    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useFrontLight"    # Z

    .prologue
    const/4 v0, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->useFrontLight:Z

    .line 106
    new-instance v1, Ljim/h/common/android/zxinglib/camera/CameraConfigurationManager;

    invoke-direct {v1, p1}, Ljim/h/common/android/zxinglib/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->configManager:Ljim/h/common/android/zxinglib/camera/CameraConfigurationManager;

    .line 107
    iput-boolean p2, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->useFrontLight:Z

    .line 113
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->useOneShotPreviewCallback:Z

    .line 115
    new-instance v0, Ljim/h/common/android/zxinglib/camera/PreviewCallback;

    iget-object v1, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->configManager:Ljim/h/common/android/zxinglib/camera/CameraConfigurationManager;

    iget-boolean v2, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->useOneShotPreviewCallback:Z

    invoke-direct {v0, v1, v2}, Ljim/h/common/android/zxinglib/camera/PreviewCallback;-><init>(Ljim/h/common/android/zxinglib/camera/CameraConfigurationManager;Z)V

    iput-object v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->previewCallback:Ljim/h/common/android/zxinglib/camera/PreviewCallback;

    .line 116
    new-instance v0, Ljim/h/common/android/zxinglib/camera/AutoFocusCallback;

    invoke-direct {v0}, Ljim/h/common/android/zxinglib/camera/AutoFocusCallback;-><init>()V

    iput-object v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->autoFocusCallback:Ljim/h/common/android/zxinglib/camera/AutoFocusCallback;

    .line 117
    return-void
.end method

.method public static get()Ljim/h/common/android/zxinglib/camera/CameraManager;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Ljim/h/common/android/zxinglib/camera/CameraManager;->cameraManager:Ljim/h/common/android/zxinglib/camera/CameraManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useFrontLight"    # Z

    .prologue
    .line 88
    sget-object v0, Ljim/h/common/android/zxinglib/camera/CameraManager;->cameraManager:Ljim/h/common/android/zxinglib/camera/CameraManager;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljim/h/common/android/zxinglib/camera/CameraManager;

    invoke-direct {v0, p0, p1}, Ljim/h/common/android/zxinglib/camera/CameraManager;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Ljim/h/common/android/zxinglib/camera/CameraManager;->cameraManager:Ljim/h/common/android/zxinglib/camera/CameraManager;

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BII)Ljim/h/common/android/zxinglib/camera/PlanarYUVLuminanceSource;
    .locals 12
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 307
    invoke-virtual {p0}, Ljim/h/common/android/zxinglib/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v11

    .line 308
    .local v11, "rect":Landroid/graphics/Rect;
    iget-object v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->configManager:Ljim/h/common/android/zxinglib/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Ljim/h/common/android/zxinglib/camera/CameraConfigurationManager;->getPreviewFormat()I

    move-result v9

    .line 309
    .local v9, "previewFormat":I
    iget-object v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->configManager:Ljim/h/common/android/zxinglib/camera/CameraConfigurationManager;

    invoke-virtual {v0}, Ljim/h/common/android/zxinglib/camera/CameraConfigurationManager;->getPreviewFormatString()Ljava/lang/String;

    move-result-object v10

    .line 311
    .local v10, "previewFormatString":Ljava/lang/String;
    packed-switch v9, :pswitch_data_0

    .line 323
    const-string v0, "yuv420p"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    new-instance v0, Ljim/h/common/android/zxinglib/camera/PlanarYUVLuminanceSource;

    iget v4, v11, Landroid/graphics/Rect;->left:I

    iget v5, v11, Landroid/graphics/Rect;->top:I

    .line 325
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-boolean v8, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->reverseImage:Z

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 324
    invoke-direct/range {v0 .. v8}, Ljim/h/common/android/zxinglib/camera/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    :goto_0
    return-object v0

    .line 318
    :pswitch_0
    new-instance v0, Ljim/h/common/android/zxinglib/camera/PlanarYUVLuminanceSource;

    iget v4, v11, Landroid/graphics/Rect;->left:I

    iget v5, v11, Landroid/graphics/Rect;->top:I

    .line 319
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-boolean v8, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->reverseImage:Z

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 318
    invoke-direct/range {v0 .. v8}, Ljim/h/common/android/zxinglib/camera/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    goto :goto_0

    .line 328
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported picture format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public closeDriver()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 155
    invoke-static {}, Ljim/h/common/android/zxinglib/camera/FlashlightManager;->disableFlashlight()V

    .line 156
    iget-object v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 157
    iput-object v1, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 161
    iput-object v1, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 162
    iput-object v1, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    .line 164
    :cond_0
    return-void
.end method

.method public getFramingRect()Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/16 v6, 0xf0

    .line 232
    iget-object v5, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    if-nez v5, :cond_3

    .line 233
    iget-object v5, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v5, :cond_0

    .line 234
    const/4 v5, 0x0

    .line 254
    :goto_0
    return-object v5

    .line 236
    :cond_0
    iget-object v5, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->configManager:Ljim/h/common/android/zxinglib/camera/CameraConfigurationManager;

    invoke-virtual {v5}, Ljim/h/common/android/zxinglib/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v2

    .line 237
    .local v2, "screenResolution":Landroid/graphics/Point;
    iget v5, v2, Landroid/graphics/Point;->x:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v4, v5, 0x4

    .line 238
    .local v4, "width":I
    if-ge v4, v6, :cond_4

    .line 239
    const/16 v4, 0xf0

    .line 243
    :cond_1
    :goto_1
    iget v5, v2, Landroid/graphics/Point;->y:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v0, v5, 0x4

    .line 244
    .local v0, "height":I
    if-ge v0, v6, :cond_5

    .line 245
    const/16 v0, 0xf0

    .line 249
    :cond_2
    :goto_2
    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v4

    div-int/lit8 v1, v5, 0x2

    .line 250
    .local v1, "leftOffset":I
    iget v5, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v0

    div-int/lit8 v3, v5, 0x2

    .line 251
    .local v3, "topOffset":I
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v1, v4

    add-int v7, v3, v0

    invoke-direct {v5, v1, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 252
    sget-object v5, Ljim/h/common/android/zxinglib/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Calculated framing rect: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    .end local v0    # "height":I
    .end local v1    # "leftOffset":I
    .end local v2    # "screenResolution":Landroid/graphics/Point;
    .end local v3    # "topOffset":I
    .end local v4    # "width":I
    :cond_3
    iget-object v5, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 240
    .restart local v2    # "screenResolution":Landroid/graphics/Point;
    .restart local v4    # "width":I
    :cond_4
    const/16 v5, 0x258

    if-le v4, v5, :cond_1

    .line 241
    const/16 v4, 0x258

    goto :goto_1

    .line 246
    .restart local v0    # "height":I
    :cond_5
    const/16 v5, 0x1c2

    if-le v0, v5, :cond_2

    .line 247
    const/16 v0, 0x1c2

    goto :goto_2
.end method

.method public getFramingRectInPreview()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 262
    iget-object v3, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    if-nez v3, :cond_0

    .line 263
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Ljim/h/common/android/zxinglib/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 264
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->configManager:Ljim/h/common/android/zxinglib/camera/CameraConfigurationManager;

    invoke-virtual {v3}, Ljim/h/common/android/zxinglib/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    .line 265
    .local v0, "cameraResolution":Landroid/graphics/Point;
    iget-object v3, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->configManager:Ljim/h/common/android/zxinglib/camera/CameraConfigurationManager;

    invoke-virtual {v3}, Ljim/h/common/android/zxinglib/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v2

    .line 266
    .local v2, "screenResolution":Landroid/graphics/Point;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 267
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 268
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 269
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 270
    iput-object v1, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    .line 272
    .end local v0    # "cameraResolution":Landroid/graphics/Point;
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "screenResolution":Landroid/graphics/Point;
    :cond_0
    iget-object v3, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    return-object v3
.end method

.method public openDriver(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 127
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 128
    iget-object v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 132
    :cond_0
    iget-object v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 133
    iget-boolean v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->initialized:Z

    if-nez v0, :cond_1

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->initialized:Z

    .line 135
    iget-object v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->configManager:Ljim/h/common/android/zxinglib/camera/CameraConfigurationManager;

    iget-object v1, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Ljim/h/common/android/zxinglib/camera/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    .line 137
    :cond_1
    iget-object v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->configManager:Ljim/h/common/android/zxinglib/camera/CameraConfigurationManager;

    iget-object v1, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Ljim/h/common/android/zxinglib/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;)V

    .line 145
    iget-boolean v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->useFrontLight:Z

    if-eqz v0, :cond_2

    .line 146
    invoke-static {}, Ljim/h/common/android/zxinglib/camera/FlashlightManager;->enableFlashlight()V

    .line 148
    :cond_2
    return-void
.end method

.method public requestAutoFocus(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # I

    .prologue
    .line 217
    iget-object v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->autoFocusCallback:Ljim/h/common/android/zxinglib/camera/AutoFocusCallback;

    invoke-virtual {v0, p1, p2}, Ljim/h/common/android/zxinglib/camera/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 220
    iget-object v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->autoFocusCallback:Ljim/h/common/android/zxinglib/camera/AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 222
    :cond_0
    return-void
.end method

.method public requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # I

    .prologue
    .line 200
    iget-object v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->previewCallback:Ljim/h/common/android/zxinglib/camera/PreviewCallback;

    invoke-virtual {v0, p1, p2}, Ljim/h/common/android/zxinglib/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 202
    iget-boolean v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->useOneShotPreviewCallback:Z

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->previewCallback:Ljim/h/common/android/zxinglib/camera/PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    iget-object v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->previewCallback:Ljim/h/common/android/zxinglib/camera/PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0
.end method

.method public setManualFramingRect(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 283
    iget-object v3, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->configManager:Ljim/h/common/android/zxinglib/camera/CameraConfigurationManager;

    invoke-virtual {v3}, Ljim/h/common/android/zxinglib/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v1

    .line 284
    .local v1, "screenResolution":Landroid/graphics/Point;
    iget v3, v1, Landroid/graphics/Point;->x:I

    if-le p1, v3, :cond_0

    .line 285
    iget p1, v1, Landroid/graphics/Point;->x:I

    .line 287
    :cond_0
    iget v3, v1, Landroid/graphics/Point;->y:I

    if-le p2, v3, :cond_1

    .line 288
    iget p2, v1, Landroid/graphics/Point;->y:I

    .line 290
    :cond_1
    iget v3, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, p1

    div-int/lit8 v0, v3, 0x2

    .line 291
    .local v0, "leftOffset":I
    iget v3, v1, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, p2

    div-int/lit8 v2, v3, 0x2

    .line 292
    .local v2, "topOffset":I
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, v0, p1

    add-int v5, v2, p2

    invoke-direct {v3, v0, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 293
    sget-object v3, Ljim/h/common/android/zxinglib/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Calculated manual framing rect: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v3, 0x0

    iput-object v3, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    .line 295
    return-void
.end method

.method public startPreview()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->previewing:Z

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->previewing:Z

    .line 174
    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 180
    iget-object v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    .line 181
    iget-boolean v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->useOneShotPreviewCallback:Z

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 184
    :cond_0
    iget-object v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 185
    iget-object v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->previewCallback:Ljim/h/common/android/zxinglib/camera/PreviewCallback;

    invoke-virtual {v0, v2, v1}, Ljim/h/common/android/zxinglib/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 186
    iget-object v0, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->autoFocusCallback:Ljim/h/common/android/zxinglib/camera/AutoFocusCallback;

    invoke-virtual {v0, v2, v1}, Ljim/h/common/android/zxinglib/camera/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 187
    iput-boolean v1, p0, Ljim/h/common/android/zxinglib/camera/CameraManager;->previewing:Z

    .line 189
    :cond_1
    return-void
.end method
