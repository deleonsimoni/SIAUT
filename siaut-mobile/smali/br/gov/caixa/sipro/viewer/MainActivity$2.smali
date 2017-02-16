.class Lbr/gov/caixa/sipro/viewer/MainActivity$2;
.super Landroid/webkit/WebChromeClient;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/gov/caixa/sipro/viewer/MainActivity;->initWebView(Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;


# direct methods
.method constructor <init>(Lbr/gov/caixa/sipro/viewer/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$2;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    .line 287
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "sourceID"    # Ljava/lang/String;

    .prologue
    .line 298
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$2;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    # getter for: Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;
    invoke-static {v0}, Lbr/gov/caixa/sipro/viewer/MainActivity;->access$0(Lbr/gov/caixa/sipro/viewer/MainActivity;)Lbr/gov/caixa/sipro/viewer/Logger;

    move-result-object v0

    const-string v1, "WebClient"

    invoke-virtual {v0, v1, p1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 3
    .param p1, "cm"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 291
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$2;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    # getter for: Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;
    invoke-static {v0}, Lbr/gov/caixa/sipro/viewer/MainActivity;->access$0(Lbr/gov/caixa/sipro/viewer/MainActivity;)Lbr/gov/caixa/sipro/viewer/Logger;

    move-result-object v0

    const-string v1, "WebClient"

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const/4 v0, 0x1

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 302
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 303
    return-void
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 3
    .param p1, "requiredStorage"    # J
    .param p3, "quota"    # J
    .param p5, "quotaUpdater"    # Landroid/webkit/WebStorage$QuotaUpdater;

    .prologue
    .line 307
    const-wide/16 v0, 0x2

    mul-long/2addr v0, p1

    invoke-interface {p5, v0, v1}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 308
    return-void
.end method
