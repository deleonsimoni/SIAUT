.class public Lbr/gov/caixa/sipro/viewer/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# static fields
.field private static final TTS_CHECK_CODE:I = 0x22b

.field private static activity:Lbr/gov/caixa/sipro/viewer/MainActivity;


# instance fields
.field public TARGET_URL:Ljava/lang/String;

.field private TTSEngine:Landroid/speech/tts/TextToSpeech;

.field public TTSInitMessage:Ljava/lang/String;

.field public cmdRetry:Landroid/widget/ImageButton;

.field private failLoading:Z

.field private global:Lbr/gov/caixa/sipro/viewer/Global;

.field private jsInterface:Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;

.field private log:Lbr/gov/caixa/sipro/viewer/Logger;

.field private notifyExit:Z

.field public splash:Landroid/widget/RelativeLayout;

.field public webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    sput-object v0, Lbr/gov/caixa/sipro/viewer/MainActivity;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    iput-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->webView:Landroid/webkit/WebView;

    .line 48
    iput-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->TARGET_URL:Ljava/lang/String;

    .line 50
    invoke-static {}, Lbr/gov/caixa/sipro/viewer/Global;->getInstance()Lbr/gov/caixa/sipro/viewer/Global;

    move-result-object v0

    iput-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->global:Lbr/gov/caixa/sipro/viewer/Global;

    .line 51
    new-instance v0, Lbr/gov/caixa/sipro/viewer/Logger;

    const-class v1, Lbr/gov/caixa/sipro/viewer/MainActivity;

    invoke-direct {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    .line 52
    iput-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->jsInterface:Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;

    .line 53
    iput-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->cmdRetry:Landroid/widget/ImageButton;

    .line 54
    iput-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->splash:Landroid/widget/RelativeLayout;

    .line 58
    iput-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->TTSEngine:Landroid/speech/tts/TextToSpeech;

    .line 59
    const-string v0, "Suporte audiovisual ativado"

    iput-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->TTSInitMessage:Ljava/lang/String;

    .line 67
    iput-boolean v3, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->notifyExit:Z

    .line 69
    iput-boolean v3, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->failLoading:Z

    .line 80
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v1, "MainActivity()"

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method static synthetic access$0(Lbr/gov/caixa/sipro/viewer/MainActivity;)Lbr/gov/caixa/sipro/viewer/Logger;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    return-object v0
.end method

.method static synthetic access$1(Lbr/gov/caixa/sipro/viewer/MainActivity;)Lbr/gov/caixa/sipro/viewer/Global;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->global:Lbr/gov/caixa/sipro/viewer/Global;

    return-object v0
.end method

.method static synthetic access$2(Lbr/gov/caixa/sipro/viewer/MainActivity;)Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->failLoading:Z

    return v0
.end method

.method static synthetic access$3(Lbr/gov/caixa/sipro/viewer/MainActivity;Z)V
    .locals 0

    .prologue
    .line 69
    iput-boolean p1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->failLoading:Z

    return-void
.end method

.method static synthetic access$4(Lbr/gov/caixa/sipro/viewer/MainActivity;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->TTSEngine:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$5()Lbr/gov/caixa/sipro/viewer/MainActivity;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lbr/gov/caixa/sipro/viewer/MainActivity;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    return-object v0
.end method

.method public static getContext()Lbr/gov/caixa/sipro/viewer/MainActivity;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lbr/gov/caixa/sipro/viewer/MainActivity;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    return-object v0
.end method

.method private initConfig()Z
    .locals 5

    .prologue
    .line 170
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v3, "initConfig()"

    invoke-virtual {v2, v3}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 171
    const/4 v1, 0x0

    .line 174
    .local v1, "result":Z
    :try_start_0
    const-string v2, "target_url_default"

    invoke-static {v2}, Lbr/gov/caixa/sipro/viewer/Global;->getManifest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->TARGET_URL:Ljava/lang/String;

    .line 175
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TARGET_URL: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->TARGET_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    const/4 v1, 0x1

    .line 195
    :goto_0
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initConfig(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 196
    return v1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v3, "Erro ao inicializar configura\u00e7\u00f5es"

    invoke-virtual {v2, v3, v0}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public complementTTS(Ljava/lang/String;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 850
    iget-object v4, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "complementTTS("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 853
    move-object v2, p1

    .line 854
    .local v2, "talkMessage":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lbr/gov/caixa/sipro/viewer/Global;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 856
    const-string v3, ""

    .line 857
    .local v3, "temp":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v1, v4, :cond_2

    .line 860
    move-object v2, v3

    .line 863
    .end local v1    # "i":I
    .end local v3    # "temp":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->TTSEngine:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_1

    .line 864
    iget-object v4, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->TTSEngine:Landroid/speech/tts/TextToSpeech;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 869
    :cond_1
    :goto_1
    return-void

    .line 858
    .restart local v1    # "i":I
    .restart local v3    # "temp":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 857
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 866
    .end local v1    # "i":I
    .end local v3    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 867
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v5, "Falha ao suportar TTS"

    invoke-virtual {v4, v5, v0}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public disableTTS(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 784
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v1, "disableTTS()"

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 785
    invoke-virtual {p0}, Lbr/gov/caixa/sipro/viewer/MainActivity;->isTTSEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 787
    invoke-virtual {p0, p1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->talkTTS(Ljava/lang/String;)V

    .line 791
    :cond_0
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    :goto_0
    invoke-virtual {p0}, Lbr/gov/caixa/sipro/viewer/MainActivity;->isTTSTalking()Z

    move-result v0

    if-nez v0, :cond_0

    .line 796
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->TTSEngine:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 798
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->TTSEngine:Landroid/speech/tts/TextToSpeech;

    .line 799
    return-void

    .line 792
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public initWebView(Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "clearCache"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v4, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initWebView("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 227
    const/4 v2, 0x0

    .line 231
    .local v2, "result":Z
    if-eqz p1, :cond_0

    .line 232
    :try_start_0
    iget-object v4, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->stopLoading()V

    .line 233
    if-eqz p2, :cond_1

    .line 234
    iget-object v4, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->global:Lbr/gov/caixa/sipro/viewer/Global;

    const-string v5, "recarregando..."

    invoke-virtual {v4, v5}, Lbr/gov/caixa/sipro/viewer/Global;->showProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    .line 235
    iget-object v4, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->clearFormData()V

    .line 236
    iget-object v4, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->webView:Landroid/webkit/WebView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 242
    :cond_0
    :goto_0
    iget-object v4, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 243
    .local v3, "webSettings":Landroid/webkit/WebSettings;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 244
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 245
    iget-object v4, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->webView:Landroid/webkit/WebView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 246
    sget-object v4, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 247
    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "agent":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "NATIVEAPP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-virtual {v3, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 252
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 256
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 257
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 260
    iget-object v4, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->webView:Landroid/webkit/WebView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 261
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 262
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 263
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 284
    new-instance v4, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;

    invoke-direct {v4, p0}, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;-><init>(Lbr/gov/caixa/sipro/viewer/MainActivity;)V

    iput-object v4, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->jsInterface:Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;

    .line 285
    iget-object v4, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->webView:Landroid/webkit/WebView;

    iget-object v5, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->jsInterface:Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;

    const-string v6, "JSInterface"

    invoke-virtual {v4, v5, v6}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    iget-object v4, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v5, Lbr/gov/caixa/sipro/viewer/MainActivity$2;

    invoke-direct {v5, p0}, Lbr/gov/caixa/sipro/viewer/MainActivity$2;-><init>(Lbr/gov/caixa/sipro/viewer/MainActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 313
    iget-object v4, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v5, Lbr/gov/caixa/sipro/viewer/MainActivity$3;

    invoke-direct {v5, p0}, Lbr/gov/caixa/sipro/viewer/MainActivity$3;-><init>(Lbr/gov/caixa/sipro/viewer/MainActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 324
    iget-object v4, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->webView:Landroid/webkit/WebView;

    new-instance v5, Lbr/gov/caixa/sipro/viewer/MainActivity$4;

    invoke-direct {v5, p0}, Lbr/gov/caixa/sipro/viewer/MainActivity$4;-><init>(Lbr/gov/caixa/sipro/viewer/MainActivity;)V

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 416
    if-eqz p1, :cond_2

    .line 417
    iget-object v4, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "starting loading page on: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0, p1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->loadUrl(Ljava/lang/String;)V

    .line 426
    :goto_1
    const/4 v2, 0x1

    .line 430
    .end local v0    # "agent":Ljava/lang/String;
    .end local v3    # "webSettings":Landroid/webkit/WebSettings;
    :goto_2
    return v2

    .line 238
    :cond_1
    iget-object v4, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->global:Lbr/gov/caixa/sipro/viewer/Global;

    const-string v5, "Carregando..."

    invoke-virtual {v4, v5}, Lbr/gov/caixa/sipro/viewer/Global;->showProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 427
    :catch_0
    move-exception v1

    .line 428
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v5, "Erro ao inicializar a WebView"

    invoke-virtual {v4, v5, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2

    .line 421
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "agent":Ljava/lang/String;
    .restart local v3    # "webSettings":Landroid/webkit/WebSettings;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->webView:Landroid/webkit/WebView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 422
    const v4, 0x7f070002

    invoke-virtual {p0, v4}, Lbr/gov/caixa/sipro/viewer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public initializeTTS(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 771
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initializeTTS("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 773
    if-eqz p1, :cond_0

    .line 774
    iput-object p1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->TTSInitMessage:Ljava/lang/String;

    .line 776
    :cond_0
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TTSInitMessage: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->TTSInitMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 778
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 779
    .local v0, "checkTTSIntent":Landroid/content/Intent;
    const-string v1, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 780
    const/16 v1, 0x22b

    invoke-virtual {p0, v0, v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 781
    return-void
.end method

.method public isTTSEnabled()Z
    .locals 2

    .prologue
    .line 807
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->TTSEngine:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 810
    .local v0, "result":Z
    :goto_0
    return v0

    .line 807
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTTSTalking()Z
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->TTSEngine:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    return v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadUrl("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->failLoading:Z

    .line 204
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 471
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onActivityResult("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",[data])"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 473
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 474
    sparse-switch p1, :sswitch_data_0

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 476
    :sswitch_0
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v3, "onActivityResult:reportScan"

    invoke-virtual {v2, v3}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 478
    invoke-static {p1, p2, p3}, Ljim/h/common/android/zxinglib/integrator/IntentIntegrator;->parseActivityResult(IILandroid/content/Intent;)Ljim/h/common/android/zxinglib/integrator/IntentResult;

    move-result-object v1

    .line 479
    .local v1, "scanResult":Ljim/h/common/android/zxinglib/integrator/IntentResult;
    invoke-virtual {v1}, Ljim/h/common/android/zxinglib/integrator/IntentResult;->getContents()Ljava/lang/String;

    move-result-object v0

    .line 480
    .local v0, "content":Ljava/lang/String;
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 481
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->jsInterface:Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;

    invoke-virtual {v2, v0}, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->reportScan(Ljava/lang/String;)V

    goto :goto_0

    .line 485
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "scanResult":Ljim/h/common/android/zxinglib/integrator/IntentResult;
    :sswitch_1
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v3, "onActivityResult:TTS_CHECK_CODE"

    invoke-virtual {v2, v3}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 486
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 487
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v3, "TTS_CHECK_CODE:CHECK_VOICE_DATA_PASS"

    invoke-virtual {v2, v3}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 488
    new-instance v2, Landroid/speech/tts/TextToSpeech;

    new-instance v3, Lbr/gov/caixa/sipro/viewer/MainActivity$5;

    invoke-direct {v3, p0}, Lbr/gov/caixa/sipro/viewer/MainActivity$5;-><init>(Lbr/gov/caixa/sipro/viewer/MainActivity;)V

    invoke-direct {v2, p0, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->TTSEngine:Landroid/speech/tts/TextToSpeech;

    goto :goto_0

    .line 474
    :sswitch_data_0
    .sparse-switch
        0x22b -> :sswitch_1
        0xba7c0de -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 112
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v3, "onCreate(savedInstanceState)"

    invoke-virtual {v1, v3}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 114
    :try_start_0
    sput-object p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    .line 117
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v3, "onCreate()"

    invoke-virtual {v1, v3}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "vers\u00e3o: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lbr/gov/caixa/sipro/viewer/Global;->getVersionNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pacote: 1.0 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lbr/gov/caixa/sipro/viewer/Global;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "data: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lbr/gov/caixa/sipro/viewer/Global;->getPackageDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lbr/gov/caixa/sipro/viewer/MainActivity;->initConfig()Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->global:Lbr/gov/caixa/sipro/viewer/Global;

    const-string v2, "Falha ao inicializar configura\u00e7\u00f5es"

    invoke-virtual {v1, v2}, Lbr/gov/caixa/sipro/viewer/Global;->showErrorDialog(Ljava/lang/String;)V

    .line 166
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 131
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->setContentView(I)V

    .line 134
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->webView:Landroid/webkit/WebView;

    if-nez v1, :cond_1

    .line 135
    const v1, 0x7f070001

    invoke-virtual {p0, v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    iput-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->webView:Landroid/webkit/WebView;

    .line 138
    :cond_1
    const v1, 0x7f070002

    invoke-virtual {p0, v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->splash:Landroid/widget/RelativeLayout;

    .line 140
    const v1, 0x7f070004

    invoke-virtual {p0, v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->cmdRetry:Landroid/widget/ImageButton;

    .line 141
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->cmdRetry:Landroid/widget/ImageButton;

    new-instance v3, Lbr/gov/caixa/sipro/viewer/MainActivity$1;

    invoke-direct {v3, p0}, Lbr/gov/caixa/sipro/viewer/MainActivity$1;-><init>(Lbr/gov/caixa/sipro/viewer/MainActivity;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "savedInstanceState is null: "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 153
    if-nez p1, :cond_3

    .line 154
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->TARGET_URL:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lbr/gov/caixa/sipro/viewer/MainActivity;->initWebView(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v2, "Erro ao criar Activity"

    invoke-virtual {v1, v2, v0}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move v1, v2

    .line 151
    goto :goto_1

    .line 157
    :cond_3
    :try_start_1
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 158
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lbr/gov/caixa/sipro/viewer/MainActivity;->initWebView(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 903
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v3, "onCreateOptionsMenu()"

    invoke-virtual {v2, v3}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 905
    :try_start_0
    invoke-virtual {p0}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 906
    .local v1, "inflater":Landroid/view/MenuInflater;
    const/high16 v2, 0x7f060000

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    .end local v1    # "inflater":Landroid/view/MenuInflater;
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 907
    :catch_0
    move-exception v0

    .line 908
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v3, "Erro criar menu de opcoes"

    invoke-virtual {v2, v3, v0}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 890
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->TTSEngine:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 891
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->TTSEngine:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 897
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 898
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 435
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v3, "onKeyDown()"

    invoke-virtual {v2, v3}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 437
    :try_start_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 438
    packed-switch p1, :pswitch_data_0

    .line 464
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 440
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v3, "KEYCODE_BACK"

    invoke-virtual {v2, v3}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 441
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "canGoBack(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 442
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->webView:Landroid/webkit/WebView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 445
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->goBack()V

    .line 446
    const/4 v2, 0x0

    iput-boolean v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->notifyExit:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v2, "Erro ao processar user input"

    invoke-virtual {v1, v2, v0}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 448
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_2
    iget-boolean v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->notifyExit:Z

    if-nez v2, :cond_2

    .line 449
    const/4 v2, 0x1

    iput-boolean v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->notifyExit:Z

    .line 450
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->global:Lbr/gov/caixa/sipro/viewer/Global;

    const-string v3, "Pressione novamente para sair"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lbr/gov/caixa/sipro/viewer/Global;->showToast(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 453
    :cond_2
    invoke-virtual {p0}, Lbr/gov/caixa/sipro/viewer/MainActivity;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 438
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 916
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v3, "onOptionsItemSelected()"

    invoke-virtual {v2, v3}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 918
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 926
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 930
    :goto_0
    return v1

    .line 920
    :pswitch_0
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->TARGET_URL:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lbr/gov/caixa/sipro/viewer/MainActivity;->initWebView(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 928
    :catch_0
    move-exception v0

    .line 929
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v2, "Erro ao processar menu"

    invoke-virtual {v1, v2, v0}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 930
    const/4 v1, 0x0

    goto :goto_0

    .line 923
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2}, Lbr/gov/caixa/sipro/viewer/MainActivity;->shutdown(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 918
    :pswitch_data_0
    .packed-switch 0x7f07000e
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 104
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v1, "onRestart()"

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 543
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v1, "onRestoreInstanceState()"

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 544
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 545
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->webView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 546
    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Lbr/gov/caixa/sipro/viewer/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->webView:Landroid/webkit/WebView;

    .line 548
    :cond_0
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 549
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 93
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v1, "onResume()"

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 536
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v1, "onSaveInstanceState()"

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 537
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 538
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 539
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 87
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v1, "onStart()"

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 526
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 527
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v1, "onStop"

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 531
    return-void
.end method

.method public shutdown(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 872
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v1, "shutdown()"

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 873
    if-eqz p1, :cond_0

    sget-object v0, Lbr/gov/caixa/sipro/viewer/MainActivity;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    invoke-static {v0, p1}, Lbr/gov/caixa/sipro/viewer/Global;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 876
    :cond_0
    invoke-virtual {p0}, Lbr/gov/caixa/sipro/viewer/MainActivity;->isTTSEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 877
    invoke-virtual {p0, p1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->talkTTS(Ljava/lang/String;)V

    .line 878
    :goto_0
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->TTSEngine:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    if-nez v0, :cond_2

    .line 885
    :cond_1
    sget-object v0, Lbr/gov/caixa/sipro/viewer/MainActivity;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    invoke-virtual {v0}, Lbr/gov/caixa/sipro/viewer/MainActivity;->finish()V

    .line 886
    return-void

    .line 880
    :cond_2
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 881
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public talkTTS(Ljava/lang/String;)V
    .locals 7
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 826
    iget-object v4, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "talkTTS("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 830
    move-object v2, p1

    .line 831
    .local v2, "talkMessage":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Lbr/gov/caixa/sipro/viewer/Global;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 833
    const-string v3, ""

    .line 834
    .local v3, "temp":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v1, v4, :cond_2

    .line 837
    move-object v2, v3

    .line 841
    .end local v1    # "i":I
    .end local v3    # "temp":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->TTSEngine:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_1

    .line 842
    iget-object v4, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->TTSEngine:Landroid/speech/tts/TextToSpeech;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 847
    :cond_1
    :goto_1
    return-void

    .line 835
    .restart local v1    # "i":I
    .restart local v3    # "temp":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 834
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 844
    .end local v1    # "i":I
    .end local v3    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 845
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v5, "Falha ao suportar TTS"

    invoke-virtual {v4, v5, v0}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method
