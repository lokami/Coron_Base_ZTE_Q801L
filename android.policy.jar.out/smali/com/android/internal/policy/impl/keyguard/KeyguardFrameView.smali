.class public Lcom/android/internal/policy/impl/keyguard/KeyguardFrameView;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;
.source "KeyguardFrameView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardFrameView"


# instance fields
.field private mGestureView:Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;

.field private mUnlockViewManager:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 5

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUnlockView;->onFinishInflate()V

    .line 63
    const v2, 0x10202c5

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFrameView;->mUnlockViewManager:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    .line 64
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFrameView;->mUnlockViewManager:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    invoke-virtual {v2, p0}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->setOnTriggerListener(Lcom/android/internal/policy/impl/keyguard/OnTriggerListener;)V

    .line 68
    const v2, 0x10202c4

    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFrameView;->mGestureView:Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;

    .line 69
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFrameView;->mGestureView:Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;

    invoke-virtual {v2, p0}, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;)V

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_gesture_lockscreen"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, isGestureEnable:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "key_gesture_not_null"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, isGestureNotNull:Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFrameView;->mGestureView:Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->setGestureViewEnable(Z)V

    .line 77
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFrameView;->mUnlockViewManager:Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFrameView;->mGestureView:Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/UnlockViewManager;->setZTEGestureOverlayView(Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;)V

    .line 78
    const-string v2, "KeyguardFrameView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "test gesturelockscreen KeyguardFrameView Constructor,isGestureEnable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",isGestureNotNull="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void

    .line 75
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFrameView;->mGestureView:Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->setGestureViewEnable(Z)V

    goto :goto_0
.end method
