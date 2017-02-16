.class public Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;
.super Ljava/lang/Object;
.source "JavaScriptInterface.java"


# instance fields
.field private activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

.field private cam:Landroid/hardware/Camera;

.field private log:Lbr/gov/caixa/sipro/viewer/Logger;

.field private useLight:Z


# direct methods
.method public constructor <init>(Lbr/gov/caixa/sipro/viewer/MainActivity;)V
    .locals 2
    .param p1, "activiy"    # Lbr/gov/caixa/sipro/viewer/MainActivity;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lbr/gov/caixa/sipro/viewer/Logger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->cam:Landroid/hardware/Camera;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->useLight:Z

    .line 37
    iput-object p1, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    .line 38
    return-void
.end method

.method private lightOff()Z
    .locals 4

    .prologue
    .line 410
    const/4 v1, 0x0

    .line 412
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->cam:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->cam:Landroid/hardware/Camera;

    .line 414
    :cond_0
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->cam:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 415
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->cam:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 420
    :goto_0
    return v1

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v3, "Erro ao encerrar Flash"

    invoke-virtual {v2, v3, v0}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private lightOn()Z
    .locals 5

    .prologue
    .line 390
    const/4 v2, 0x0

    .line 392
    .local v2, "result":Z
    :try_start_0
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v3

    iput-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->cam:Landroid/hardware/Camera;

    .line 393
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->cam:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 394
    .local v1, "params":Landroid/hardware/Camera$Parameters;
    const-string v3, "torch"

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 395
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->cam:Landroid/hardware/Camera;

    invoke-virtual {v3, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 396
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->cam:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->startPreview()V

    .line 397
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->cam:Landroid/hardware/Camera;

    new-instance v4, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface$1;

    invoke-direct {v4, p0}, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface$1;-><init>(Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;)V

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    const/4 v2, 0x1

    .line 406
    .end local v1    # "params":Landroid/hardware/Camera$Parameters;
    :goto_0
    return v2

    .line 402
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v4, "Erro ao iniciar Flash"

    invoke-virtual {v3, v4, v0}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 295
    iget-object v7, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "writeFile([content],"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 300
    const/4 v3, 0x0

    .line 302
    .local v3, "file":Ljava/io/File;
    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v7}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 304
    .local v6, "tempdir":Ljava/io/File;
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 306
    .end local v3    # "file":Ljava/io/File;
    .local v4, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 307
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 309
    :cond_0
    const-string v7, "data:application/pdf;base64,"

    const-string v8, ""

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, "dataText":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-static {v1, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 312
    .local v0, "data":[B
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 313
    .local v5, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 314
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 315
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v4

    .line 322
    .end local v0    # "data":[B
    .end local v1    # "dataText":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "file":Ljava/io/File;
    :goto_0
    return-object v3

    .line 317
    :catch_0
    move-exception v2

    .line 318
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_1
    iget-object v7, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v8, "Erro ao processar download"

    invoke-virtual {v7, v8, v2}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 319
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 320
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    iget-object v7, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v8, "Erro ao gravar arquivo de download"

    invoke-virtual {v7, v8, v2}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 319
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :catch_2
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_2

    .line 317
    .end local v3    # "file":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    :catch_3
    move-exception v2

    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    goto :goto_1
.end method


# virtual methods
.method public addReconCommand(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addReconCommand("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public beep()V
    .locals 4

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x1

    .line 453
    new-instance v0, Landroid/media/ToneGenerator;

    invoke-direct {v0, v1, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 454
    .local v0, "toneGenerator":Landroid/media/ToneGenerator;
    invoke-virtual {v0, v1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 456
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :goto_0
    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 460
    return-void

    .line 457
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public clipCopy(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "clipCopy("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 175
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-ge v3, v4, :cond_0

    .line 176
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 177
    .local v1, "clipboard":Landroid/text/ClipboardManager;
    invoke-virtual {v1, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 184
    .end local v1    # "clipboard":Landroid/text/ClipboardManager;
    :goto_0
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    const-string v4, "copiado para a \u00e1rea de transfer\u00eancia"

    invoke-static {v3, v4}, Lbr/gov/caixa/sipro/viewer/Global;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 188
    :goto_1
    return-void

    .line 179
    :cond_0
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    .line 180
    .local v1, "clipboard":Landroid/content/ClipboardManager;
    const-string v3, "Copied Text"

    invoke-static {v3, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 181
    .local v0, "clip":Landroid/content/ClipData;
    invoke-virtual {v1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    .end local v0    # "clip":Landroid/content/ClipData;
    .end local v1    # "clipboard":Landroid/content/ClipboardManager;
    :catch_0
    move-exception v2

    .line 186
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v4, "Falha ao copiar para a \u00e1rea de transfer\u00eancia"

    invoke-virtual {v3, v4, v2}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public complementTTS(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "complementTTS("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->isTTSEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    invoke-virtual {v0, p1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->complementTTS(Ljava/lang/String;)V

    .line 130
    :cond_0
    return-void
.end method

.method public disableTTS(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v1, "disableTTS()"

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    invoke-virtual {v0, p1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->disableTTS(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public email(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "email: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 266
    const/4 v2, 0x0

    .line 268
    .local v2, "result":Z
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDTO"

    const-string v4, "mailto"

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 269
    .local v1, "emailIntent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    const-string v4, "Send email..."

    invoke-static {v1, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbr/gov/caixa/sipro/viewer/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    const/4 v2, 0x1

    .line 276
    .end local v1    # "emailIntent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v4, "Erro ao iniciar Email"

    invoke-virtual {v3, v4, v0}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getHolder()Ljava/lang/String;
    .locals 4

    .prologue
    .line 145
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v3, "getHosName()"

    invoke-virtual {v2, v3}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 146
    const/4 v1, 0x0

    .line 148
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    const/high16 v3, 0x7f050000

    invoke-virtual {v2, v3}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 152
    :goto_0
    return-object v1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v3, "Falha ao obter nome"

    invoke-virtual {v2, v3, v0}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getPlatformName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 134
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v3, "getPlatformName()"

    invoke-virtual {v2, v3}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 135
    const/4 v1, 0x0

    .line 137
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    const v3, 0x7f050001

    invoke-virtual {v2, v3}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 141
    :goto_0
    return-object v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v3, "Falha ao obter nome"

    invoke-virtual {v2, v3, v0}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 52
    move-object v1, p2

    .line 55
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {p1, p2}, Lbr/gov/caixa/sipro/viewer/Global;->PreferenceRead(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 59
    :goto_0
    return-object v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Falha ao obter preferencias da chave "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public hideKeyboard()Z
    .locals 5

    .prologue
    .line 424
    const/4 v2, 0x0

    .line 426
    .local v2, "result":Z
    :try_start_0
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    invoke-virtual {v3}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 427
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 428
    .local v1, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    invoke-virtual {v3}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    const/4 v2, 0x1

    .line 435
    .end local v1    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    return v2

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v4, "Erro ao encerrar Flash"

    invoke-virtual {v3, v4, v0}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public initRecon()V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v1, "initRecon()"

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public initTTS(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initTTS("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    invoke-virtual {v0, p1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->initializeTTS(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public isReconSupported()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, "result":Z
    return v0
.end method

.method public isTTSEnabled()Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    invoke-virtual {v0}, Lbr/gov/caixa/sipro/viewer/MainActivity;->isTTSEnabled()Z

    move-result v0

    return v0
.end method

.method public light(Ljava/lang/String;)Z
    .locals 5
    .param p1, "turnon"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "light("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 192
    const/4 v1, 0x0

    .line 194
    .local v1, "result":Z
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->useLight:Z

    .line 195
    iget-boolean v2, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->useLight:Z

    if-eqz v2, :cond_0

    .line 196
    invoke-direct {p0}, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->lightOn()Z

    .line 200
    :goto_0
    const/4 v1, 0x1

    .line 204
    :goto_1
    return v1

    .line 198
    :cond_0
    invoke-direct {p0}, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->lightOff()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v3, "Erro ao exibir ativar Flash"

    invoke-virtual {v2, v3, v0}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public openContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "mimetype"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;

    .prologue
    .line 326
    iget-object v5, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "openContent([content],"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 328
    const/4 v3, 0x0

    .line 330
    .local v3, "result":Z
    :try_start_0
    invoke-direct {p0, p1, p2}, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->writeFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 334
    .local v1, "file":Ljava/io/File;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 338
    .local v4, "uri":Landroid/net/Uri;
    iget-object v5, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "uri: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    iget-object v5, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    invoke-static {v2, p4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lbr/gov/caixa/sipro/viewer/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    const/4 v3, 0x1

    .line 360
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "uri":Landroid/net/Uri;
    :goto_0
    return v3

    .line 357
    :catch_0
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v6, "Erro ao processar download"

    invoke-virtual {v5, v6, v0}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public phone(Ljava/lang/String;)Z
    .locals 6
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 231
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "phone: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 232
    const/4 v2, 0x0

    .line 234
    .local v2, "result":Z
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CALL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 235
    .local v1, "intent":Landroid/content/Intent;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tel:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 236
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    invoke-virtual {v3, v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    const/4 v2, 0x1

    .line 242
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v4, "Erro ao iniciar telefone"

    invoke-virtual {v3, v4, v0}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public reload()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v1, "reload()"

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    iget-object v1, v1, Lbr/gov/caixa/sipro/viewer/MainActivity;->TARGET_URL:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lbr/gov/caixa/sipro/viewer/MainActivity;->initWebView(Ljava/lang/String;Z)Z

    .line 159
    return-void
.end method

.method public reportRecon(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 89
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportScan("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:reconSpeechResult(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->loadUrl(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public reportScan(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 225
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportScan("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:scanResult(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->loadUrl(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public scan()Z
    .locals 7

    .prologue
    .line 208
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v3, "scan()"

    invoke-virtual {v2, v3}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 209
    const/4 v1, 0x0

    .line 211
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    .line 212
    const v3, 0x7f030002

    .line 213
    const v4, 0x7f07000c

    .line 214
    const v5, 0x7f07000b

    .line 215
    iget-boolean v6, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->useLight:Z

    .line 211
    invoke-static {v2, v3, v4, v5, v6}, Ljim/h/common/android/zxinglib/integrator/IntentIntegrator;->initiateScan(Landroid/app/Activity;IIIZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    const/4 v1, 0x1

    .line 221
    :goto_0
    return v1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v3, "Erro ao exibir Configura\u00e7\u00f5es"

    invoke-virtual {v2, v3, v0}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public sendContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "mimetype"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "subject"    # Ljava/lang/String;
    .param p6, "body"    # Ljava/lang/String;

    .prologue
    .line 364
    iget-object v5, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sendContent([content],"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 365
    const/4 v3, 0x0

    .line 368
    .local v3, "result":Z
    :try_start_0
    invoke-direct {p0, p1, p2}, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->writeFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 370
    .local v1, "file":Ljava/io/File;
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 371
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "text/plain"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v5, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v2, v5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    .line 377
    .local v4, "uri":Landroid/net/Uri;
    const-string v5, "android.intent.extra.STREAM"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 378
    iget-object v5, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    invoke-static {v2, p4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lbr/gov/caixa/sipro/viewer/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    const/4 v3, 0x1

    .line 385
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "uri":Landroid/net/Uri;
    :goto_0
    return v3

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v6, "Erro ao processar download"

    invoke-virtual {v5, v6, v0}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 63
    const/4 v1, 0x0

    .line 65
    .local v1, "result":Z
    :try_start_0
    invoke-static {p1, p2}, Lbr/gov/caixa/sipro/viewer/Global;->PreferenceWrite(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    const/4 v1, 0x1

    .line 70
    :goto_0
    return v1

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Falha ao obter preferencias da chave "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public showKeyboard()Z
    .locals 5

    .prologue
    .line 439
    const/4 v2, 0x0

    .line 441
    .local v2, "result":Z
    :try_start_0
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 442
    .local v1, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    iget-object v3, v3, Lbr/gov/caixa/sipro/viewer/MainActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->requestFocus()Z

    .line 443
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    iget-object v3, v3, Lbr/gov/caixa/sipro/viewer/MainActivity;->webView:Landroid/webkit/WebView;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    const/4 v2, 0x1

    .line 449
    .end local v1    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return v2

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v4, "Erro ao encerrar Flash"

    invoke-virtual {v3, v4, v0}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v1, "shutdown()"

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->shutdown(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public shutdown(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v1, "shutdown()"

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    invoke-virtual {v0, p1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->shutdown(Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public sms(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 246
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sms: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 247
    const/4 v1, 0x0

    .line 249
    .local v1, "result":Z
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v2, "smsIntent":Landroid/content/Intent;
    const-string v3, "sms_body"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    const-string v3, "address"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v3, "vnd.android-dir/mms-sms"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    invoke-virtual {v3, v2}, Lbr/gov/caixa/sipro/viewer/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    const/4 v1, 0x1

    .line 261
    .end local v2    # "smsIntent":Landroid/content/Intent;
    :goto_0
    return v1

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v4, "Erro ao iniciar SMS"

    invoke-virtual {v3, v4, v0}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public startRecon()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v1, "startRecon()"

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public startReconCommand()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v1, "startReconCommand()"

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public stopRecon()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v1, "stopRecon()"

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public talkTTS(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "talkTTS("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->isTTSEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    invoke-virtual {v0, p1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->talkTTS(Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method public website(Ljava/lang/String;)Z
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 280
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "website: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 281
    const/4 v2, 0x0

    .line 283
    .local v2, "result":Z
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 284
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 285
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->activity:Lbr/gov/caixa/sipro/viewer/MainActivity;

    invoke-virtual {v3, v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    const/4 v2, 0x1

    .line 291
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/JavaScriptInterface;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v4, "Erro ao iniciar Email"

    invoke-virtual {v3, v4, v0}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
