.class Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$5;
.super Ljava/lang/Object;
.source "WaveKeyguardHostView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)V
    .locals 0
    .parameter

    .prologue
    .line 1530
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1533
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    #calls: Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->showAppropriateWidgetPage()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->access$1500(Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;)V

    .line 1534
    return-void
.end method
