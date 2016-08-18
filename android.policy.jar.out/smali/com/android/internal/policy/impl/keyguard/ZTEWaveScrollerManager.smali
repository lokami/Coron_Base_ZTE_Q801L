.class public Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;
.super Ljava/lang/Object;
.source "ZTEWaveScrollerManager.java"


# static fields
.field private static final DBG:Z = true

.field private static final ON_RESUME_PING_DELAY:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ZTEWaveScrollerManager"


# instance fields
.field private isShowCling:Ljava/lang/String;

.field private mContainer:Landroid/view/View;

.field private final mOnResumeSnapScreen:Ljava/lang/Runnable;

.field private mUnlockAppPrompt:Landroid/widget/ImageView;

.field private mUnlockAppPromptDraw:Landroid/graphics/drawable/AnimationDrawable;

.field private mWaveImageViewManager:Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;

.field private mZTEWaveScroller:Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .parameter "container"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager$1;-><init>(Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->mOnResumeSnapScreen:Ljava/lang/Runnable;

    .line 44
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->mContainer:Landroid/view/View;

    .line 45
    const v1, 0x10202b8

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->mWaveImageViewManager:Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;

    .line 46
    const v1, 0x10202b5

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->mZTEWaveScroller:Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;

    .line 47
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_lockscreen_easy_access"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, isShowApp:Ljava/lang/String;
    const-string v1, "ZTEWaveScrollerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isShowApp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->mZTEWaveScroller:Lcom/android/internal/policy/impl/keyguard/ZTEWaveScroller;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->mWaveImageViewManager:Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 52
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->mWaveImageViewManager:Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_lockscreen_wave_cling"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->isShowCling:Ljava/lang/String;

    .line 55
    const v1, 0x10202b7

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->mUnlockAppPrompt:Landroid/widget/ImageView;

    .line 56
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->mUnlockAppPrompt:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->mUnlockAppPromptDraw:Landroid/graphics/drawable/AnimationDrawable;

    .line 57
    const-string v1, "1"

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->isShowCling:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->mUnlockAppPrompt:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 58
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->mUnlockAppPromptDraw:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->mContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->mWaveImageViewManager:Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->mWaveImageViewManager:Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->cleanUp()V

    .line 82
    :cond_0
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->mWaveImageViewManager:Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->mWaveImageViewManager:Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->cleanUp()V

    .line 79
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 60
    const-string v0, "0"

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->isShowCling:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->mContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->mOnResumeSnapScreen:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    :cond_0
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->mWaveImageViewManager:Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->mWaveImageViewManager:Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/WaveImageViewManager;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;)V

    .line 85
    :cond_0
    return-void
.end method
