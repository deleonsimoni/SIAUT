.class public final Ljim/h/common/android/zxinglib/integrator/IntentResult;
.super Ljava/lang/Object;
.source "IntentResult.java"


# instance fields
.field private final contents:Ljava/lang/String;

.field private final formatName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "contents"    # Ljava/lang/String;
    .param p2, "formatName"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Ljim/h/common/android/zxinglib/integrator/IntentResult;->contents:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Ljim/h/common/android/zxinglib/integrator/IntentResult;->formatName:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getContents()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Ljim/h/common/android/zxinglib/integrator/IntentResult;->contents:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Ljim/h/common/android/zxinglib/integrator/IntentResult;->formatName:Ljava/lang/String;

    return-object v0
.end method
