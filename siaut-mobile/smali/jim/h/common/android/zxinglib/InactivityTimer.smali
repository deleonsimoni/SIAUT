.class final Ljim/h/common/android/zxinglib/InactivityTimer;
.super Ljava/lang/Object;
.source "InactivityTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljim/h/common/android/zxinglib/InactivityTimer$DaemonThreadFactory;,
        Ljim/h/common/android/zxinglib/InactivityTimer$PowerStatusReceiver;
    }
.end annotation


# static fields
.field private static final INACTIVITY_DELAY_SECONDS:I = 0x12c


# instance fields
.field private final activity:Landroid/app/Activity;

.field private inactivityFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final inactivityTimer:Ljava/util/concurrent/ScheduledExecutorService;

.field private final powerStatusReceiver:Ljim/h/common/android/zxinglib/InactivityTimer$PowerStatusReceiver;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljim/h/common/android/zxinglib/InactivityTimer$DaemonThreadFactory;

    invoke-direct {v0, v1}, Ljim/h/common/android/zxinglib/InactivityTimer$DaemonThreadFactory;-><init>(Ljim/h/common/android/zxinglib/InactivityTimer$DaemonThreadFactory;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Ljim/h/common/android/zxinglib/InactivityTimer;->inactivityTimer:Ljava/util/concurrent/ScheduledExecutorService;

    .line 43
    iput-object v1, p0, Ljim/h/common/android/zxinglib/InactivityTimer;->inactivityFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 44
    new-instance v0, Ljim/h/common/android/zxinglib/InactivityTimer$PowerStatusReceiver;

    invoke-direct {v0, p0, v1}, Ljim/h/common/android/zxinglib/InactivityTimer$PowerStatusReceiver;-><init>(Ljim/h/common/android/zxinglib/InactivityTimer;Ljim/h/common/android/zxinglib/InactivityTimer$PowerStatusReceiver;)V

    iput-object v0, p0, Ljim/h/common/android/zxinglib/InactivityTimer;->powerStatusReceiver:Ljim/h/common/android/zxinglib/InactivityTimer$PowerStatusReceiver;

    .line 47
    iput-object p1, p0, Ljim/h/common/android/zxinglib/InactivityTimer;->activity:Landroid/app/Activity;

    .line 48
    invoke-virtual {p0}, Ljim/h/common/android/zxinglib/InactivityTimer;->onActivity()V

    .line 49
    return-void
.end method

.method static synthetic access$0(Ljim/h/common/android/zxinglib/InactivityTimer;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljim/h/common/android/zxinglib/InactivityTimer;->cancel()V

    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Ljim/h/common/android/zxinglib/InactivityTimer;->inactivityFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Ljim/h/common/android/zxinglib/InactivityTimer;->inactivityFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Ljim/h/common/android/zxinglib/InactivityTimer;->inactivityFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method onActivity()V
    .locals 5

    .prologue
    .line 52
    invoke-direct {p0}, Ljim/h/common/android/zxinglib/InactivityTimer;->cancel()V

    .line 53
    iget-object v0, p0, Ljim/h/common/android/zxinglib/InactivityTimer;->inactivityTimer:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    :try_start_0
    iget-object v0, p0, Ljim/h/common/android/zxinglib/InactivityTimer;->inactivityTimer:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Ljim/h/common/android/zxinglib/FinishListener;

    iget-object v2, p0, Ljim/h/common/android/zxinglib/InactivityTimer;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Ljim/h/common/android/zxinglib/FinishListener;-><init>(Landroid/app/Activity;)V

    .line 56
    const-wide/16 v2, 0x12c

    .line 57
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 55
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Ljim/h/common/android/zxinglib/InactivityTimer;->inactivityFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Ljim/h/common/android/zxinglib/InactivityTimer;->activity:Landroid/app/Activity;

    iget-object v1, p0, Ljim/h/common/android/zxinglib/InactivityTimer;->powerStatusReceiver:Ljim/h/common/android/zxinglib/InactivityTimer$PowerStatusReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 67
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Ljim/h/common/android/zxinglib/InactivityTimer;->activity:Landroid/app/Activity;

    iget-object v1, p0, Ljim/h/common/android/zxinglib/InactivityTimer;->powerStatusReceiver:Ljim/h/common/android/zxinglib/InactivityTimer$PowerStatusReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    return-void
.end method

.method shutdown()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljim/h/common/android/zxinglib/InactivityTimer;->cancel()V

    .line 82
    iget-object v0, p0, Ljim/h/common/android/zxinglib/InactivityTimer;->inactivityTimer:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 83
    return-void
.end method
