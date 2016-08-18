.class public Lcom/android/internal/policy/impl/keyguard/WaveImageView;
.super Landroid/widget/ImageView;
.source "WaveImageView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$InfoRefreshCallback;


# static fields
.field private static final ACTION_LOCK_SCREEN_SETTING:Ljava/lang/String; = "action_lock_screen_setting"

.field private static final DEBUG:Z = true

.field private static final DELAY:J = 0x190L

.field private static final ITEM_ID:Ljava/lang/String; = "item_id"

.field public static final MISSED_CALLS:I = 0x1

.field public static final MISSED_EMAILS:I = 0x1

.field public static final MISSED_MESSAGES:I = 0x1

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x12c

.field private static final MSG_START_UNLOCK:I = 0x12d

.field private static final TAG:Ljava/lang/String; = "ItemImageView"


# instance fields
.field private final RING_MODE_ID:I

.field private final UNLOCK_ID:I

.field private isStartCallLog:Z

.field private ishascalendar:Z

.field private mAppComponentNameItem:[Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

.field private mComponentName:Landroid/content/ComponentName;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mItemId:I

.field private mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

.field mRingModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mSourceBitmap:Landroid/graphics/Bitmap;

.field private mSourceID:I

.field private mUtilities:Lcom/android/internal/policy/impl/keyguard/Utilities;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mComponentName:Landroid/content/ComponentName;

    .line 43
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "lockscreen_conponentname_item1"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "lockscreen_conponentname_item2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lockscreen_conponentname_item3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "lockscreen_conponentname_item4"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mAppComponentNameItem:[Ljava/lang/String;

    .line 49
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mItemId:I

    .line 57
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mIntent:Landroid/content/Intent;

    .line 62
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->isStartCallLog:Z

    .line 63
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->ishascalendar:Z

    .line 64
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->RING_MODE_ID:I

    .line 65
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->UNLOCK_ID:I

    .line 278
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/WaveImageView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/WaveImageView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/WaveImageView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mRingModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 74
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mComponentName:Landroid/content/ComponentName;

    .line 43
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "lockscreen_conponentname_item1"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "lockscreen_conponentname_item2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "lockscreen_conponentname_item3"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "lockscreen_conponentname_item4"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mAppComponentNameItem:[Ljava/lang/String;

    .line 49
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mItemId:I

    .line 57
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mIntent:Landroid/content/Intent;

    .line 62
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->isStartCallLog:Z

    .line 63
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->ishascalendar:Z

    .line 64
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->RING_MODE_ID:I

    .line 65
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->UNLOCK_ID:I

    .line 278
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/WaveImageView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/WaveImageView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/WaveImageView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mRingModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 76
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {p0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    .line 79
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/WaveImageView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/WaveImageView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/WaveImageView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mHandler:Landroid/os/Handler;

    .line 94
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/WaveImageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->updateRingModeSource()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/WaveImageView;)Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/WaveImageView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getActivityIcon(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "packageManager"
    .parameter "componentname"

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 219
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 227
    :goto_0
    return-object v0

    .line 221
    :catch_0
    move-exception v1

    .line 222
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ItemImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPackInfo failed for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/4 v0, 0x0

    .line 226
    goto :goto_0

    .line 224
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    .line 225
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNormalMode()Z
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private toggleRingMode()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 266
    const-string v2, "ItemImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNormalMode11111="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->isNormalMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->isNormalMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v0

    .line 269
    .local v0, vibe:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 275
    .end local v0           #vibe:Z
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0
.end method

.method private updateRingModeSource()V
    .locals 1

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->updateSourceId()V

    .line 293
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mSourceID:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 294
    return-void
.end method

.method private updateSourceId()V
    .locals 3

    .prologue
    .line 250
    const-string v0, "ItemImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNormalMode22222="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->isNormalMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 301
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mItemId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mRingModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 304
    :cond_0
    return-void
.end method

.method public initRingMode()V
    .locals 3

    .prologue
    .line 97
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mAudioManager:Landroid/media/AudioManager;

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 99
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mRingModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "arg0"

    .prologue
    const-wide/16 v5, 0x190

    const/4 v4, 0x0

    const/16 v3, 0x12d

    const/4 v2, 0x5

    .line 112
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mItemId:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mItemId:I

    if-ne v0, v2, :cond_3

    .line 113
    :cond_0
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mItemId:I

    if-ne v0, v2, :cond_2

    .line 114
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->toggleRingMode()V

    .line 143
    :cond_1
    :goto_0
    return-void

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 122
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->isStartCallLog:Z

    if-eqz v0, :cond_4

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mIntent:Landroid/content/Intent;

    .line 124
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mIntent:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v4}, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 125
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->ishascalendar:Z

    if-eqz v0, :cond_5

    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mIntent:Landroid/content/Intent;

    .line 127
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.calendar"

    const-string v2, "com.android.calendar.alerts.AlertActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mComponentName:Landroid/content/ComponentName;

    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1

    .line 130
    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mIntent:Landroid/content/Intent;

    .line 131
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_6

    .line 132
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.lockscreensetting"

    const-string v2, "com.android.lockscreensetting.LockScreenSetting"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mComponentName:Landroid/content/ComponentName;

    .line 133
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mIntent:Landroid/content/Intent;

    const-string v1, "action_lock_screen_setting"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mIntent:Landroid/content/Intent;

    const-string v1, "item_id"

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mItemId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    :cond_6
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 105
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 107
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 296
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mItemId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mRingModeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 299
    :cond_0
    return-void
.end method

.method public onRefreshCalendarInfo(I)V
    .locals 1
    .parameter "number"

    .prologue
    .line 322
    if-lez p1, :cond_0

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->ishascalendar:Z

    .line 327
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->updateMissedNumber(I)V

    .line 328
    return-void

    .line 325
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->ishascalendar:Z

    goto :goto_0
.end method

.method public onRefreshCallInfo(I)V
    .locals 1
    .parameter "number"

    .prologue
    .line 308
    if-lez p1, :cond_0

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->isStartCallLog:Z

    .line 313
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->updateMissedNumber(I)V

    .line 314
    return-void

    .line 311
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->isStartCallLog:Z

    goto :goto_0
.end method

.method public onRefreshEmailInfo(I)V
    .locals 0
    .parameter "number"

    .prologue
    .line 319
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->updateMissedNumber(I)V

    .line 320
    return-void
.end method

.method public onRefreshMessageInfo(I)V
    .locals 0
    .parameter "number"

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->updateMissedNumber(I)V

    .line 317
    return-void
.end method

.method public setItemId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 145
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mItemId:I

    .line 146
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    .line 149
    return-void
.end method

.method startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 1
    .parameter "intent"
    .parameter "tag"

    .prologue
    .line 151
    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    const/4 v0, 0x1

    .line 165
    :goto_0
    return v0

    .line 158
    :catch_0
    move-exception v0

    .line 165
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 155
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public updateIconBitmap()V
    .locals 8

    .prologue
    const/4 v5, 0x5

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 169
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mItemId:I

    if-eq v3, v5, :cond_0

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mItemId:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 170
    :cond_0
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mItemId:I

    if-ne v3, v5, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->updateRingModeSource()V

    .line 213
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 214
    return-void

    .line 177
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mAppComponentNameItem:[Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mItemId:I

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, componentNameString:Ljava/lang/String;
    const-string v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 179
    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mComponentName:Landroid/content/ComponentName;

    .line 180
    invoke-virtual {p0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 183
    :cond_3
    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mComponentName:Landroid/content/ComponentName;

    .line 184
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 185
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    .line 186
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mComponentName:Landroid/content/ComponentName;

    .line 187
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->getActivityIcon(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 188
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    const-string v3, "ItemImageView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drawable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    if-eqz v1, :cond_8

    .line 190
    const-string v3, "com.android.mms/com.android.mms.ui.ConversationList"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 191
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    invoke-virtual {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->registerInfoMessageCallbacks(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$InfoRefreshCallback;)V

    .line 199
    :cond_4
    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 192
    :cond_5
    const-string v3, "com.android.contacts/com.android.contacts.activities.DialtactsActivity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 193
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    invoke-virtual {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->registerInfoCallCallbacks(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$InfoRefreshCallback;)V

    goto :goto_1

    .line 194
    :cond_6
    const-string v3, "com.android.email/com.android.email.activity.Welcome"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 195
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    invoke-virtual {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->registerInfoEmailCallbacks(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$InfoRefreshCallback;)V

    goto :goto_1

    .line 196
    :cond_7
    const-string v3, "com.android.calendar/com.android.calendar.AllInOneActivity"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 197
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    invoke-virtual {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->registerInfoCalendarCallbacks(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$InfoRefreshCallback;)V

    goto :goto_1

    .line 202
    :cond_8
    iput-object v7, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mComponentName:Landroid/content/ComponentName;

    .line 203
    invoke-virtual {p0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 207
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_9
    invoke-virtual {p0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public updateMissedNumber(I)V
    .locals 3
    .parameter "number"

    .prologue
    .line 232
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 233
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->getActivityIcon(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 234
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 235
    if-lez p1, :cond_0

    .line 236
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/WaveImageView;->mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->getUtilities()Lcom/android/internal/policy/impl/keyguard/Utilities;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/policy/impl/keyguard/Utilities;->updateNumOfIcon(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 238
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    :cond_1
    return-void
.end method
