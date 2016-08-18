.class Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V
    .locals 0
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mPatternRightButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mPatternLeftButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mIsSingleLeft:Z

    .line 212
    return-void
.end method
