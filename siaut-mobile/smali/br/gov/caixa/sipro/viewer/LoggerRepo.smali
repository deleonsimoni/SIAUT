.class public Lbr/gov/caixa/sipro/viewer/LoggerRepo;
.super Ljava/lang/Object;
.source "LoggerRepo.java"


# static fields
.field private static repo:Lbr/gov/caixa/sipro/viewer/LoggerRepo;


# instance fields
.field private log:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x0

    sput-object v0, Lbr/gov/caixa/sipro/viewer/LoggerRepo;->repo:Lbr/gov/caixa/sipro/viewer/LoggerRepo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbr/gov/caixa/sipro/viewer/LoggerRepo;->log:Ljava/util/ArrayList;

    .line 5
    return-void
.end method

.method public static getInstance()Lbr/gov/caixa/sipro/viewer/LoggerRepo;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lbr/gov/caixa/sipro/viewer/LoggerRepo;->repo:Lbr/gov/caixa/sipro/viewer/LoggerRepo;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lbr/gov/caixa/sipro/viewer/LoggerRepo;

    invoke-direct {v0}, Lbr/gov/caixa/sipro/viewer/LoggerRepo;-><init>()V

    sput-object v0, Lbr/gov/caixa/sipro/viewer/LoggerRepo;->repo:Lbr/gov/caixa/sipro/viewer/LoggerRepo;

    .line 13
    :cond_0
    sget-object v0, Lbr/gov/caixa/sipro/viewer/LoggerRepo;->repo:Lbr/gov/caixa/sipro/viewer/LoggerRepo;

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 17
    sget-object v0, Lbr/gov/caixa/sipro/viewer/LoggerRepo;->repo:Lbr/gov/caixa/sipro/viewer/LoggerRepo;

    iget-object v0, v0, Lbr/gov/caixa/sipro/viewer/LoggerRepo;->log:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method

.method public clearAll()V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lbr/gov/caixa/sipro/viewer/LoggerRepo;->repo:Lbr/gov/caixa/sipro/viewer/LoggerRepo;

    iget-object v0, v0, Lbr/gov/caixa/sipro/viewer/LoggerRepo;->log:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 26
    return-void
.end method

.method public getLog()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21
    sget-object v0, Lbr/gov/caixa/sipro/viewer/LoggerRepo;->repo:Lbr/gov/caixa/sipro/viewer/LoggerRepo;

    iget-object v0, v0, Lbr/gov/caixa/sipro/viewer/LoggerRepo;->log:Ljava/util/ArrayList;

    return-object v0
.end method
