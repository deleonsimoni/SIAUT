.class final Ljim/h/common/android/zxinglib/camera/FlashlightManager;
.super Ljava/lang/Object;
.source "FlashlightManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final iHardwareService:Ljava/lang/Object;

.field private static final setFlashEnabledMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-class v0, Ljim/h/common/android/zxinglib/camera/FlashlightManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljim/h/common/android/zxinglib/camera/FlashlightManager;->TAG:Ljava/lang/String;

    .line 42
    invoke-static {}, Ljim/h/common/android/zxinglib/camera/FlashlightManager;->getHardwareService()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Ljim/h/common/android/zxinglib/camera/FlashlightManager;->iHardwareService:Ljava/lang/Object;

    .line 43
    sget-object v0, Ljim/h/common/android/zxinglib/camera/FlashlightManager;->iHardwareService:Ljava/lang/Object;

    invoke-static {v0}, Ljim/h/common/android/zxinglib/camera/FlashlightManager;->getSetFlashEnabledMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Ljim/h/common/android/zxinglib/camera/FlashlightManager;->setFlashEnabledMethod:Ljava/lang/reflect/Method;

    .line 44
    sget-object v0, Ljim/h/common/android/zxinglib/camera/FlashlightManager;->iHardwareService:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 45
    sget-object v0, Ljim/h/common/android/zxinglib/camera/FlashlightManager;->TAG:Ljava/lang/String;

    const-string v1, "This device does supports control of a flashlight"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :goto_0
    return-void

    .line 47
    :cond_0
    sget-object v0, Ljim/h/common/android/zxinglib/camera/FlashlightManager;->TAG:Ljava/lang/String;

    const-string v1, "This device does not support control of a flashlight"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method static disableFlashlight()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-static {v0}, Ljim/h/common/android/zxinglib/camera/FlashlightManager;->setFlashlight(Z)V

    .line 137
    return-void
.end method

.method static enableFlashlight()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x1

    invoke-static {v0}, Ljim/h/common/android/zxinglib/camera/FlashlightManager;->setFlashlight(Z)V

    .line 133
    return-void
.end method

.method private static getHardwareService()Ljava/lang/Object;
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 55
    const-string v6, "android.os.ServiceManager"

    invoke-static {v6}, Ljim/h/common/android/zxinglib/camera/FlashlightManager;->maybeForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 56
    .local v4, "serviceManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v4, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-object v5

    .line 60
    :cond_1
    const-string v6, "getService"

    new-array v7, v10, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-static {v4, v6, v7}, Ljim/h/common/android/zxinglib/camera/FlashlightManager;->maybeGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 61
    .local v1, "getServiceMethod":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 65
    new-array v6, v10, [Ljava/lang/Object;

    const-string v7, "hardware"

    aput-object v7, v6, v9

    invoke-static {v1, v5, v6}, Ljim/h/common/android/zxinglib/camera/FlashlightManager;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 66
    .local v2, "hardwareService":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 70
    const-string v6, "android.os.IHardwareService$Stub"

    invoke-static {v6}, Ljim/h/common/android/zxinglib/camera/FlashlightManager;->maybeForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 71
    .local v3, "iHardwareServiceStubClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_0

    .line 75
    const-string v6, "asInterface"

    new-array v7, v10, [Ljava/lang/Class;

    .line 76
    const-class v8, Landroid/os/IBinder;

    aput-object v8, v7, v9

    .line 75
    invoke-static {v3, v6, v7}, Ljim/h/common/android/zxinglib/camera/FlashlightManager;->maybeGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 77
    .local v0, "asInterfaceMethod":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 81
    new-array v6, v10, [Ljava/lang/Object;

    aput-object v2, v6, v9

    invoke-static {v0, v5, v6}, Ljim/h/common/android/zxinglib/camera/FlashlightManager;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0
.end method

.method private static getSetFlashEnabledMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 5
    .param p0, "iHardwareService"    # Ljava/lang/Object;

    .prologue
    .line 85
    if-nez p0, :cond_0

    .line 86
    const/4 v1, 0x0

    .line 89
    :goto_0
    return-object v1

    .line 88
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 89
    .local v0, "proxyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "setFlashlightEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljim/h/common/android/zxinglib/camera/FlashlightManager;->maybeGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_0
.end method

.method private static varargs invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 118
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 127
    :goto_0
    return-object v2

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v3, Ljim/h/common/android/zxinglib/camera/FlashlightManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected error while invoking "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 122
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v3, Ljim/h/common/android/zxinglib/camera/FlashlightManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected error while invoking "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 125
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 126
    .local v1, "re":Ljava/lang/RuntimeException;
    sget-object v3, Ljim/h/common/android/zxinglib/camera/FlashlightManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected error while invoking "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static maybeForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 94
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 100
    :goto_0
    return-object v2

    .line 95
    :catch_0
    move-exception v0

    .line 97
    .local v0, "cnfe":Ljava/lang/ClassNotFoundException;
    goto :goto_0

    .line 98
    .end local v0    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 99
    .local v1, "re":Ljava/lang/RuntimeException;
    sget-object v3, Ljim/h/common/android/zxinglib/camera/FlashlightManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected error while finding class "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static varargs maybeGetMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "argClasses"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 106
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 112
    :goto_0
    return-object v2

    .line 107
    :catch_0
    move-exception v0

    .line 109
    .local v0, "nsme":Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 110
    .end local v0    # "nsme":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 111
    .local v1, "re":Ljava/lang/RuntimeException;
    sget-object v3, Ljim/h/common/android/zxinglib/camera/FlashlightManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected error while finding method "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static setFlashlight(Z)V
    .locals 5
    .param p0, "active"    # Z

    .prologue
    .line 140
    sget-object v0, Ljim/h/common/android/zxinglib/camera/FlashlightManager;->iHardwareService:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Ljim/h/common/android/zxinglib/camera/FlashlightManager;->setFlashEnabledMethod:Ljava/lang/reflect/Method;

    sget-object v1, Ljim/h/common/android/zxinglib/camera/FlashlightManager;->iHardwareService:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljim/h/common/android/zxinglib/camera/FlashlightManager;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_0
    return-void
.end method