.class public abstract Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;
.super Landroid/widget/FrameLayout;
.source "KeyguardViewBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$FastBitmapDrawable;
    }
.end annotation


# static fields
.field private static final BACKGROUND_COLOR:I = 0x70000000

.field private static final KEYGUARD_MANAGES_VOLUME:Z = true

.field private static final LOCKSCREEN_WALLPAPER_FILE:Ljava/lang/String; = "etc/customize/default_lockscreen"

.field private static final TAG:Ljava/lang/String; = "KeyguardViewBase"

.field private static final mBackgroundDrawable:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field protected mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$1;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->resetBackground()V

    .line 112
    return-void
.end method

.method private interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 233
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 234
    .local v0, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_6

    .line 235
    sparse-switch v0, :sswitch_data_0

    .line 303
    :cond_0
    :goto_0
    const/4 v2, 0x0

    :cond_1
    :goto_1
    return v2

    .line 241
    :sswitch_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_2

    .line 242
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 245
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_1

    .line 257
    :cond_3
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 265
    :sswitch_2
    monitor-enter p0

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_4

    .line 267
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    .line 270
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x3

    const/16 v1, 0x18

    if-ne v0, v1, :cond_5

    move v1, v2

    :goto_2
    invoke-virtual {v3, v4, v1}, Landroid/media/AudioManager;->adjustLocalOrRemoteStreamVolume(II)V

    goto :goto_1

    .line 270
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 273
    :cond_5
    const/4 v1, -0x1

    goto :goto_2

    .line 285
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 286
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 298
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_1

    .line 235
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x4f -> :sswitch_1
        0x55 -> :sswitch_0
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x5b -> :sswitch_1
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x82 -> :sswitch_1
        0xa4 -> :sswitch_2
    .end sparse-switch

    .line 286
    :sswitch_data_1
    .sparse-switch
        0x4f -> :sswitch_3
        0x55 -> :sswitch_3
        0x56 -> :sswitch_3
        0x57 -> :sswitch_3
        0x58 -> :sswitch_3
        0x59 -> :sswitch_3
        0x5a -> :sswitch_3
        0x5b -> :sswitch_3
        0x7e -> :sswitch_3
        0x7f -> :sswitch_3
        0x82 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public abstract cleanUp()V
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 322
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchSystemUiVisibilityChanged(I)V

    .line 324
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 325
    const/high16 v0, 0x40

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 327
    :cond_0
    return-void
.end method

.method public abstract getUserActivityTimeout()J
.end method

.method handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 5
    .parameter "keyEvent"

    .prologue
    .line 307
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 309
    .local v0, audioService:Landroid/media/IAudioService;
    if-eqz v0, :cond_0

    .line 311
    :try_start_0
    invoke-interface {v0, p1}, Landroid/media/IAudioService;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v1

    .line 313
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "KeyguardViewBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchMediaKeyEvent threw exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 316
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_0
    const-string v2, "KeyguardViewBase"

    const-string v3, "Unable to find IAudioService for media key event"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public abstract onScreenTurnedOff()V
.end method

.method public abstract onScreenTurnedOn()V
.end method

.method public abstract reset()V
.end method

.method public resetBackground()V
    .locals 10

    .prologue
    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "key_wallpaper_for_both"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, isEnabledForBoth:Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v7, "1"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    :try_start_0
    const-string v7, "KeyguardViewBase"

    const-string v8, "setBackgroundDrawable"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const-string v8, "wallpaper"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/WallpaperManager;

    .line 126
    .local v6, wm:Landroid/app/WallpaperManager;
    invoke-virtual {v6}, Landroid/app/WallpaperManager;->getLockscreen()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 128
    .local v2, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v2, :cond_2

    .line 129
    const-string v7, "KeyguardViewBase"

    const-string v8, "change Lockscreen background!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$FastBitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$1;)V

    invoke-virtual {p0, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 149
    .end local v2           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v6           #wm:Landroid/app/WallpaperManager;
    :catch_0
    move-exception v3

    .line 150
    .local v3, e:Ljava/io/FileNotFoundException;
    const-string v7, "KeyguardViewBase"

    const-string v8, "file not found: etc/customize/default_lockscreen"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 132
    .end local v3           #e:Ljava/io/FileNotFoundException;
    .restart local v2       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v6       #wm:Landroid/app/WallpaperManager;
    :cond_2
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    const-string v8, "etc/customize/default_lockscreen"

    invoke-direct {v1, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 133
    .local v1, default_lockscreen:Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 135
    .local v5, s:Ljava/io/InputStream;
    :try_start_2
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 136
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_3

    .line 137
    const-string v7, "KeyguardViewBase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to set wallpaper. Couldn\'t get bitmap for path "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    :goto_1
    if-eqz v5, :cond_0

    .line 145
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 152
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #default_lockscreen:Ljava/io/File;
    .end local v2           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v5           #s:Ljava/io/InputStream;
    .end local v6           #wm:Landroid/app/WallpaperManager;
    :catch_1
    move-exception v3

    .line 153
    .local v3, e:Ljava/io/IOException;
    const-string v7, "KeyguardViewBase"

    const-string v8, "setBackgroundDrawable"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 140
    .end local v3           #e:Ljava/io/IOException;
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v1       #default_lockscreen:Ljava/io/File;
    .restart local v2       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v5       #s:Ljava/io/InputStream;
    .restart local v6       #wm:Landroid/app/WallpaperManager;
    :cond_3
    :try_start_4
    invoke-virtual {v6, v0}, Landroid/app/WallpaperManager;->setLockscreenBitmap(Landroid/graphics/Bitmap;)V

    .line 141
    new-instance v7, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$FastBitmapDrawable;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase$1;)V

    invoke-virtual {p0, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 144
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v7

    if-eqz v5, :cond_4

    .line 145
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    :cond_4
    throw v7
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 155
    .end local v1           #default_lockscreen:Ljava/io/File;
    .end local v2           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v5           #s:Ljava/io/InputStream;
    .end local v6           #wm:Landroid/app/WallpaperManager;
    :catch_2
    move-exception v3

    .line 156
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "KeyguardViewBase"

    const-string v8, "setBackgroundDrawable"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public setViewMediatorCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;)V
    .locals 0
    .parameter "viewMediatorCallback"

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    .line 332
    return-void
.end method

.method public abstract show()V
.end method

.method public abstract verifyUnlock()V
.end method

.method public abstract wakeWhenReadyTq(I)V
.end method
