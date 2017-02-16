.class public final Ljim/h/common/android/zxinglib/view/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# static fields
.field private static final ANIMATION_DELAY:J = 0x50L

.field private static final CURRENT_POINT_OPACITY:I = 0xa0

.field private static final MAX_RESULT_POINTS:I = 0x14

.field private static final SCANNER_ALPHA:[I


# instance fields
.field private final frameColor:I

.field private final laserColor:I

.field private lastPossibleResultPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final maskColor:I

.field private final paint:Landroid/graphics/Paint;

.field private possibleResultPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private final resultColor:I

.field private final resultPointColor:I

.field private scannerAlpha:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0xc0

    const/16 v4, 0x80

    const/16 v3, 0x40

    .line 41
    const/16 v0, 0x8

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput v3, v0, v1

    const/4 v1, 0x2

    aput v4, v0, v1

    const/4 v1, 0x3

    aput v5, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0xff

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v5, v0, v1

    const/4 v1, 0x6

    aput v4, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    sput-object v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->SCANNER_ALPHA:[I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 71
    const/high16 v0, 0x60000000

    iput v0, p0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->maskColor:I

    .line 72
    const/high16 v0, -0x50000000

    iput v0, p0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->resultColor:I

    .line 73
    const/high16 v0, -0x1000000

    iput v0, p0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->frameColor:I

    .line 74
    const/high16 v0, -0x10000

    iput v0, p0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->laserColor:I

    .line 75
    const v0, -0x3f000100    # -7.999878f

    iput v0, p0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->resultPointColor:I

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->scannerAlpha:I

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 80
    return-void
.end method


# virtual methods
.method public addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 4
    .param p1, "point"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 173
    iget-object v0, p0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 174
    .local v0, "points":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    monitor-enter p1

    .line 175
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 177
    .local v1, "size":I
    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    .line 179
    const/4 v2, 0x0

    add-int/lit8 v3, v1, -0xa

    invoke-interface {v0, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 174
    :cond_0
    monitor-exit p1

    .line 182
    return-void

    .line 174
    .end local v1    # "size":I
    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public drawResultBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "barcode"    # Landroid/graphics/Bitmap;

    .prologue
    .line 168
    iput-object p1, p0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 169
    invoke-virtual {p0}, Ljim/h/common/android/zxinglib/view/ViewfinderView;->invalidate()V

    .line 170
    return-void
.end method

.method public drawViewfinder()V
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 159
    invoke-virtual {p0}, Ljim/h/common/android/zxinglib/view/ViewfinderView;->invalidate()V

    .line 160
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 84
    invoke-static {}, Ljim/h/common/android/zxinglib/camera/CameraManager;->get()Ljim/h/common/android/zxinglib/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Ljim/h/common/android/zxinglib/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 85
    .local v12, "frame":Landroid/graphics/Rect;
    if-nez v12, :cond_0

    .line 155
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v19

    .line 89
    .local v19, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v13

    .line 92
    .local v13, "height":I
    move-object/from16 v0, p0

    iget-object v3, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v2, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->resultColor:I

    :goto_1
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v19

    int-to-float v5, v0

    iget v2, v12, Landroid/graphics/Rect;->top:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 94
    const/4 v3, 0x0

    iget v2, v12, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->left:I

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 95
    iget v2, v12, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    move/from16 v0, v19

    int-to-float v5, v0

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 96
    const/4 v3, 0x0

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v4, v2

    move/from16 v0, v19

    int-to-float v5, v0

    int-to-float v6, v13

    move-object/from16 v0, p0

    iget-object v7, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v12, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 92
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->maskColor:I

    goto :goto_1

    .line 105
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->frameColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget v2, v12, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 107
    iget v2, v12, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x2

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x2

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 108
    iget v2, v12, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->top:I

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 109
    iget v2, v12, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v5, v2

    iget v2, v12, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->laserColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    sget-object v3, Ljim/h/common/android/zxinglib/view/ViewfinderView;->SCANNER_ALPHA:[I

    move-object/from16 v0, p0

    iget v4, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->scannerAlpha:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 114
    move-object/from16 v0, p0

    iget v2, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->scannerAlpha:I

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Ljim/h/common/android/zxinglib/view/ViewfinderView;->SCANNER_ALPHA:[I

    array-length v3, v3

    rem-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->scannerAlpha:I

    .line 115
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget v3, v12, Landroid/graphics/Rect;->top:I

    add-int v14, v2, v3

    .line 116
    .local v14, "middle":I
    iget v2, v12, Landroid/graphics/Rect;->left:I

    add-int/lit8 v2, v2, 0x2

    int-to-float v3, v2

    add-int/lit8 v2, v14, -0x1

    int-to-float v4, v2

    iget v2, v12, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    add-int/lit8 v2, v14, 0x2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 118
    invoke-static {}, Ljim/h/common/android/zxinglib/camera/CameraManager;->get()Ljim/h/common/android/zxinglib/camera/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Ljim/h/common/android/zxinglib/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v16

    .line 119
    .local v16, "previewFrame":Landroid/graphics/Rect;
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float v17, v2, v3

    .line 120
    .local v17, "scaleX":F
    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v18, v2, v3

    .line 122
    .local v18, "scaleY":F
    move-object/from16 v0, p0

    iget-object v11, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 123
    .local v11, "currentPossible":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 124
    .local v10, "currentLast":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 125
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 139
    :goto_2
    if-eqz v10, :cond_3

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v3, 0x50

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 141
    move-object/from16 v0, p0

    iget-object v2, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->resultPointColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    monitor-enter v10

    .line 143
    :try_start_0
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6

    .line 142
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 153
    :cond_3
    const-wide/16 v4, 0x50

    iget v6, v12, Landroid/graphics/Rect;->left:I

    iget v7, v12, Landroid/graphics/Rect;->top:I

    iget v8, v12, Landroid/graphics/Rect;->right:I

    iget v9, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Ljim/h/common/android/zxinglib/view/ViewfinderView;->postInvalidateDelayed(JIIII)V

    goto/16 :goto_0

    .line 127
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 128
    move-object/from16 v0, p0

    iput-object v11, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->resultPointColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    monitor-enter v11

    .line 132
    :try_start_1
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 131
    monitor-exit v11

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 132
    :cond_5
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/zxing/ResultPoint;

    .line 133
    .local v15, "point":Lcom/google/zxing/ResultPoint;
    iget v3, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v15}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    mul-float v4, v4, v17

    float-to-int v4, v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 134
    iget v4, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v15}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    mul-float v5, v5, v18

    float-to-int v5, v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 135
    const/high16 v5, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 133
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 143
    .end local v15    # "point":Lcom/google/zxing/ResultPoint;
    :cond_6
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/zxing/ResultPoint;

    .line 144
    .restart local v15    # "point":Lcom/google/zxing/ResultPoint;
    iget v3, v12, Landroid/graphics/Rect;->left:I

    invoke-virtual {v15}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    mul-float v4, v4, v17

    float-to-int v4, v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 145
    iget v4, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v15}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    mul-float v5, v5, v18

    float-to-int v5, v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 146
    const/high16 v5, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Ljim/h/common/android/zxinglib/view/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 144
    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 142
    .end local v15    # "point":Lcom/google/zxing/ResultPoint;
    :catchall_1
    move-exception v2

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method
