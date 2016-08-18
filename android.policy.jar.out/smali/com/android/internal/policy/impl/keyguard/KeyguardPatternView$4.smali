.class Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$4;
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
    .line 214
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mPatternLeftButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mPatternRightButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mIsSingleLeft:Z

    .line 219
    return-void
.end method
