.class Lbr/gov/caixa/sipro/viewer/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/webkit/DownloadListener;


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
    iput-object p1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$3;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 317
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$3;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    # getter for: Lbr/gov/caixa/sipro/viewer/MainActivity;->log:Lbr/gov/caixa/sipro/viewer/Logger;
    invoke-static {v1}, Lbr/gov/caixa/sipro/viewer/MainActivity;->access$0(Lbr/gov/caixa/sipro/viewer/MainActivity;)Lbr/gov/caixa/sipro/viewer/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onDownloadStart("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 318
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v0, "i":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 320
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$3;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    invoke-virtual {v1, v0}, Lbr/gov/caixa/sipro/viewer/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 321
    return-void
.end method
