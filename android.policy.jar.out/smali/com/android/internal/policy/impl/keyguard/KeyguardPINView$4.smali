.class Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$4;
.super Ljava/lang/Object;
.source "KeyguardPINView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mPinRightButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mPinLeftButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mIsSingleLeft:Z

    .line 173
    return-void
.end method
