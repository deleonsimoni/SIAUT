.class Lbr/gov/caixa/sipro/viewer/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/gov/caixa/sipro/viewer/MainActivity;->onActivityResult(IILandroid/content/Intent;)V
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
    iput-object p1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$5;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 4
    .param p1, "status"    # I

    .prologue
    .line 492
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$5;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    # getter for: Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;
    invoke-static {v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->access$0(Lbr/gov/caixa/sipro/viewer/MainActivity;)Lbr/gov/caixa/sipro/viewer/Logger;

    move-result-object v1

    const-string v2, "onInit()"

    invoke-virtual {v1, v2}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 493
    if-nez p1, :cond_3

    .line 495
    new-instance v0, Ljava/util/Locale;

    const-string v1, "pt"

    const-string v2, "BR"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .local v0, "locale":Ljava/util/Locale;
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$5;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    # getter for: Lbr/gov/caixa/sipro/viewer/MainActivity;->TTSEngine:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->access$4(Lbr/gov/caixa/sipro/viewer/MainActivity;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    if-nez v1, :cond_1

    .line 513
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_0
    :goto_0
    return-void

    .line 498
    .restart local v0    # "locale":Ljava/util/Locale;
    :cond_1
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$5;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    # getter for: Lbr/gov/caixa/sipro/viewer/MainActivity;->TTSEngine:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->access$4(Lbr/gov/caixa/sipro/viewer/MainActivity;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 499
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$5;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    # getter for: Lbr/gov/caixa/sipro/viewer/MainActivity;->TTSEngine:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->access$4(Lbr/gov/caixa/sipro/viewer/MainActivity;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 500
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$5;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    # getter for: Lbr/gov/caixa/sipro/viewer/MainActivity;->TTSEngine:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->access$4(Lbr/gov/caixa/sipro/viewer/MainActivity;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 501
    :cond_2
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$5;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    # getter for: Lbr/gov/caixa/sipro/viewer/MainActivity;->TTSEngine:Landroid/speech/tts/TextToSpeech;
    invoke-static {v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->access$4(Lbr/gov/caixa/sipro/viewer/MainActivity;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 502
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$5;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    # getter for: Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;
    invoke-static {v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->access$0(Lbr/gov/caixa/sipro/viewer/MainActivity;)Lbr/gov/caixa/sipro/viewer/Logger;

    move-result-object v1

    const-string v2, "set locale pt_BR"

    invoke-virtual {v1, v2}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 504
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$5;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    # getter for: Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;
    invoke-static {v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->access$0(Lbr/gov/caixa/sipro/viewer/MainActivity;)Lbr/gov/caixa/sipro/viewer/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TTSInitMessage: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$5;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    iget-object v3, v3, Lbr/gov/caixa/sipro/viewer/MainActivity;->TTSInitMessage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 505
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$5;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$5;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    iget-object v2, v2, Lbr/gov/caixa/sipro/viewer/MainActivity;->TTSInitMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lbr/gov/caixa/sipro/viewer/MainActivity;->talkTTS(Ljava/lang/String;)V

    goto :goto_0

    .line 510
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_3
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 511
    # getter for: Lbr/gov/caixa/sipro/viewer/MainActivity;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;
    invoke-static {}, Lbr/gov/caixa/sipro/viewer/MainActivity;->access$5()Lbr/gov/caixa/sipro/viewer/MainActivity;

    move-result-object v1

    const-string v2, "Falha ao inicializar suporte"

    invoke-static {v1, v2}, Lbr/gov/caixa/sipro/viewer/Global;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
