.class public Lcom/android/internal/policy/impl/keyguard/ClockView;
.super Landroid/widget/RelativeLayout;
.source "ClockView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/ClockView$FormatChangeObserver;,
        Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;,
        Lcom/android/internal/policy/impl/keyguard/ClockView$TimeChangedReceiver;
    }
.end annotation


# static fields
.field private static final ANDROID_CLOCK_FONT_FILE:Ljava/lang/String; = "/system/fonts/AndroidClock.ttf"

.field private static final M12:Ljava/lang/String; = "h:mm"

.field private static final M24:Ljava/lang/String; = "HH:mm"


# instance fields
.field private mAmPm:Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;

.field private mAttached:I

.field private mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeHour0:Landroid/widget/ImageView;

.field private mTimeHour1:Landroid/widget/ImageView;

.field private mTimeMinute0:Landroid/widget/ImageView;

.field private mTimeMinute1:Landroid/widget/ImageView;

.field private mTimeView:Landroid/widget/TextView;

.field private timeArray:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/ClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mAttached:I

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mHandler:Landroid/os/Handler;

    .line 65
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->timeArray:[I

    .line 165
    return-void

    .line 65
    nop

    :array_0
    .array-data 0x4
        0xb6t 0x0t 0x8t 0x1t
        0xb7t 0x0t 0x8t 0x1t
        0xb8t 0x0t 0x8t 0x1t
        0xb9t 0x0t 0x8t 0x1t
        0xbat 0x0t 0x8t 0x1t
        0xbbt 0x0t 0x8t 0x1t
        0xbct 0x0t 0x8t 0x1t
        0xbdt 0x0t 0x8t 0x1t
        0xbet 0x0t 0x8t 0x1t
        0xbft 0x0t 0x8t 0x1t
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/ClockView;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/ClockView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/ClockView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ClockView;->setDateFormat()V

    return-void
.end method

.method private setDateFormat()V
    .locals 3

    .prologue
    .line 250
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HH:mm"

    :goto_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mFormat:Ljava/lang/String;

    .line 251
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mAmPm:Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mFormat:Ljava/lang/String;

    const-string v2, "h:mm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;->setShowAmPm(Z)V

    .line 252
    return-void

    .line 250
    :cond_0
    const-string v0, "h:mm"

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 185
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 187
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mAttached:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mAttached:I

    .line 190
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/ClockView$TimeChangedReceiver;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/ClockView$TimeChangedReceiver;-><init>(Lcom/android/internal/policy/impl/keyguard/ClockView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 192
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 193
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 200
    .end local v3           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_1

    .line 201
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/ClockView$FormatChangeObserver;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/ClockView$FormatChangeObserver;-><init>(Lcom/android/internal/policy/impl/keyguard/ClockView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 202
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 206
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/ClockView;->updateTime()V

    .line 207
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 211
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 213
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mAttached:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mAttached:I

    .line 215
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 223
    :cond_1
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 224
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 225
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 169
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 171
    const v0, 0x1020306

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mTimeHour1:Landroid/widget/ImageView;

    .line 172
    const v0, 0x1020307

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mTimeHour0:Landroid/widget/ImageView;

    .line 173
    const v0, 0x1020309

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mTimeMinute1:Landroid/widget/ImageView;

    .line 174
    const v0, 0x102030a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mTimeMinute0:Landroid/widget/ImageView;

    .line 178
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;-><init>(Landroid/view/View;Landroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mAmPm:Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;

    .line 179
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mCalendar:Ljava/util/Calendar;

    .line 180
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ClockView;->setDateFormat()V

    .line 181
    return-void
.end method

.method public updateTime()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/16 v7, 0x3a

    .line 233
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 237
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mFormat:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mCalendar:Ljava/util/Calendar;

    invoke-static {v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 238
    .local v2, time:Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 239
    .local v0, hour:I
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 241
    .local v1, minute:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mTimeHour1:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->timeArray:[I

    div-int/lit8 v6, v0, 0xa

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mTimeHour0:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->timeArray:[I

    rem-int/lit8 v6, v0, 0xa

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mTimeMinute1:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->timeArray:[I

    div-int/lit8 v6, v1, 0xa

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mTimeMinute0:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->timeArray:[I

    rem-int/lit8 v6, v1, 0xa

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 246
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mAmPm:Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mCalendar:Ljava/util/Calendar;

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-nez v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v4, v3}, Lcom/android/internal/policy/impl/keyguard/ClockView$AmPm;->setIsMorning(Z)V

    .line 247
    return-void
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ClockView;->mCalendar:Ljava/util/Calendar;

    .line 229
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/ClockView;->updateTime()V

    .line 230
    return-void
.end method
