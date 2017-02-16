.class Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity$1;
.super Ljava/lang/Object;
.source "ReportBugActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;


# direct methods
.method constructor <init>(Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity$1;->this$0:Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 41
    :try_start_0
    # getter for: Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->txtContent:Landroid/widget/EditText;
    invoke-static {}, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->access$0()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "userReport":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity$1;->this$0:Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;

    # getter for: Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->context:Landroid/content/Context;
    invoke-static {v3}, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->access$1(Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "Por favor, informe a ocorr\u00eancia no campo de texto"

    invoke-static {v3, v4}, Lbr/gov/caixa/sipro/viewer/Global;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    # getter for: Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->txtContent:Landroid/widget/EditText;
    invoke-static {}, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->access$0()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 62
    .end local v2    # "userReport":Ljava/lang/String;
    :goto_0
    return-void

    .line 47
    .restart local v2    # "userReport":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    # getter for: Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->txtContent:Landroid/widget/EditText;
    invoke-static {}, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->access$0()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "content":Ljava/lang/Exception;
    const-string v3, "ReportBugActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "USER_REPORT: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/acra/ErrorReporter;->handleSilentException(Ljava/lang/Throwable;)V

    .line 55
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity$1;->this$0:Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;

    # getter for: Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->context:Landroid/content/Context;
    invoke-static {v3}, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->access$1(Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "Sua ocorr\u00eancia foi enviada\nObrigado!"

    invoke-static {v3, v4}, Lbr/gov/caixa/sipro/viewer/Global;->showMessage(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    iget-object v3, p0, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity$1;->this$0:Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;

    invoke-virtual {v3}, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->finalized()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    .end local v0    # "content":Ljava/lang/Exception;
    .end local v2    # "userReport":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "ReportBugActivity"

    const-string v4, "Falha ao processar logon"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
