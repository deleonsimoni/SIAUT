.class Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity$2;
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
    iput-object p1, p0, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity$2;->this$0:Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 70
    :try_start_0
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity$2;->this$0:Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;

    invoke-virtual {v1}, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->finalized()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ReportBugActivity"

    const-string v2, "Falha ao cancelar atividade"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
