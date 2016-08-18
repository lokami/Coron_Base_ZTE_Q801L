.class Lcom/android/internal/policy/impl/keyguard/KeyguardOwnerInfoArea;
.super Landroid/widget/TextView;
.source "KeyguardOwnerInfoArea.java"


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mShowingMessage:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardOwnerInfoArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardOwnerInfoArea;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardOwnerInfoArea;->update()V

    .line 54
    return-void
.end method


# virtual methods
.method getOwnerInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 77
    .local v2, res:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 78
    .local v0, info:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardOwnerInfoArea;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled()Z

    move-result v1

    .line 79
    .local v1, ownerInfoEnabled:Z
    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardOwnerInfoArea;->mShowingMessage:Z

    if-nez v3, :cond_0

    .line 80
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardOwnerInfoArea;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardOwnerInfoArea;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_0
    return-object v0
.end method

.method update()V
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardOwnerInfoArea;->getOwnerInfo()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, status:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 67
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 68
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
