.class final enum Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;
.super Ljava/lang/Enum;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljim/h/common/android/zxinglib/CaptureActivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DONE:Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

.field private static final synthetic ENUM$VALUES:[Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

.field public static final enum PREVIEW:Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

.field public static final enum SUCCESS:Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

    const-string v1, "PREVIEW"

    invoke-direct {v0, v1, v2}, Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;->PREVIEW:Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

    .line 50
    new-instance v0, Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;->SUCCESS:Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

    .line 51
    new-instance v0, Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v4}, Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;->DONE:Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

    .line 48
    const/4 v0, 0x3

    new-array v0, v0, [Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

    sget-object v1, Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;->PREVIEW:Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

    aput-object v1, v0, v2

    sget-object v1, Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;->SUCCESS:Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

    aput-object v1, v0, v3

    sget-object v1, Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;->DONE:Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

    aput-object v1, v0, v4

    sput-object v0, Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;->ENUM$VALUES:[Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;
    .locals 1

    .prologue
    .line 1
    const-class v0, Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

    return-object v0
.end method

.method public static values()[Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;->ENUM$VALUES:[Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

    array-length v1, v0

    new-array v2, v1, [Ljim/h/common/android/zxinglib/CaptureActivityHandler$State;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
