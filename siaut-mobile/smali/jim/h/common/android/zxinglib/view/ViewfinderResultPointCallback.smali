.class public final Ljim/h/common/android/zxinglib/view/ViewfinderResultPointCallback;
.super Ljava/lang/Object;
.source "ViewfinderResultPointCallback.java"

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# instance fields
.field private final viewfinderView:Ljim/h/common/android/zxinglib/view/ViewfinderView;


# direct methods
.method public constructor <init>(Ljim/h/common/android/zxinglib/view/ViewfinderView;)V
    .locals 0
    .param p1, "viewfinderView"    # Ljim/h/common/android/zxinglib/view/ViewfinderView;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Ljim/h/common/android/zxinglib/view/ViewfinderResultPointCallback;->viewfinderView:Ljim/h/common/android/zxinglib/view/ViewfinderView;

    .line 28
    return-void
.end method


# virtual methods
.method public foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1
    .param p1, "point"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 31
    iget-object v0, p0, Ljim/h/common/android/zxinglib/view/ViewfinderResultPointCallback;->viewfinderView:Ljim/h/common/android/zxinglib/view/ViewfinderView;

    invoke-virtual {v0, p1}, Ljim/h/common/android/zxinglib/view/ViewfinderView;->addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 32
    return-void
.end method
