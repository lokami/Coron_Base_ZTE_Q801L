.class final Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView$UnLockRunnable;
.super Ljava/lang/Object;
.source "ZTEGestureOverlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UnLockRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView$UnLockRunnable;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 279
    const-string v0, "ZTEGestureOverlayView"

    const-string v1, "gesturelockscreen in overlayview gotoUnlock delya is called  !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView$UnLockRunnable;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;->gotoUnlock()V

    .line 281
    return-void
.end method
