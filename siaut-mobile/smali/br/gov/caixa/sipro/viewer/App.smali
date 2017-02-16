.class public Lbr/gov/caixa/sipro/viewer/App;
.super Landroid/app/Application;
.source "App.java"


# annotations
.annotation runtime Lorg/acra/annotation/ReportsCrashes;
    formKey = ""
    httpMethod = .enum Lorg/acra/sender/HttpSender$Method;->POST:Lorg/acra/sender/HttpSender$Method;
    mode = .enum Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;
    reportType = .enum Lorg/acra/sender/HttpSender$Type;->JSON:Lorg/acra/sender/HttpSender$Type;
    resDialogCommentPrompt = 0x7f050008
    resDialogIcon = 0x108009b
    resDialogOkToast = 0x7f050009
    resDialogText = 0x7f050007
    resDialogTitle = 0x7f050006
    resToastText = 0x7f050005
.end annotation


# instance fields
.field protected extStorageAppBasePath:Ljava/io/File;

.field protected extStorageAppCachePath:Ljava/io/File;

.field private log:Lbr/gov/caixa/sipro/viewer/Logger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 26
    new-instance v0, Lbr/gov/caixa/sipro/viewer/Logger;

    const-class v1, Lbr/gov/caixa/sipro/viewer/App;

    invoke-direct {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lbr/gov/caixa/sipro/viewer/App;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    .line 25
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 34
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/App;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v2, "Application.onCreate()"

    invoke-virtual {v1, v2}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 35
    invoke-static {p0}, Lorg/acra/ACRA;->getNewDefaultConfig(Landroid/app/Application;)Lorg/acra/ACRAConfiguration;

    move-result-object v0

    .line 36
    .local v0, "config":Lorg/acra/ACRAConfiguration;
    const v1, 0x7f05000b

    invoke-virtual {p0, v1}, Lbr/gov/caixa/sipro/viewer/App;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/acra/ACRAConfiguration;->setFormUri(Ljava/lang/String;)V

    .line 39
    invoke-static {v0}, Lorg/acra/ACRA;->setConfig(Lorg/acra/ACRAConfiguration;)V

    .line 40
    invoke-static {p0}, Lorg/acra/ACRA;->init(Landroid/app/Application;)V

    .line 42
    return-void
.end method
