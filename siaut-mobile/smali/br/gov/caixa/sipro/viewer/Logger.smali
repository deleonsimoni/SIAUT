.class public Lbr/gov/caixa/sipro/viewer/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static final LINE_SEPARATOR:Ljava/lang/String;


# instance fields
.field private DEBUG:Ljava/lang/String;

.field private ERROR:Ljava/lang/String;

.field private INFO:Ljava/lang/String;

.field private WARN:Ljava/lang/String;

.field current:Lbr/gov/caixa/sipro/viewer/Logger;

.field private owner:Ljava/lang/String;

.field prefLog:Z

.field repo:Lbr/gov/caixa/sipro/viewer/LoggerRepo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbr/gov/caixa/sipro/viewer/Logger;->LINE_SEPARATOR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "INFO"

    iput-object v0, p0, Lbr/gov/caixa/sipro/viewer/Logger;->INFO:Ljava/lang/String;

    .line 15
    const-string v0, "DEBUG"

    iput-object v0, p0, Lbr/gov/caixa/sipro/viewer/Logger;->DEBUG:Ljava/lang/String;

    .line 16
    const-string v0, "WARN"

    iput-object v0, p0, Lbr/gov/caixa/sipro/viewer/Logger;->WARN:Ljava/lang/String;

    .line 17
    const-string v0, "ERROR"

    iput-object v0, p0, Lbr/gov/caixa/sipro/viewer/Logger;->ERROR:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lbr/gov/caixa/sipro/viewer/Logger;->owner:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lbr/gov/caixa/sipro/viewer/Logger;->repo:Lbr/gov/caixa/sipro/viewer/LoggerRepo;

    .line 21
    iput-object v1, p0, Lbr/gov/caixa/sipro/viewer/Logger;->current:Lbr/gov/caixa/sipro/viewer/Logger;

    .line 22
    const-string v0, "prefLog"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->PreferenceRead(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lbr/gov/caixa/sipro/viewer/Logger;->prefLog:Z

    .line 25
    if-nez p1, :cond_0

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 28
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbr/gov/caixa/sipro/viewer/Logger;->owner:Ljava/lang/String;

    .line 29
    invoke-static {}, Lbr/gov/caixa/sipro/viewer/LoggerRepo;->getInstance()Lbr/gov/caixa/sipro/viewer/LoggerRepo;

    move-result-object v0

    iput-object v0, p0, Lbr/gov/caixa/sipro/viewer/Logger;->repo:Lbr/gov/caixa/sipro/viewer/LoggerRepo;

    .line 30
    return-void
.end method

.method public static PreferenceRead(Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 94
    move v2, p1

    .line 96
    .local v2, "result":Z
    :try_start_0
    invoke-static {}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getContext()Lbr/gov/caixa/sipro/viewer/MainActivity;

    move-result-object v0

    .line 97
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 98
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 102
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    return v2

    .line 100
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private addLogLine(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/Logger;->repo:Lbr/gov/caixa/sipro/viewer/LoggerRepo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lbr/gov/caixa/sipro/viewer/Logger;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/LoggerRepo;->add(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .param p0, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 72
    if-nez p0, :cond_0

    .line 73
    const-string v2, ""

    .line 78
    :goto_0
    return-object v2

    .line 75
    :cond_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 76
    .local v1, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 77
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 78
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public Debug(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-boolean v0, p0, Lbr/gov/caixa/sipro/viewer/Logger;->prefLog:Z

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/Logger;->owner:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/Logger;->DEBUG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/Logger;->owner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbr/gov/caixa/sipro/viewer/Logger;->addLogLine(Ljava/lang/String;)V

    .line 52
    :cond_0
    return-void
.end method

.method public Error(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 64
    iget-boolean v1, p0, Lbr/gov/caixa/sipro/viewer/Logger;->prefLog:Z

    if-eqz v1, :cond_0

    .line 65
    move-object v0, p1

    .line 66
    .local v0, "logmessage":Ljava/lang/String;
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/Logger;->owner:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/Logger;->ERROR:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/Logger;->owner:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->addLogLine(Ljava/lang/String;)V

    .line 69
    .end local v0    # "logmessage":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public Error(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 55
    iget-boolean v1, p0, Lbr/gov/caixa/sipro/viewer/Logger;->prefLog:Z

    if-eqz v1, :cond_0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lbr/gov/caixa/sipro/viewer/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "logmessage":Ljava/lang/String;
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/Logger;->owner:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/Logger;->ERROR:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbr/gov/caixa/sipro/viewer/Logger;->owner:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->addLogLine(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 61
    .end local v0    # "logmessage":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public Info(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-boolean v0, p0, Lbr/gov/caixa/sipro/viewer/Logger;->prefLog:Z

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/Logger;->owner:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/Logger;->INFO:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/Logger;->owner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbr/gov/caixa/sipro/viewer/Logger;->addLogLine(Ljava/lang/String;)V

    .line 37
    :cond_0
    return-void
.end method

.method public Info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "owner"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 40
    iget-boolean v0, p0, Lbr/gov/caixa/sipro/viewer/Logger;->prefLog:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/Logger;->INFO:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lbr/gov/caixa/sipro/viewer/Logger;->addLogLine(Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method

.method public clearnLog()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/Logger;->repo:Lbr/gov/caixa/sipro/viewer/LoggerRepo;

    invoke-virtual {v0}, Lbr/gov/caixa/sipro/viewer/LoggerRepo;->clearAll()V

    .line 87
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
    .line 82
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/Logger;->repo:Lbr/gov/caixa/sipro/viewer/LoggerRepo;

    invoke-virtual {v0}, Lbr/gov/caixa/sipro/viewer/LoggerRepo;->getLog()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
