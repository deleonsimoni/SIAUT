.class public final Ljim/h/common/android/zxinglib/integrator/IntentIntegrator;
.super Ljava/lang/Object;
.source "IntentIntegrator.java"


# static fields
.field public static final REQUEST_CODE:I = 0xba7c0de


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static initiateScan(Landroid/app/Activity;IIIZ)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "layoutResId"    # I
    .param p2, "viewFinderViewResId"    # I
    .param p3, "previewViewResId"    # I
    .param p4, "useFrontLight"    # Z

    .prologue
    .line 27
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ljim/h/common/android/zxinglib/CaptureActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "layoutResId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 29
    const-string v1, "viewFinderViewResId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30
    const-string v1, "previewViewResId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 31
    const-string v1, "useFrontLight"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 32
    const v1, 0xba7c0de

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 33
    return-void
.end method

.method public static parseActivityResult(IILandroid/content/Intent;)Ljim/h/common/android/zxinglib/integrator/IntentResult;
    .locals 4
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 36
    const v2, 0xba7c0de

    if-ne p0, v2, :cond_1

    .line 37
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 38
    const-string v2, "SCAN_RESULT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "contents":Ljava/lang/String;
    const-string v2, "SCAN_RESULT_FORMAT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "formatName":Ljava/lang/String;
    new-instance v2, Ljim/h/common/android/zxinglib/integrator/IntentResult;

    invoke-direct {v2, v0, v1}, Ljim/h/common/android/zxinglib/integrator/IntentResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .end local v0    # "contents":Ljava/lang/String;
    .end local v1    # "formatName":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 42
    :cond_0
    new-instance v2, Ljim/h/common/android/zxinglib/integrator/IntentResult;

    invoke-direct {v2, v3, v3}, Ljim/h/common/android/zxinglib/integrator/IntentResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 45
    goto :goto_0
.end method
