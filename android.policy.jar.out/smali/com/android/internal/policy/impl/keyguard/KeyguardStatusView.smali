.class public Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;
.super Landroid/widget/GridLayout;
.source "KeyguardStatusView.java"


# static fields
.field public static final ALARM_ICON:I = 0x10800b5

.field public static final BATTERY_LOW_ICON:I = 0x0

.field public static final CHARGING_ICON:I = 0x0

.field private static final DEBUG:Z = true

.field private static final DM12:Ljava/lang/String; = "E h:mm aa"

.field private static final DM24:Ljava/lang/String; = "E kk:mm"

.field public static final LOCK_ICON:I = 0x0

.field private static final TAG:Ljava/lang/String; = "KeyguardStatusView"


# instance fields
.field private mAlarmStatusView:Landroid/widget/TextView;

.field private mClockView:Lcom/android/internal/policy/impl/keyguard/ClockView;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mDateView:Landroid/widget/TextView;

.field private mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 81
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mNextTime:J

    .line 64
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 90
    return-void
.end method

.method private formatDayAndTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "c"

    .prologue
    .line 130
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "E kk:mm"

    .line 133
    .local v0, format:Ljava/lang/String;
    :goto_0
    const/16 v1, 0x100

    .line 134
    .local v1, format_flags:I
    or-int/lit8 v1, v1, 0x1

    .line 135
    or-int/lit8 v1, v1, 0x2

    .line 136
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {p1, v2, v3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 137
    if-nez p2, :cond_1

    const-string v2, ""

    :goto_1
    return-object v2

    .line 130
    .end local v0           #format:Ljava/lang/String;
    .end local v1           #format_flags:I
    :cond_0
    const-string v0, "E h:mm aa"

    goto :goto_0

    .line 137
    .restart local v0       #format:Ljava/lang/String;
    .restart local v1       #format_flags:I
    :cond_1
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {p1, v2, v3, v1}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private maybeSetUpperCaseText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "textView"
    .parameter "text"

    .prologue
    .line 188
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->USE_UPPER_CASE:Z

    if-eqz v0, :cond_1

    .line 189
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    :goto_1
    return-void

    .line 189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public getAppWidgetId()I
    .locals 1

    .prologue
    .line 184
    const/4 v0, -0x2

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 174
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 175
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 179
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 180
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mInfoCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 181
    return-void
.end method

.method protected onFinishInflate()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 94
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 96
    .local v5, res:Landroid/content/res/Resources;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 97
    .local v3, locale:Ljava/util/Locale;
    const v7, 0x10400a7

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, datePattern:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Llibcore/icu/ICU;->getBestDateTimePattern(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, bestFormat:Ljava/lang/String;
    new-instance v7, Ljava/text/SimpleDateFormat;

    invoke-direct {v7, v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 101
    const v7, 0x1020063

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextView;

    .line 102
    const v7, 0x1020302

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    .line 103
    const v7, 0x1020304

    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/policy/impl/keyguard/ClockView;

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mClockView:Lcom/android/internal/policy/impl/keyguard/ClockView;

    .line 104
    new-instance v7, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 112
    const/4 v7, 0x2

    new-array v4, v7, [Landroid/view/View;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextView;

    aput-object v8, v4, v7

    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    aput-object v7, v4, v9

    .line 113
    .local v4, marqueeViews:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v7, v4

    if-ge v2, v7, :cond_1

    .line 114
    aget-object v6, v4, v2

    .line 115
    .local v6, v:Landroid/view/View;
    if-nez v6, :cond_0

    .line 116
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t find widget at index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 118
    :cond_0
    invoke-virtual {v6, v9}, Landroid/view/View;->setSelected(Z)V

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    .end local v6           #v:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->refresh()V

    .line 121
    return-void
.end method

.method protected refresh()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mClockView:Lcom/android/internal/policy/impl/keyguard/ClockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ClockView;->updateTime()V

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->refreshDate()V

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->refreshAlarmStatus()V

    .line 127
    return-void
.end method

.method refreshAlarmStatus()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 146
    const/4 v1, 0x0

    .line 147
    .local v1, nextAlarm:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarmTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mNextTime:J

    .line 148
    iget-wide v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mNextTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 149
    const/4 v1, 0x0

    .line 158
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 159
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-direct {p0, v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->maybeSetUpperCaseText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 160
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    const v3, 0x10800b5

    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 161
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 165
    :goto_1
    return-void

    .line 151
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 152
    .local v0, c:Ljava/util/Calendar;
    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mNextTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->formatDayAndTime(Landroid/content/Context;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 163
    .end local v0           #c:Ljava/util/Calendar;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mAlarmStatusView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method refreshDate()V
    .locals 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;->maybeSetUpperCaseText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 169
    return-void
.end method
