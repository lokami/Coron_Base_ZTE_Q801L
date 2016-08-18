.class public Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;
.super Ljava/lang/Object;
.source "ZTEScrollerManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView$UnlockScreenCallback;


# static fields
.field private static final DBG:Z = true

.field private static final ON_RESUME_PING_DELAY:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "ZTEScrollerManager"


# instance fields
.field private mAlarmStatusView:Landroid/widget/TextView;

.field private mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCarrierView:Landroid/widget/TextView;

.field private mContainer:Landroid/view/View;

.field private mDateView:Landroid/widget/TextView;

.field private mKeyguardNewEventView:Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;

.field private final mOnResumeSnapScreen:Ljava/lang/Runnable;

.field private mStatus1View:Landroid/widget/TextView;

.field private mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

.field private mWeather:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .parameter "container"

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager$1;-><init>(Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mOnResumeSnapScreen:Ljava/lang/Runnable;

    .line 46
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mContainer:Landroid/view/View;

    .line 47
    const v1, 0x10202d1

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    .line 48
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->setContainer(Landroid/view/View;)V

    .line 50
    const v1, 0x1020326

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mKeyguardNewEventView:Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;

    .line 51
    const v1, 0x1020328

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mWeather:Landroid/view/View;

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_lockscreen_weather"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, isShowWeather:Ljava/lang/String;
    const-string v1, "ZTEScrollerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isShowWeather="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mWeather:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 58
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;)Lcom/android/internal/policy/impl/keyguard/ZTEScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    return-object v0
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "id"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addTransportControl(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;)V
    .locals 2
    .parameter "transportControlView"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 64
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mTransportControl:Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    .line 65
    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getTransportControl(I)I
    .locals 3
    .parameter "id"

    .prologue
    .line 70
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 71
    .local v0, children:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 72
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 76
    .end local v1           #i:I
    :goto_1
    return v1

    .line 71
    .restart local v1       #i:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public onUnlockScreen()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    .line 121
    :cond_0
    return-void
.end method

.method public removeTransportControl(Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;)V
    .locals 1
    .parameter "transportControlView"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 68
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mKeyguardNewEventView:Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mKeyguardNewEventView:Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->setUnlockScreenCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView$UnlockScreenCallback;)V

    .line 118
    :cond_0
    return-void
.end method

.method public startOnResumeSnapScreen()V
    .locals 4

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mOnResumeSnapScreen:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 61
    return-void
.end method
