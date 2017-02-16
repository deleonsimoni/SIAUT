.class Lbr/gov/caixa/sipro/viewer/Global$1;
.super Ljava/lang/Object;
.source "Global.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbr/gov/caixa/sipro/viewer/Global;->showErrorDialog(Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbr/gov/caixa/sipro/viewer/Global;


# direct methods
.method constructor <init>(Lbr/gov/caixa/sipro/viewer/Global;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lbr/gov/caixa/sipro/viewer/Global$1;->this$0:Lbr/gov/caixa/sipro/viewer/Global;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 265
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 267
    return-void
.end method
