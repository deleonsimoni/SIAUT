.class public Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;
.super Landroid/app/Activity;
.source "ReportBugActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReportBugActivity"

.field private static cmdCancel:Landroid/widget/ImageButton;

.field private static cmdOk:Landroid/widget/ImageButton;

.field private static txtContent:Landroid/widget/EditText;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    sput-object v0, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->cmdOk:Landroid/widget/ImageButton;

    .line 20
    sput-object v0, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->cmdCancel:Landroid/widget/ImageButton;

    .line 21
    sput-object v0, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->txtContent:Landroid/widget/EditText;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->context:Landroid/content/Context;

    .line 17
    return-void
.end method

.method static synthetic access$0()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->txtContent:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public finalized()V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0}, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->finish()V

    .line 103
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    const-string v1, "ReportBugActivity"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    :try_start_0
    iput-object p0, p0, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->context:Landroid/content/Context;

    .line 31
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->setContentView(I)V

    .line 33
    const v1, 0x7f070009

    invoke-virtual {p0, v1}, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    sput-object v1, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->cmdOk:Landroid/widget/ImageButton;

    .line 34
    const v1, 0x7f070008

    invoke-virtual {p0, v1}, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    sput-object v1, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->cmdCancel:Landroid/widget/ImageButton;

    .line 35
    const v1, 0x7f07000a

    invoke-virtual {p0, v1}, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    sput-object v1, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->txtContent:Landroid/widget/EditText;

    .line 37
    sget-object v1, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->cmdOk:Landroid/widget/ImageButton;

    new-instance v2, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity$1;

    invoke-direct {v2, p0}, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity$1;-><init>(Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    sget-object v1, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->cmdCancel:Landroid/widget/ImageButton;

    new-instance v2, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity$2;

    invoke-direct {v2, p0}, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity$2;-><init>(Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ReportBugActivity"

    const-string v2, "Falha ao inicializar FindActivity"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 88
    const-string v0, "ReportBugActivity"

    const-string v1, "onKeyDown()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 90
    packed-switch p1, :pswitch_data_0

    .line 97
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 92
    :pswitch_0
    invoke-virtual {p0}, Lbr/gov/caixa/sipro/viewer/util/ReportBugActivity;->finalized()V

    .line 93
    const/4 v0, 0x1

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
