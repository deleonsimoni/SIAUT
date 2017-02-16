.class public Lbr/gov/caixa/sipro/viewer/Global;
.super Ljava/lang/Object;
.source "Global.java"


# static fields
.field public static APK_MIMETYPE:Ljava/lang/String; = null

.field public static final COMMAND:Ljava/lang/String; = ","

.field public static final COOKIE_SEP:Ljava/lang/String; = "%3A"

.field public static final EQUAL:Ljava/lang/String; = "="

.field public static final SEP:Ljava/lang/String; = ";"

.field public static final SLASH:Ljava/lang/String; = "/"

.field private static global:Lbr/gov/caixa/sipro/viewer/Global;

.field private static log:Lbr/gov/caixa/sipro/viewer/Logger;

.field private static toast:Landroid/widget/Toast;


# instance fields
.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    new-instance v0, Lbr/gov/caixa/sipro/viewer/Logger;

    invoke-direct {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    .line 46
    sput-object v1, Lbr/gov/caixa/sipro/viewer/Global;->global:Lbr/gov/caixa/sipro/viewer/Global;

    .line 47
    sput-object v1, Lbr/gov/caixa/sipro/viewer/Global;->toast:Landroid/widget/Toast;

    .line 54
    const-string v0, "application/vnd.android.package-archive"

    sput-object v0, Lbr/gov/caixa/sipro/viewer/Global;->APK_MIMETYPE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v1, "Global()"

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static PreferenceRead(Ljava/lang/String;I)I
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 302
    sget-object v4, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Read("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 303
    move v3, p1

    .line 305
    .local v3, "result":I
    :try_start_0
    invoke-static {}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getContext()Lbr/gov/caixa/sipro/viewer/MainActivity;

    move-result-object v0

    .line 306
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 307
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 312
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    sget-object v4, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Read(): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 313
    return v3

    .line 309
    :catch_0
    move-exception v1

    .line 310
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v5, "Falha ao ler configura\u00e7\u00f5es"

    invoke-virtual {v4, v5, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static PreferenceRead(Ljava/lang/String;J)J
    .locals 9
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    .line 316
    sget-object v3, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Read("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 317
    move-wide v4, p1

    .line 319
    .local v4, "result":J
    :try_start_0
    invoke-static {}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getContext()Lbr/gov/caixa/sipro/viewer/MainActivity;

    move-result-object v0

    .line 320
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 321
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 326
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    sget-object v3, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Read(): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 327
    return-wide v4

    .line 323
    :catch_0
    move-exception v1

    .line 324
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v6, "Falha ao ler configura\u00e7\u00f5es"

    invoke-virtual {v3, v6, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static PreferenceRead(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 274
    sget-object v4, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Read("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 275
    move-object v3, p1

    .line 277
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getContext()Lbr/gov/caixa/sipro/viewer/MainActivity;

    move-result-object v0

    .line 278
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 279
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 283
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    sget-object v4, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Read(): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 284
    return-object v3

    .line 280
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v5, "Falha ao ler configura\u00e7\u00f5es"

    invoke-virtual {v4, v5, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static PreferenceRead(Ljava/lang/String;Z)Z
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    .prologue
    .line 288
    sget-object v4, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Read("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 289
    move v3, p1

    .line 291
    .local v3, "result":Z
    :try_start_0
    invoke-static {}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getContext()Lbr/gov/caixa/sipro/viewer/MainActivity;

    move-result-object v0

    .line 292
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 293
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 298
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "pref":Landroid/content/SharedPreferences;
    :goto_0
    sget-object v4, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Read(): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 299
    return v3

    .line 295
    :catch_0
    move-exception v1

    .line 296
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v5, "Falha ao ler configura\u00e7\u00f5es"

    invoke-virtual {v4, v5, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static PreferenceReset()V
    .locals 6

    .prologue
    .line 380
    sget-object v4, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v5, "PreferenceReset()"

    invoke-virtual {v4, v5}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 382
    :try_start_0
    invoke-static {}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getContext()Lbr/gov/caixa/sipro/viewer/MainActivity;

    move-result-object v0

    .line 383
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 384
    .local v3, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 385
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 386
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "settings":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 387
    :catch_0
    move-exception v1

    .line 388
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v5, "Falha ao reiniciar configura\u00e7\u00f5es"

    invoke-virtual {v4, v5, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static PreferenceWrite(Ljava/lang/String;I)V
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 355
    sget-object v4, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Write("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 357
    :try_start_0
    invoke-static {}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getContext()Lbr/gov/caixa/sipro/viewer/MainActivity;

    move-result-object v0

    .line 358
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 359
    .local v3, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 360
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 361
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "settings":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 362
    :catch_0
    move-exception v1

    .line 363
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v5, "Falha ao ler configura\u00e7\u00f5es"

    invoke-virtual {v4, v5, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static PreferenceWrite(Ljava/lang/String;J)V
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # J

    .prologue
    .line 367
    sget-object v4, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Write("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 369
    :try_start_0
    invoke-static {}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getContext()Lbr/gov/caixa/sipro/viewer/MainActivity;

    move-result-object v0

    .line 370
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 371
    .local v3, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 372
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 373
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "settings":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v1

    .line 375
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v5, "Falha ao ler configura\u00e7\u00f5es"

    invoke-virtual {v4, v5, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static PreferenceWrite(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 330
    sget-object v4, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Write("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 332
    :try_start_0
    invoke-static {}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getContext()Lbr/gov/caixa/sipro/viewer/MainActivity;

    move-result-object v0

    .line 333
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 334
    .local v3, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 335
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 336
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "settings":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v1

    .line 338
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v5, "Falha ao ler configura\u00e7\u00f5es"

    invoke-virtual {v4, v5, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static PreferenceWrite(Ljava/lang/String;Z)V
    .locals 7
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .prologue
    .line 342
    sget-object v4, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Write("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 345
    :try_start_0
    invoke-static {}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getContext()Lbr/gov/caixa/sipro/viewer/MainActivity;

    move-result-object v0

    .line 346
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 347
    .local v3, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 348
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 349
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "settings":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v1

    .line 351
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v5, "Falha ao ler configura\u00e7\u00f5es"

    invoke-virtual {v4, v5, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getCookieValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "cookies"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 408
    sget-object v7, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "getCookieValue("

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 410
    const/4 v5, 0x0

    .line 412
    .local v5, "result":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 413
    :try_start_0
    const-string v7, ";"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 414
    .local v0, "cookiesList":[Ljava/lang/String;
    array-length v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-lt v6, v7, :cond_1

    .line 432
    .end local v0    # "cookiesList":[Ljava/lang/String;
    :cond_0
    :goto_1
    sget-object v6, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "getCookieValue():"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 433
    return-object v5

    .line 414
    .restart local v0    # "cookiesList":[Ljava/lang/String;
    :cond_1
    :try_start_1
    aget-object v3, v0, v6

    .line 415
    .local v3, "item":Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v3, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 416
    .local v4, "pair":[Ljava/lang/String;
    array-length v8, v4

    if-le v8, v10, :cond_2

    .line 417
    const/4 v8, 0x0

    aget-object v8, v4, v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_2

    .line 419
    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "decodedValue":Ljava/lang/String;
    sget-object v6, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "URI-decodedValue: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 422
    move-object v5, v1

    .line 423
    goto :goto_1

    .line 414
    .end local v1    # "decodedValue":Ljava/lang/String;
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 429
    .end local v0    # "cookiesList":[Ljava/lang/String;
    .end local v3    # "item":Ljava/lang/String;
    .end local v4    # "pair":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 430
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v7, "Erro ao processar Cookies"

    invoke-virtual {v6, v7, v2}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public static final getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 4
    .param p0, "elem"    # Lorg/w3c/dom/Node;

    .prologue
    .line 470
    const-string v1, ""

    .line 471
    .local v1, "result":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 472
    invoke-interface {p0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 473
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .local v0, "child":Lorg/w3c/dom/Node;
    :goto_0
    if-nez v0, :cond_1

    .line 481
    .end local v0    # "child":Lorg/w3c/dom/Node;
    :cond_0
    :goto_1
    return-object v1

    .line 474
    .restart local v0    # "child":Lorg/w3c/dom/Node;
    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 475
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 476
    goto :goto_1

    .line 473
    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFormattedKernelVersion()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x4

    .line 112
    sget-object v6, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v7, "getFormattedKernelVersion()"

    invoke-virtual {v6, v7}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 116
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/proc/version"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x100

    invoke-direct {v5, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 120
    .local v4, "procVersionStr":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 124
    const-string v0, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\([^)]+\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    .line 133
    .local v0, "PROC_VERSION_REGEX":Ljava/lang/String;
    const-string v6, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\([^)]+\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 134
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 136
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_0

    .line 137
    sget-object v6, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Regex did not match on /proc/version: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 138
    const-string v6, "Unavailable"

    .line 150
    .end local v0    # "PROC_VERSION_REGEX":Ljava/lang/String;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "p":Ljava/util/regex/Pattern;
    .end local v4    # "procVersionStr":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 119
    :catchall_0
    move-exception v6

    .line 120
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 121
    throw v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/io/IOException;
    sget-object v6, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v7, "IO Exception when getting kernel version for Device Info screen"

    invoke-virtual {v6, v7, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 150
    const-string v6, "Unavailable"

    goto :goto_0

    .line 139
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "PROC_VERSION_REGEX":Ljava/lang/String;
    .restart local v2    # "m":Ljava/util/regex/Matcher;
    .restart local v3    # "p":Ljava/util/regex/Pattern;
    .restart local v4    # "procVersionStr":Ljava/lang/String;
    :cond_0
    :try_start_4
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    if-ge v6, v8, :cond_1

    .line 140
    sget-object v6, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Regex match on /proc/version only returned "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 141
    const-string v8, " groups"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 140
    invoke-virtual {v6, v7}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 142
    const-string v6, "Unavailable"

    goto :goto_0

    .line 144
    :cond_1
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 145
    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    .line 144
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 145
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 146
    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v6

    goto :goto_0
.end method

.method public static getInstance()Lbr/gov/caixa/sipro/viewer/Global;
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v1, "getInstance()"

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 62
    sget-object v0, Lbr/gov/caixa/sipro/viewer/Global;->global:Lbr/gov/caixa/sipro/viewer/Global;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lbr/gov/caixa/sipro/viewer/Global;

    invoke-direct {v0}, Lbr/gov/caixa/sipro/viewer/Global;-><init>()V

    sput-object v0, Lbr/gov/caixa/sipro/viewer/Global;->global:Lbr/gov/caixa/sipro/viewer/Global;

    .line 65
    :cond_0
    sget-object v0, Lbr/gov/caixa/sipro/viewer/Global;->global:Lbr/gov/caixa/sipro/viewer/Global;

    return-object v0
.end method

.method public static getManifest(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 525
    const/4 v4, 0x0

    .line 527
    .local v4, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getContext()Lbr/gov/caixa/sipro/viewer/MainActivity;

    move-result-object v2

    .line 529
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 530
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 531
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 536
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "context":Landroid/content/Context;
    :goto_0
    return-object v4

    .line 533
    :catch_0
    move-exception v3

    .line 534
    .local v3, "e":Ljava/lang/Exception;
    sget-object v5, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Erro ao obter propriedade "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getPackageDate()Ljava/lang/String;
    .locals 6

    .prologue
    .line 98
    sget-object v3, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v4, "getVersionCode()"

    invoke-virtual {v3, v4}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 99
    const-string v2, "?"

    .line 102
    .local v2, "version":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getContext()Lbr/gov/caixa/sipro/viewer/MainActivity;

    move-result-object v0

    .line 103
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 104
    .local v1, "packagInfo":Landroid/content/pm/PackageInfo;
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 108
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "packagInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 105
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getPackageName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 84
    sget-object v3, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v4, "getPackageName()"

    invoke-virtual {v3, v4}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 85
    const-string v2, "?"

    .line 88
    .local v2, "version":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getContext()Lbr/gov/caixa/sipro/viewer/MainActivity;

    move-result-object v0

    .line 89
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 90
    .local v1, "packagInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "packagInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 91
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 506
    const/4 v5, 0x0

    .line 508
    .local v5, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getContext()Lbr/gov/caixa/sipro/viewer/MainActivity;

    move-result-object v1

    .line 510
    .local v1, "context":Landroid/content/Context;
    const v6, 0x7f050002

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "appProperties":Ljava/lang/String;
    sget-object v6, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "appProperties: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 513
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 514
    .local v2, "data":Ljava/io/InputStream;
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 515
    .local v4, "prop":Ljava/util/Properties;
    invoke-virtual {v4, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 517
    invoke-virtual {v4, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 521
    .end local v0    # "appProperties":Ljava/lang/String;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "data":Ljava/io/InputStream;
    .end local v4    # "prop":Ljava/util/Properties;
    :goto_0
    return-object v5

    .line 518
    :catch_0
    move-exception v3

    .line 519
    .local v3, "e":Ljava/lang/Exception;
    sget-object v6, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Erro ao obter propriedade "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getStringResourceByName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "aString"    # Ljava/lang/String;

    .prologue
    .line 393
    sget-object v5, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getStringResourceByName("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 394
    const/4 v4, 0x0

    .line 396
    .local v4, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getContext()Lbr/gov/caixa/sipro/viewer/MainActivity;

    move-result-object v0

    .line 397
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lbr/gov/caixa/sipro/viewer/Global;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 398
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "string"

    invoke-virtual {v5, p0, v6, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 399
    .local v3, "resId":I
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 403
    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "resId":I
    :goto_0
    sget-object v5, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getStringResourceByName(): "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 404
    return-object v4

    .line 400
    :catch_0
    move-exception v1

    .line 401
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v6, "Falha ao ler configura\u00e7\u00f5es"

    invoke-virtual {v5, v6, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "item"    # Lorg/w3c/dom/Element;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 464
    invoke-interface {p0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 465
    .local v0, "n":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {v1}, Lbr/gov/caixa/sipro/viewer/Global;->getElementValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVersionNumber()Ljava/lang/String;
    .locals 6

    .prologue
    .line 70
    sget-object v3, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v4, "getVersionNumber()"

    invoke-virtual {v3, v4}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 71
    const-string v2, "?"

    .line 74
    .local v2, "version":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getContext()Lbr/gov/caixa/sipro/viewer/MainActivity;

    move-result-object v0

    .line 75
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 76
    .local v1, "packagInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "packagInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 77
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 495
    const/4 v0, 0x0

    .line 498
    .local v0, "result":Z
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    const/4 v0, 0x1

    .line 503
    :goto_0
    return v0

    .line 500
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static resetCookies(Ljava/lang/String;)Z
    .locals 7
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 437
    sget-object v4, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getCookieValue("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 439
    const/4 v2, 0x0

    .line 441
    .local v2, "result":Z
    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 442
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 443
    const/4 v3, 0x0

    .line 445
    .local v3, "sessionCookies":Ljava/lang/String;
    :cond_0
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 447
    const-wide/16 v4, 0x64

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 449
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 450
    invoke-virtual {v0, p0}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 452
    sget-object v4, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Waiting sessionCookies is null: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    if-nez v3, :cond_0

    .line 455
    const/4 v2, 0x1

    .line 459
    .end local v0    # "cookieManager":Landroid/webkit/CookieManager;
    .end local v3    # "sessionCookies":Ljava/lang/String;
    :goto_0
    sget-object v4, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getCookieValue():"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 460
    return v2

    .line 456
    :catch_0
    move-exception v1

    .line 457
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v5, "Erro ao processar Cookies"

    invoke-virtual {v4, v5, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static showMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 486
    sget-object v0, Lbr/gov/caixa/sipro/viewer/Global;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 487
    sget-object v0, Lbr/gov/caixa/sipro/viewer/Global;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 490
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lbr/gov/caixa/sipro/viewer/Global;->toast:Landroid/widget/Toast;

    .line 491
    sget-object v0, Lbr/gov/caixa/sipro/viewer/Global;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 492
    return-void
.end method


# virtual methods
.method public dismissProgressDialog()V
    .locals 2

    .prologue
    .line 239
    sget-object v0, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    const-string v1, "dismissProgressDialog()"

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/Global;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/Global;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    :try_start_0
    iget-object v0, p0, Lbr/gov/caixa/sipro/viewer/Global;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbr/gov/caixa/sipro/viewer/Global;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 248
    :cond_0
    return-void

    .line 244
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public showConfirmDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 177
    sget-object v1, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showConfirmDialog("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 179
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 180
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 181
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 182
    const-string v1, "OK"

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 183
    const-string v1, "Cancelar"

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 184
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public showConfirmDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 171
    sget-object v1, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showConfirmDialog("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getContext()Lbr/gov/caixa/sipro/viewer/MainActivity;

    move-result-object v0

    .line 173
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0, v0, p1, p2}, Lbr/gov/caixa/sipro/viewer/Global;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 161
    sget-object v1, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showDialog("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 163
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 164
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 165
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 166
    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 167
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public showDialog(Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 155
    sget-object v1, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showDialog("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getContext()Lbr/gov/caixa/sipro/viewer/MainActivity;

    move-result-object v0

    .line 157
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0, v0, p1, p2}, Lbr/gov/caixa/sipro/viewer/Global;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public showErrorDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    .line 251
    sget-object v0, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showErrorDialog("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lbr/gov/caixa/sipro/viewer/Global;->showErrorDialog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 253
    return-void
.end method

.method public showErrorDialog(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "errorMessage"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 256
    sget-object v1, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showErrorDialog("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",throwable)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getContext()Lbr/gov/caixa/sipro/viewer/MainActivity;

    move-result-object v0

    .line 259
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 260
    const/high16 v2, 0x7f050000

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 261
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 262
    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 263
    const v2, 0x104000a

    new-instance v3, Lbr/gov/caixa/sipro/viewer/Global$1;

    invoke-direct {v3, p0}, Lbr/gov/caixa/sipro/viewer/Global$1;-><init>(Lbr/gov/caixa/sipro/viewer/Global;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 269
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 270
    return-void
.end method

.method public showProgressDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 219
    sget-object v1, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showProgressDialog("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/Global;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {p0}, Lbr/gov/caixa/sipro/viewer/Global;->dismissProgressDialog()V

    .line 225
    :cond_0
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lbr/gov/caixa/sipro/viewer/Global;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 226
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/Global;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 227
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/Global;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/Global;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 230
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/Global;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 231
    .local v0, "window":Landroid/view/Window;
    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 232
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 234
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/Global;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 235
    iget-object v1, p0, Lbr/gov/caixa/sipro/viewer/Global;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v1
.end method

.method public showProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 212
    sget-object v1, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "showProgressDialog("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getContext()Lbr/gov/caixa/sipro/viewer/MainActivity;

    move-result-object v0

    .line 215
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0, v0, p1}, Lbr/gov/caixa/sipro/viewer/Global;->showProgressDialog(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v1

    return-object v1
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 188
    sget-object v0, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "showToast("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 189
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lbr/gov/caixa/sipro/viewer/Global;->showToast(Ljava/lang/String;ZZ)V

    .line 190
    return-void
.end method

.method public showToast(Ljava/lang/String;ZZ)V
    .locals 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "shortMessage"    # Z
    .param p3, "center"    # Z

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    .line 193
    sget-object v3, Lbr/gov/caixa/sipro/viewer/Global;->log:Lbr/gov/caixa/sipro/viewer/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "showToast("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbr/gov/caixa/sipro/viewer/Logger;->Info(Ljava/lang/String;)V

    .line 195
    const/4 v1, 0x0

    .line 196
    .local v1, "duration":I
    if-nez p2, :cond_0

    .line 197
    const/4 v1, 0x1

    .line 200
    :cond_0
    invoke-static {}, Lbr/gov/caixa/sipro/viewer/MainActivity;->getContext()Lbr/gov/caixa/sipro/viewer/MainActivity;

    move-result-object v0

    .line 201
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 203
    .local v2, "toast":Landroid/widget/Toast;
    if-eqz p3, :cond_1

    .line 204
    const/16 v3, 0x11

    invoke-virtual {v2, v3, v6, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 208
    :goto_0
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 209
    return-void

    .line 206
    :cond_1
    const/16 v3, 0x50

    invoke-virtual {v2, v3, v6, v7}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0
.end method
