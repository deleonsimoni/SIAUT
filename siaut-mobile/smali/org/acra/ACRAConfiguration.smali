.class public Lorg/acra/ACRAConfiguration;
.super Ljava/lang/Object;
.source "ACRAConfiguration.java"

# interfaces
.implements Lorg/acra/annotation/ReportsCrashes;


# instance fields
.field private mAdditionalDropboxTags:[Ljava/lang/String;

.field private mAdditionalSharedPreferences:[Ljava/lang/String;

.field private mApplicationLogFile:Ljava/lang/String;

.field private mApplicationLogFileLines:Ljava/lang/Integer;

.field private mConnectionTimeout:Ljava/lang/Integer;

.field private mCustomReportContent:[Lorg/acra/ReportField;

.field private mDeleteOldUnsentReportsOnApplicationStart:Ljava/lang/Boolean;

.field private mDeleteUnapprovedReportsOnApplicationStart:Ljava/lang/Boolean;

.field private mDisableSSLCertValidation:Ljava/lang/Boolean;

.field private mDropboxCollectionMinutes:Ljava/lang/Integer;

.field private mExcludeMatchingSettingsKeys:[Ljava/lang/String;

.field private mExcludeMatchingSharedPreferencesKeys:[Ljava/lang/String;

.field private mForceCloseDialogAfterToast:Ljava/lang/Boolean;

.field private mFormKey:Ljava/lang/String;

.field private mFormUri:Ljava/lang/String;

.field private mFormUriBasicAuthLogin:Ljava/lang/String;

.field private mFormUriBasicAuthPassword:Ljava/lang/String;

.field private mGoogleFormUrlFormat:Ljava/lang/String;

.field private mHttpHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHttpMethod:Lorg/acra/sender/HttpSender$Method;

.field private mIncludeDropboxSystemTags:Ljava/lang/Boolean;

.field private mLogcatArguments:[Ljava/lang/String;

.field private mLogcatFilterByPid:Ljava/lang/Boolean;

.field private mMailTo:Ljava/lang/String;

.field private mMaxNumberOfRequestRetries:Ljava/lang/Integer;

.field private mMode:Lorg/acra/ReportingInteractionMode;

.field private mReportType:Lorg/acra/sender/HttpSender$Type;

.field private mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

.field private mResDialogCommentPrompt:Ljava/lang/Integer;

.field private mResDialogEmailPrompt:Ljava/lang/Integer;

.field private mResDialogIcon:Ljava/lang/Integer;

.field private mResDialogOkToast:Ljava/lang/Integer;

.field private mResDialogText:Ljava/lang/Integer;

.field private mResDialogTitle:Ljava/lang/Integer;

.field private mResNotifIcon:Ljava/lang/Integer;

.field private mResNotifText:Ljava/lang/Integer;

.field private mResNotifTickerText:Ljava/lang/Integer;

.field private mResNotifTitle:Ljava/lang/Integer;

.field private mResToastText:Ljava/lang/Integer;

.field private mSendReportsInDevMode:Ljava/lang/Boolean;

.field private mSharedPreferenceMode:Ljava/lang/Integer;

.field private mSharedPreferenceName:Ljava/lang/String;

.field private mSocketTimeout:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lorg/acra/annotation/ReportsCrashes;)V
    .locals 1
    .param p1, "defaults"    # Lorg/acra/annotation/ReportsCrashes;

    .prologue
    const/4 v0, 0x0

    .line 540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mAdditionalDropboxTags:[Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mAdditionalSharedPreferences:[Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mConnectionTimeout:Ljava/lang/Integer;

    .line 61
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mCustomReportContent:[Lorg/acra/ReportField;

    .line 62
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mDeleteUnapprovedReportsOnApplicationStart:Ljava/lang/Boolean;

    .line 63
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mDeleteOldUnsentReportsOnApplicationStart:Ljava/lang/Boolean;

    .line 64
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mDropboxCollectionMinutes:Ljava/lang/Integer;

    .line 65
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mForceCloseDialogAfterToast:Ljava/lang/Boolean;

    .line 66
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormKey:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormUri:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormUriBasicAuthLogin:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormUriBasicAuthPassword:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mIncludeDropboxSystemTags:Ljava/lang/Boolean;

    .line 72
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mLogcatArguments:[Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mMailTo:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mMaxNumberOfRequestRetries:Ljava/lang/Integer;

    .line 75
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mMode:Lorg/acra/ReportingInteractionMode;

    .line 76
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    .line 78
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogCommentPrompt:Ljava/lang/Integer;

    .line 79
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogEmailPrompt:Ljava/lang/Integer;

    .line 80
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogIcon:Ljava/lang/Integer;

    .line 81
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogOkToast:Ljava/lang/Integer;

    .line 82
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogText:Ljava/lang/Integer;

    .line 83
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogTitle:Ljava/lang/Integer;

    .line 84
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifIcon:Ljava/lang/Integer;

    .line 85
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifText:Ljava/lang/Integer;

    .line 86
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifTickerText:Ljava/lang/Integer;

    .line 87
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifTitle:Ljava/lang/Integer;

    .line 88
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResToastText:Ljava/lang/Integer;

    .line 89
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mSharedPreferenceMode:Ljava/lang/Integer;

    .line 90
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mSharedPreferenceName:Ljava/lang/String;

    .line 91
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mSocketTimeout:Ljava/lang/Integer;

    .line 92
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mLogcatFilterByPid:Ljava/lang/Boolean;

    .line 93
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mSendReportsInDevMode:Ljava/lang/Boolean;

    .line 95
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mExcludeMatchingSharedPreferencesKeys:[Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mExcludeMatchingSettingsKeys:[Ljava/lang/String;

    .line 97
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mApplicationLogFile:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mApplicationLogFileLines:Ljava/lang/Integer;

    .line 100
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mGoogleFormUrlFormat:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mDisableSSLCertValidation:Ljava/lang/Boolean;

    .line 103
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mHttpMethod:Lorg/acra/sender/HttpSender$Method;

    .line 104
    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportType:Lorg/acra/sender/HttpSender$Type;

    .line 541
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    .line 542
    return-void
.end method

.method public static isNull(Ljava/lang/String;)Z
    .locals 1
    .param p0, "aString"    # Ljava/lang/String;

    .prologue
    .line 1091
    if-eqz p0, :cond_0

    const-string v0, "ACRA-NULL-STRING"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public additionalDropBoxTags()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 546
    iget-object v1, p0, Lorg/acra/ACRAConfiguration;->mAdditionalDropboxTags:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 547
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mAdditionalDropboxTags:[Ljava/lang/String;

    .line 555
    :goto_0
    return-object v0

    .line 550
    :cond_0
    iget-object v1, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v1, :cond_1

    .line 551
    iget-object v1, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->additionalDropBoxTags()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 554
    :cond_1
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    .line 555
    .local v0, "defaultValue":[Ljava/lang/String;
    goto :goto_0
.end method

.method public additionalSharedPreferences()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 560
    iget-object v1, p0, Lorg/acra/ACRAConfiguration;->mAdditionalSharedPreferences:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 561
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mAdditionalSharedPreferences:[Ljava/lang/String;

    .line 569
    :goto_0
    return-object v0

    .line 564
    :cond_0
    iget-object v1, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v1, :cond_1

    .line 565
    iget-object v1, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->additionalSharedPreferences()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 568
    :cond_1
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    .line 569
    .local v0, "defaultValue":[Ljava/lang/String;
    goto :goto_0
.end method

.method public annotationType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 574
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->annotationType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public applicationLogFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mApplicationLogFile:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1015
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mApplicationLogFile:Ljava/lang/String;

    .line 1022
    :goto_0
    return-object v0

    .line 1018
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1019
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->applicationLogFile()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1022
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public applicationLogFileLines()I
    .locals 1

    .prologue
    .line 1027
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mApplicationLogFileLines:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mApplicationLogFileLines:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1035
    :goto_0
    return v0

    .line 1031
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1032
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->applicationLogFileLines()I

    move-result v0

    goto :goto_0

    .line 1035
    :cond_1
    const/16 v0, 0x64

    goto :goto_0
.end method

.method public connectionTimeout()I
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mConnectionTimeout:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mConnectionTimeout:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 587
    :goto_0
    return v0

    .line 583
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 584
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->connectionTimeout()I

    move-result v0

    goto :goto_0

    .line 587
    :cond_1
    const/16 v0, 0xbb8

    goto :goto_0
.end method

.method public customReportContent()[Lorg/acra/ReportField;
    .locals 2

    .prologue
    .line 592
    iget-object v1, p0, Lorg/acra/ACRAConfiguration;->mCustomReportContent:[Lorg/acra/ReportField;

    if-eqz v1, :cond_0

    .line 593
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mCustomReportContent:[Lorg/acra/ReportField;

    .line 601
    :goto_0
    return-object v0

    .line 596
    :cond_0
    iget-object v1, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v1, :cond_1

    .line 597
    iget-object v1, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->customReportContent()[Lorg/acra/ReportField;

    move-result-object v0

    goto :goto_0

    .line 600
    :cond_1
    const/4 v1, 0x0

    new-array v0, v1, [Lorg/acra/ReportField;

    .line 601
    .local v0, "defaultValue":[Lorg/acra/ReportField;
    goto :goto_0
.end method

.method public deleteOldUnsentReportsOnApplicationStart()Z
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mDeleteOldUnsentReportsOnApplicationStart:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mDeleteOldUnsentReportsOnApplicationStart:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 627
    :goto_0
    return v0

    .line 623
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 624
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->deleteOldUnsentReportsOnApplicationStart()Z

    move-result v0

    goto :goto_0

    .line 627
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public deleteUnapprovedReportsOnApplicationStart()Z
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mDeleteUnapprovedReportsOnApplicationStart:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mDeleteUnapprovedReportsOnApplicationStart:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 614
    :goto_0
    return v0

    .line 610
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->deleteUnapprovedReportsOnApplicationStart()Z

    move-result v0

    goto :goto_0

    .line 614
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public disableSSLCertValidation()Z
    .locals 1

    .prologue
    .line 1053
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mDisableSSLCertValidation:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mDisableSSLCertValidation:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1061
    :goto_0
    return v0

    .line 1057
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1058
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->disableSSLCertValidation()Z

    move-result v0

    goto :goto_0

    .line 1061
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dropboxCollectionMinutes()I
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mDropboxCollectionMinutes:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mDropboxCollectionMinutes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 640
    :goto_0
    return v0

    .line 636
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 637
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->dropboxCollectionMinutes()I

    move-result v0

    goto :goto_0

    .line 640
    :cond_1
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public excludeMatchingSettingsKeys()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 999
    iget-object v1, p0, Lorg/acra/ACRAConfiguration;->mExcludeMatchingSettingsKeys:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1000
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mExcludeMatchingSettingsKeys:[Ljava/lang/String;

    .line 1009
    :goto_0
    return-object v0

    .line 1003
    :cond_0
    iget-object v1, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v1, :cond_1

    .line 1004
    iget-object v1, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->excludeMatchingSettingsKeys()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1007
    :cond_1
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    .line 1009
    .local v0, "defaultValue":[Ljava/lang/String;
    goto :goto_0
.end method

.method public excludeMatchingSharedPreferencesKeys()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 984
    iget-object v1, p0, Lorg/acra/ACRAConfiguration;->mExcludeMatchingSharedPreferencesKeys:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 985
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mExcludeMatchingSharedPreferencesKeys:[Ljava/lang/String;

    .line 994
    :goto_0
    return-object v0

    .line 988
    :cond_0
    iget-object v1, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v1, :cond_1

    .line 989
    iget-object v1, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->excludeMatchingSharedPreferencesKeys()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 992
    :cond_1
    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    .line 994
    .local v0, "defaultValue":[Ljava/lang/String;
    goto :goto_0
.end method

.method public forceCloseDialogAfterToast()Z
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mForceCloseDialogAfterToast:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mForceCloseDialogAfterToast:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 653
    :goto_0
    return v0

    .line 649
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 650
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->forceCloseDialogAfterToast()Z

    move-result v0

    goto :goto_0

    .line 653
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public formKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormKey:Ljava/lang/String;

    .line 666
    :goto_0
    return-object v0

    .line 662
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 663
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->formKey()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 666
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public formUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormUri:Ljava/lang/String;

    .line 679
    :goto_0
    return-object v0

    .line 675
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 676
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->formUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 679
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public formUriBasicAuthLogin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormUriBasicAuthLogin:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormUriBasicAuthLogin:Ljava/lang/String;

    .line 692
    :goto_0
    return-object v0

    .line 688
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 689
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->formUriBasicAuthLogin()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 692
    :cond_1
    const-string v0, "ACRA-NULL-STRING"

    goto :goto_0
.end method

.method public formUriBasicAuthPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormUriBasicAuthPassword:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mFormUriBasicAuthPassword:Ljava/lang/String;

    .line 705
    :goto_0
    return-object v0

    .line 701
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->formUriBasicAuthPassword()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 705
    :cond_1
    const-string v0, "ACRA-NULL-STRING"

    goto :goto_0
.end method

.method public getHttpHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mHttpHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public googleFormUrlFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mGoogleFormUrlFormat:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1041
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mGoogleFormUrlFormat:Ljava/lang/String;

    .line 1048
    :goto_0
    return-object v0

    .line 1044
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1045
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->googleFormUrlFormat()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1048
    :cond_1
    const-string v0, "https://docs.google.com/spreadsheet/formResponse?formkey=%s&ifq"

    goto :goto_0
.end method

.method public httpMethod()Lorg/acra/sender/HttpSender$Method;
    .locals 1

    .prologue
    .line 1066
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mHttpMethod:Lorg/acra/sender/HttpSender$Method;

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mHttpMethod:Lorg/acra/sender/HttpSender$Method;

    .line 1074
    :goto_0
    return-object v0

    .line 1070
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1071
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->httpMethod()Lorg/acra/sender/HttpSender$Method;

    move-result-object v0

    goto :goto_0

    .line 1074
    :cond_1
    sget-object v0, Lorg/acra/sender/HttpSender$Method;->POST:Lorg/acra/sender/HttpSender$Method;

    goto :goto_0
.end method

.method public includeDropBoxSystemTags()Z
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mIncludeDropboxSystemTags:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mIncludeDropboxSystemTags:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 718
    :goto_0
    return v0

    .line 714
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->includeDropBoxSystemTags()Z

    move-result v0

    goto :goto_0

    .line 718
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logcatArguments()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 723
    iget-object v1, p0, Lorg/acra/ACRAConfiguration;->mLogcatArguments:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 724
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mLogcatArguments:[Ljava/lang/String;

    .line 732
    :goto_0
    return-object v0

    .line 727
    :cond_0
    iget-object v1, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v1, :cond_1

    .line 728
    iget-object v1, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v1}, Lorg/acra/annotation/ReportsCrashes;->logcatArguments()[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 731
    :cond_1
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-t"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "-v"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "time"

    aput-object v2, v0, v1

    .line 732
    .local v0, "defaultValues":[Ljava/lang/String;
    goto :goto_0
.end method

.method public logcatFilterByPid()Z
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mLogcatFilterByPid:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mLogcatFilterByPid:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 966
    :goto_0
    return v0

    .line 962
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 963
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->logcatFilterByPid()Z

    move-result v0

    goto :goto_0

    .line 966
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mailTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mMailTo:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mMailTo:Ljava/lang/String;

    .line 745
    :goto_0
    return-object v0

    .line 741
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 742
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->mailTo()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 745
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public maxNumberOfRequestRetries()I
    .locals 1

    .prologue
    .line 750
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mMaxNumberOfRequestRetries:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mMaxNumberOfRequestRetries:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 758
    :goto_0
    return v0

    .line 754
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 755
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->maxNumberOfRequestRetries()I

    move-result v0

    goto :goto_0

    .line 758
    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public mode()Lorg/acra/ReportingInteractionMode;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mMode:Lorg/acra/ReportingInteractionMode;

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mMode:Lorg/acra/ReportingInteractionMode;

    .line 771
    :goto_0
    return-object v0

    .line 767
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 768
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v0

    goto :goto_0

    .line 771
    :cond_1
    sget-object v0, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    goto :goto_0
.end method

.method public reportType()Lorg/acra/sender/HttpSender$Type;
    .locals 1

    .prologue
    .line 1079
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportType:Lorg/acra/sender/HttpSender$Type;

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportType:Lorg/acra/sender/HttpSender$Type;

    .line 1087
    :goto_0
    return-object v0

    .line 1083
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 1084
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->reportType()Lorg/acra/sender/HttpSender$Type;

    move-result-object v0

    goto :goto_0

    .line 1087
    :cond_1
    sget-object v0, Lorg/acra/sender/HttpSender$Type;->FORM:Lorg/acra/sender/HttpSender$Type;

    goto :goto_0
.end method

.method public resDialogCommentPrompt()I
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogCommentPrompt:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogCommentPrompt:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 784
    :goto_0
    return v0

    .line 780
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 781
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogCommentPrompt()I

    move-result v0

    goto :goto_0

    .line 784
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resDialogEmailPrompt()I
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogEmailPrompt:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogEmailPrompt:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 797
    :goto_0
    return v0

    .line 793
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 794
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogEmailPrompt()I

    move-result v0

    goto :goto_0

    .line 797
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resDialogIcon()I
    .locals 1

    .prologue
    .line 802
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogIcon:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogIcon:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 810
    :goto_0
    return v0

    .line 806
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 807
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogIcon()I

    move-result v0

    goto :goto_0

    .line 810
    :cond_1
    const v0, 0x1080027

    goto :goto_0
.end method

.method public resDialogOkToast()I
    .locals 1

    .prologue
    .line 815
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogOkToast:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogOkToast:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 823
    :goto_0
    return v0

    .line 819
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 820
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogOkToast()I

    move-result v0

    goto :goto_0

    .line 823
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resDialogText()I
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogText:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogText:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 836
    :goto_0
    return v0

    .line 832
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 833
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogText()I

    move-result v0

    goto :goto_0

    .line 836
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resDialogTitle()I
    .locals 1

    .prologue
    .line 841
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogTitle:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogTitle:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 849
    :goto_0
    return v0

    .line 845
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 846
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resDialogTitle()I

    move-result v0

    goto :goto_0

    .line 849
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resNotifIcon()I
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifIcon:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifIcon:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 862
    :goto_0
    return v0

    .line 858
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 859
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifIcon()I

    move-result v0

    goto :goto_0

    .line 862
    :cond_1
    const v0, 0x1080078

    goto :goto_0
.end method

.method public resNotifText()I
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifText:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifText:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 875
    :goto_0
    return v0

    .line 871
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 872
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifText()I

    move-result v0

    goto :goto_0

    .line 875
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resNotifTickerText()I
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifTickerText:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifTickerText:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 888
    :goto_0
    return v0

    .line 884
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 885
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifTickerText()I

    move-result v0

    goto :goto_0

    .line 888
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resNotifTitle()I
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifTitle:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 894
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifTitle:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 901
    :goto_0
    return v0

    .line 897
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 898
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resNotifTitle()I

    move-result v0

    goto :goto_0

    .line 901
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resToastText()I
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResToastText:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mResToastText:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 914
    :goto_0
    return v0

    .line 910
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 911
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->resToastText()I

    move-result v0

    goto :goto_0

    .line 914
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendReportsInDevMode()Z
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mSendReportsInDevMode:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mSendReportsInDevMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 979
    :goto_0
    return v0

    .line 975
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 976
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->sendReportsInDevMode()Z

    move-result v0

    goto :goto_0

    .line 979
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setAdditionalDropboxTags([Ljava/lang/String;)V
    .locals 0
    .param p1, "additionalDropboxTags"    # [Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mAdditionalDropboxTags:[Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setAdditionalSharedPreferences([Ljava/lang/String;)V
    .locals 0
    .param p1, "additionalSharedPreferences"    # [Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mAdditionalSharedPreferences:[Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setApplicationLogFile(Ljava/lang/String;)V
    .locals 0
    .param p1, "applicationLogFile"    # Ljava/lang/String;

    .prologue
    .line 493
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mApplicationLogFile:Ljava/lang/String;

    .line 494
    return-void
.end method

.method public setApplicationLogFileLines(I)V
    .locals 1
    .param p1, "applicationLogFileLines"    # I

    .prologue
    .line 504
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mApplicationLogFileLines:Ljava/lang/Integer;

    .line 505
    return-void
.end method

.method public setConnectionTimeout(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "connectionTimeout"    # Ljava/lang/Integer;

    .prologue
    .line 150
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mConnectionTimeout:Ljava/lang/Integer;

    .line 151
    return-void
.end method

.method public setCustomReportContent([Lorg/acra/ReportField;)V
    .locals 0
    .param p1, "customReportContent"    # [Lorg/acra/ReportField;

    .prologue
    .line 158
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mCustomReportContent:[Lorg/acra/ReportField;

    .line 159
    return-void
.end method

.method public setDeleteOldUnsentReportsOnApplicationStart(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "deleteOldUnsetReportsOnApplicationStart"    # Ljava/lang/Boolean;

    .prologue
    .line 173
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mDeleteOldUnsentReportsOnApplicationStart:Ljava/lang/Boolean;

    .line 174
    return-void
.end method

.method public setDeleteUnapprovedReportsOnApplicationStart(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "deleteUnapprovedReportsOnApplicationStart"    # Ljava/lang/Boolean;

    .prologue
    .line 166
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mDeleteUnapprovedReportsOnApplicationStart:Ljava/lang/Boolean;

    .line 167
    return-void
.end method

.method public setDisableSSLCertValidation(Z)V
    .locals 1
    .param p1, "disableSSLCertValidation"    # Z

    .prologue
    .line 514
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mDisableSSLCertValidation:Ljava/lang/Boolean;

    .line 515
    return-void
.end method

.method public setDropboxCollectionMinutes(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "dropboxCollectionMinutes"    # Ljava/lang/Integer;

    .prologue
    .line 181
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mDropboxCollectionMinutes:Ljava/lang/Integer;

    .line 182
    return-void
.end method

.method public setExcludeMatchingSettingsKeys([Ljava/lang/String;)V
    .locals 0
    .param p1, "excludeMatchingSettingsKeys"    # [Ljava/lang/String;

    .prologue
    .line 483
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mExcludeMatchingSettingsKeys:[Ljava/lang/String;

    .line 484
    return-void
.end method

.method public setExcludeMatchingSharedPreferencesKeys([Ljava/lang/String;)V
    .locals 0
    .param p1, "excludeMatchingSharedPreferencesKeys"    # [Ljava/lang/String;

    .prologue
    .line 472
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mExcludeMatchingSharedPreferencesKeys:[Ljava/lang/String;

    .line 473
    return-void
.end method

.method public setForceCloseDialogAfterToast(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "forceCloseDialogAfterToast"    # Ljava/lang/Boolean;

    .prologue
    .line 189
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mForceCloseDialogAfterToast:Ljava/lang/Boolean;

    .line 190
    return-void
.end method

.method public setFormKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "formKey"    # Ljava/lang/String;

    .prologue
    .line 202
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mFormKey:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setFormUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "formUri"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mFormUri:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setFormUriBasicAuthLogin(Ljava/lang/String;)V
    .locals 0
    .param p1, "formUriBasicAuthLogin"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mFormUriBasicAuthLogin:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setFormUriBasicAuthPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "formUriBasicAuthPassword"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mFormUriBasicAuthPassword:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setHttpHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mHttpHeaders:Ljava/util/Map;

    .line 116
    return-void
.end method

.method public setHttpMethod(Lorg/acra/sender/HttpSender$Method;)V
    .locals 0
    .param p1, "httpMethod"    # Lorg/acra/sender/HttpSender$Method;

    .prologue
    .line 523
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mHttpMethod:Lorg/acra/sender/HttpSender$Method;

    .line 524
    return-void
.end method

.method public setIncludeDropboxSystemTags(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "includeDropboxSystemTags"    # Ljava/lang/Boolean;

    .prologue
    .line 239
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mIncludeDropboxSystemTags:Ljava/lang/Boolean;

    .line 240
    return-void
.end method

.method public setLogcatArguments([Ljava/lang/String;)V
    .locals 0
    .param p1, "logcatArguments"    # [Ljava/lang/String;

    .prologue
    .line 247
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mLogcatArguments:[Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setLogcatFilterByPid(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "filterByPid"    # Ljava/lang/Boolean;

    .prologue
    .line 451
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mLogcatFilterByPid:Ljava/lang/Boolean;

    .line 452
    return-void
.end method

.method public setMailTo(Ljava/lang/String;)V
    .locals 0
    .param p1, "mailTo"    # Ljava/lang/String;

    .prologue
    .line 260
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mMailTo:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setMaxNumberOfRequestRetries(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "maxNumberOfRequestRetries"    # Ljava/lang/Integer;

    .prologue
    .line 268
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mMaxNumberOfRequestRetries:Ljava/lang/Integer;

    .line 269
    return-void
.end method

.method public setMode(Lorg/acra/ReportingInteractionMode;)V
    .locals 0
    .param p1, "mode"    # Lorg/acra/ReportingInteractionMode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/acra/ACRAConfigurationException;
        }
    .end annotation

    .prologue
    .line 281
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mMode:Lorg/acra/ReportingInteractionMode;

    .line 282
    invoke-static {}, Lorg/acra/ACRA;->checkCrashResources()V

    .line 283
    return-void
.end method

.method public setReportType(Lorg/acra/sender/HttpSender$Type;)V
    .locals 0
    .param p1, "type"    # Lorg/acra/sender/HttpSender$Type;

    .prologue
    .line 533
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mReportType:Lorg/acra/sender/HttpSender$Type;

    .line 534
    return-void
.end method

.method public setResDialogCommentPrompt(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 295
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogCommentPrompt:Ljava/lang/Integer;

    .line 296
    return-void
.end method

.method public setResDialogEmailPrompt(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 308
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogEmailPrompt:Ljava/lang/Integer;

    .line 309
    return-void
.end method

.method public setResDialogIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 320
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogIcon:Ljava/lang/Integer;

    .line 321
    return-void
.end method

.method public setResDialogOkToast(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 332
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogOkToast:Ljava/lang/Integer;

    .line 333
    return-void
.end method

.method public setResDialogText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 344
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogText:Ljava/lang/Integer;

    .line 345
    return-void
.end method

.method public setResDialogTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 356
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResDialogTitle:Ljava/lang/Integer;

    .line 357
    return-void
.end method

.method public setResNotifIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 368
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifIcon:Ljava/lang/Integer;

    .line 369
    return-void
.end method

.method public setResNotifText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 380
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifText:Ljava/lang/Integer;

    .line 381
    return-void
.end method

.method public setResNotifTickerText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 393
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifTickerText:Ljava/lang/Integer;

    .line 394
    return-void
.end method

.method public setResNotifTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 405
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResNotifTitle:Ljava/lang/Integer;

    .line 406
    return-void
.end method

.method public setResToastText(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 417
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/acra/ACRAConfiguration;->mResToastText:Ljava/lang/Integer;

    .line 418
    return-void
.end method

.method public setSendReportsInDevMode(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "sendReportsInDevMode"    # Ljava/lang/Boolean;

    .prologue
    .line 461
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mSendReportsInDevMode:Ljava/lang/Boolean;

    .line 462
    return-void
.end method

.method public setSharedPreferenceMode(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "sharedPreferenceMode"    # Ljava/lang/Integer;

    .prologue
    .line 425
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mSharedPreferenceMode:Ljava/lang/Integer;

    .line 426
    return-void
.end method

.method public setSharedPreferenceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "sharedPreferenceName"    # Ljava/lang/String;

    .prologue
    .line 433
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mSharedPreferenceName:Ljava/lang/String;

    .line 434
    return-void
.end method

.method public setSocketTimeout(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "socketTimeout"    # Ljava/lang/Integer;

    .prologue
    .line 441
    iput-object p1, p0, Lorg/acra/ACRAConfiguration;->mSocketTimeout:Ljava/lang/Integer;

    .line 442
    return-void
.end method

.method public sharedPreferencesMode()I
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mSharedPreferenceMode:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mSharedPreferenceMode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 927
    :goto_0
    return v0

    .line 923
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 924
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->sharedPreferencesMode()I

    move-result v0

    goto :goto_0

    .line 927
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sharedPreferencesName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mSharedPreferenceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mSharedPreferenceName:Ljava/lang/String;

    .line 940
    :goto_0
    return-object v0

    .line 936
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 937
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->sharedPreferencesName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 940
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public socketTimeout()I
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mSocketTimeout:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mSocketTimeout:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 953
    :goto_0
    return v0

    .line 949
    :cond_0
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    if-eqz v0, :cond_1

    .line 950
    iget-object v0, p0, Lorg/acra/ACRAConfiguration;->mReportsCrashes:Lorg/acra/annotation/ReportsCrashes;

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->socketTimeout()I

    move-result v0

    goto :goto_0

    .line 953
    :cond_1
    const/16 v0, 0x1388

    goto :goto_0
.end method
