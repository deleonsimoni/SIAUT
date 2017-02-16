.class Lbr/gov/caixa/sipro/viewer/MainActivity$4;
.super Landroid/webkit/WebViewClient;
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
    iput-object p1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$4;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    .line 324
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 329
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 330
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 357
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$4;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    # getter for: Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;
    invoke-static {v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->access$0(Lbr/gov/caixa/sipro/viewer/MainActivity;)Lbr/gov/caixa/sipro/viewer/Logger;

    move-result-object v1

    const-string v2, "onPageFinished()"

    invoke-virtual {v1, v2}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 361
    :try_start_0
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$4;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    # getter for: Lbr/gov/caixa/sipro/viewer/MainActivity;->global:Lbr/gov/caixa/sipro/viewer/Global;
    invoke-static {v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->access$1(Lbr/gov/caixa/sipro/viewer/MainActivity;)Lbr/gov/caixa/sipro/viewer/Global;

    move-result-object v1

    invoke-virtual {v1}, Lbr/gov/caixa/sipro/viewer/Global;->dismissProgressDialog()V

    .line 362
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$4;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    # getter for: Lbr/gov/caixa/sipro/viewer/MainActivity;->failLoading:Z
    invoke-static {v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->access$2(Lbr/gov/caixa/sipro/viewer/MainActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$4;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    iget-object v1, v1, Lbr/gov/caixa/sipro/viewer/MainActivity;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 364
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$4;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    iget-object v1, v1, Lbr/gov/caixa/sipro/viewer/MainActivity;->splash:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 365
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$4;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    iget-object v1, v1, Lbr/gov/caixa/sipro/viewer/MainActivity;->cmdRetry:Landroid/widget/ImageButton;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$4;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    # getter for: Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;
    invoke-static {v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->access$0(Lbr/gov/caixa/sipro/viewer/MainActivity;)Lbr/gov/caixa/sipro/viewer/Logger;

    move-result-object v1

    const-string v2, "Erro ao processar conclusao de pagina"

    invoke-virtual {v1, v2, v0}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 350
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 351
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$4;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    # getter for: Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;
    invoke-static {v0}, Lbr/gov/caixa/sipro/viewer/MainActivity;->access$0(Lbr/gov/caixa/sipro/viewer/MainActivity;)Lbr/gov/caixa/sipro/viewer/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageStarted("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 388
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$4;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    # getter for: Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;
    invoke-static {v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->access$0(Lbr/gov/caixa/sipro/viewer/MainActivity;)Lbr/gov/caixa/sipro/viewer/Logger;

    move-result-object v1

    const-string v2, "onReceivedError()"

    invoke-virtual {v1, v2}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 389
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 391
    :try_start_0
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$4;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lbr/gov/caixa/sipro/viewer/MainActivity;->access$3(Lbr/gov/caixa/sipro/viewer/MainActivity;Z)V

    .line 392
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$4;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    iget-object v1, v1, Lbr/gov/caixa/sipro/viewer/MainActivity;->webView:Landroid/webkit/WebView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 393
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$4;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    iget-object v1, v1, Lbr/gov/caixa/sipro/viewer/MainActivity;->splash:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 394
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$4;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    iget-object v1, v1, Lbr/gov/caixa/sipro/viewer/MainActivity;->cmdRetry:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 396
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$4;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    # getter for: Lbr/gov/caixa/sipro/viewer/MainActivity;->global:Lbr/gov/caixa/sipro/viewer/Global;
    invoke-static {v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->access$1(Lbr/gov/caixa/sipro/viewer/MainActivity;)Lbr/gov/caixa/sipro/viewer/Global;

    move-result-object v1

    invoke-virtual {v1}, Lbr/gov/caixa/sipro/viewer/Global;->dismissProgressDialog()V

    .line 397
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$4;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    # getter for: Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;
    invoke-static {v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->access$0(Lbr/gov/caixa/sipro/viewer/MainActivity;)Lbr/gov/caixa/sipro/viewer/Logger;

    move-result-object v1

    const-string v2, "onReceivedError()"

    invoke-virtual {v1, v2}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$4;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    # getter for: Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;
    invoke-static {v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->access$0(Lbr/gov/caixa/sipro/viewer/MainActivity;)Lbr/gov/caixa/sipro/viewer/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "errorCode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$4;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    # getter for: Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;
    invoke-static {v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->access$0(Lbr/gov/caixa/sipro/viewer/MainActivity;)Lbr/gov/caixa/sipro/viewer/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "description: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$4;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    # getter for: Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;
    invoke-static {v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->access$0(Lbr/gov/caixa/sipro/viewer/MainActivity;)Lbr/gov/caixa/sipro/viewer/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failingUrl: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 407
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$4;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    # getter for: Lbr/gov/caixa/sipro/viewer/MainActivity;->global:Lbr/gov/caixa/sipro/viewer/Global;
    invoke-static {v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->access$1(Lbr/gov/caixa/sipro/viewer/MainActivity;)Lbr/gov/caixa/sipro/viewer/Global;

    move-result-object v1

    const-string v2, "Falha ao conectar servidor\nVerifique sua conex\u00e3o internet."

    invoke-virtual {v1, v2}, Lbr/gov/caixa/sipro/viewer/Global;->showErrorDialog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_0
    return-void

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$4;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    # getter for: Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;
    invoke-static {v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->access$0(Lbr/gov/caixa/sipro/viewer/MainActivity;)Lbr/gov/caixa/sipro/viewer/Logger;

    move-result-object v1

    const-string v2, "Erro ao processar falha de HTTP"

    invoke-virtual {v1, v2, v0}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "handler"    # Landroid/webkit/SslErrorHandler;
    .param p3, "error"    # Landroid/net/http/SslError;

    .prologue
    .line 380
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$4;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    # getter for: Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;
    invoke-static {v0}, Lbr/gov/caixa/sipro/viewer/MainActivity;->access$0(Lbr/gov/caixa/sipro/viewer/MainActivity;)Lbr/gov/caixa/sipro/viewer/Logger;

    move-result-object v0

    const-string v1, "onReceivedSslError()"

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$4;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->access$3(Lbr/gov/caixa/sipro/viewer/MainActivity;Z)V

    .line 382
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 384
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 337
    :try_start_0
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$4;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    iget-object v2, v2, Lbr/gov/caixa/sipro/viewer/MainActivity;->TARGET_URL:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "source":Ljava/lang/String;
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$4;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    invoke-virtual {v2}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 340
    .local v0, "data":Ljava/io/InputStream;
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$4;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    # getter for: Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;
    invoke-static {v2}, Lbr/gov/caixa/sipro/viewer/MainActivity;->access$0(Lbr/gov/caixa/sipro/viewer/MainActivity;)Lbr/gov/caixa/sipro/viewer/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "loadLocal: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 341
    new-instance v2, Landroid/webkit/WebResourceResponse;

    const-string v3, "text/css"

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .end local v0    # "data":Ljava/io/InputStream;
    .end local v1    # "source":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 342
    :catch_0
    move-exception v2

    .line 345
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    goto :goto_0
.end method
