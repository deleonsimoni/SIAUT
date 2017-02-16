.class final Ljim/h/common/android/zxinglib/InactivityTimer$PowerStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InactivityTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljim/h/common/android/zxinglib/InactivityTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerStatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Ljim/h/common/android/zxinglib/InactivityTimer;


# direct methods
.method private constructor <init>(Ljim/h/common/android/zxinglib/InactivityTimer;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Ljim/h/common/android/zxinglib/InactivityTimer$PowerStatusReceiver;->this$0:Ljim/h/common/android/zxinglib/InactivityTimer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljim/h/common/android/zxinglib/InactivityTimer;Ljim/h/common/android/zxinglib/InactivityTimer$PowerStatusReceiver;)V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0, p1}, Ljim/h/common/android/zxinglib/InactivityTimer$PowerStatusReceiver;-><init>(Ljim/h/common/android/zxinglib/InactivityTimer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 96
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "plugged"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Ljim/h/common/android/zxinglib/InactivityTimer$PowerStatusReceiver;->this$0:Ljim/h/common/android/zxinglib/InactivityTimer;

    invoke-virtual {v0}, Ljim/h/common/android/zxinglib/InactivityTimer;->onActivity()V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Ljim/h/common/android/zxinglib/InactivityTimer$PowerStatusReceiver;->this$0:Ljim/h/common/android/zxinglib/InactivityTimer;

    # invokes: Ljim/h/common/android/zxinglib/InactivityTimer;->cancel()V
    invoke-static {v0}, Ljim/h/common/android/zxinglib/InactivityTimer;->access$0(Ljim/h/common/android/zxinglib/InactivityTimer;)V

    goto :goto_0
.end method
