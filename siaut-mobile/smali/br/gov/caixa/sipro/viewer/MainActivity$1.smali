.class Lbr/gov/caixa/sipro/viewer/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/gov/caixa/sipro/viewer/MainActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$1;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$1;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/MainActivity$1;->this$0:Lbr/gov/caixa/sipro/viewer/MainActivity;

    iget-object v1, v1, Lbr/gov/caixa/sipro/viewer/MainActivity;->TARGET_URL:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lbr/gov/caixa/sipro/viewer/MainActivity;->initWebView(Ljava/lang/String;Z)Z

    .line 147
    return-void
.end method
