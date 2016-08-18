.class public Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;
.super Landroid/widget/LinearLayout;
.source "ZTELocalDigitalTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$FormatChangeObserver;,
        Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$AmPm;,
        Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$TimeChangedReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LACAL_TIME_ZONE:Ljava/lang/String; = "Asia/Shanghai"

.field private static final M12:Ljava/lang/String; = "h:mm a"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field private static final SYSTEM:Ljava/lang/String; = "/system/fonts/"

.field private static final SYSTEM_FONT_TIME_BACKGROUND:Ljava/lang/String; = "/system/fonts/AndroidClock.ttf"

.field private static final SYSTEM_FONT_TIME_FOREGROUND:Ljava/lang/String; = "/system/fonts/AndroidClock_Highlight.ttf"

.field private static final TAG:Ljava/lang/String; = "ZTEDigitalClock"

.field private static final sBackgroundFont:Landroid/graphics/Typeface;

.field private static final sForegroundFont:Landroid/graphics/Typeface;


# instance fields
.field private DATE_FORMAT:Ljava/lang/String;

.field private mAmPm:Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$AmPm;

.field private mAttached:I

.field private mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private mFormatChangeObserver:Landroid/database/ContentObserver;

.field private final mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLoacalTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-string v0, "/system/fonts/AndroidClock.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->sBackgroundFont:Landroid/graphics/Typeface;

    .line 76
    const-string v0, "/system/fonts/AndroidClock_Highlight.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->sForegroundFont:Landroid/graphics/Typeface;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 185
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->mAttached:I

    .line 68
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->mHandler:Landroid/os/Handler;

    .line 186
    iput-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    .line 187
    const v2, 0x104009d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->DATE_FORMAT:Ljava/lang/String;

    .line 188
    const-string v2, "Asia/Shanghai"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 189
    .local v0, localtimeZone:Ljava/util/TimeZone;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 190
    .local v1, roamTimeZone:Ljava/util/TimeZone;
    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->hasSameRules(Ljava/util/TimeZone;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 193
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->updateTime()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->setDateFormat()V

    return-void
.end method

.method private getLocalDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "tz"

    .prologue
    .line 274
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 275
    .local v1, timeZone:Ljava/util/TimeZone;
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->DATE_FORMAT:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 276
    .local v0, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 277
    new-instance v2, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getLocalTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "tz"

    .prologue
    .line 280
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->mFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->mCalendar:Ljava/util/Calendar;

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, newTime:Ljava/lang/String;
    return-object v0
.end method

.method private setDateFormat()V
    .locals 1

    .prologue
    .line 268
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk:mm"

    :goto_0
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->mFormat:Ljava/lang/String;

    .line 272
    return-void

    .line 268
    :cond_0
    const-string v0, "h:mm a"

    goto :goto_0
.end method

.method private updateTime()V
    .locals 6

    .prologue
    .line 258
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040021

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, localCity:Ljava/lang/String;
    const-string v4, "Asia/Shanghai"

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->getLocalTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, localTime:Ljava/lang/String;
    const-string v4, "Asia/Shanghai"

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->getLocalDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, localDate:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 263
    .local v3, showLocalString:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->mLoacalTime:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 210
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 212
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->mAttached:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->mAttached:I

    .line 215
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 216
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$TimeChangedReceiver;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$TimeChangedReceiver;-><init>(Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 217
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 218
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 225
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_1

    .line 226
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$FormatChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$FormatChangeObserver;-><init>(Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 227
    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 231
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->updateTime()V

    .line 232
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 236
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 238
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->mAttached:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->mAttached:I

    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 248
    :cond_1
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->mFormatChangeObserver:Landroid/database/ContentObserver;

    .line 249
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 250
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 197
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 201
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->mCalendar:Ljava/util/Calendar;

    .line 202
    const-string v1, "Asia/Shanghai"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 203
    .local v0, timeZone:Ljava/util/TimeZone;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 204
    const v1, 0x10202d2

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->mLoacalTime:Landroid/widget/TextView;

    .line 205
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->setDateFormat()V

    .line 206
    return-void
.end method

.method updateTime(Ljava/util/Calendar;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->mCalendar:Ljava/util/Calendar;

    .line 254
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;->updateTime()V

    .line 255
    return-void
.end method
