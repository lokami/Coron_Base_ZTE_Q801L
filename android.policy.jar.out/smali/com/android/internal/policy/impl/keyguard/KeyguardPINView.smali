.class public Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;
.source "KeyguardPINView.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# instance fields
.field protected mIsSingleLeft:Z

.field protected mIsSingleOperation:Z

.field protected mParent:Landroid/widget/ViewFlipper;

.field protected mPinLeftButton:Landroid/view/View;

.field protected mPinRightButton:Landroid/view/View;

.field protected mTopParent:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x1

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mIsSingleOperation:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mIsSingleLeft:Z

    .line 46
    return-void
.end method


# virtual methods
.method protected findParents()V
    .locals 2

    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mParent:Landroid/widget/ViewFlipper;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mParent:Landroid/widget/ViewFlipper;

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mParent:Landroid/widget/ViewFlipper;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mTopParent:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    if-nez v1, :cond_2

    .line 62
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mParent:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    .line 63
    .local v0, parent:Landroid/view/View;
    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    if-nez v1, :cond_1

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 66
    :cond_1
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    if-eqz v1, :cond_2

    .line 67
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    .end local v0           #parent:Landroid/view/View;
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mTopParent:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    .line 70
    :cond_2
    return-void
.end method

.method protected getPasswordTextViewId()I
    .locals 1

    .prologue
    .line 90
    const v0, 0x10202ec

    return v0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 198
    const v0, 0x1040590

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 56
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 57
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->findParents()V

    .line 58
    return-void
.end method

.method protected onFinishInflate()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 95
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V

    .line 97
    const v4, 0x10202f8

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 98
    .local v0, ok:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 99
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/LiftToActivateListener;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/policy/impl/keyguard/LiftToActivateListener;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 113
    :cond_0
    const v4, 0x10202ed

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 114
    .local v3, pinDelete:Landroid/view/View;
    if-eqz v3, :cond_1

    .line 115
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 116
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$2;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    new-instance v4, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$3;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 140
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DigitsKeyListener;->getInstance()Landroid/text/method/DigitsKeyListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 141
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/16 v5, 0x12

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setInputType(I)V

    .line 144
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 147
    const v4, 0x10202fa

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mPinLeftButton:Landroid/view/View;

    .line 148
    const v4, 0x10202fb

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mPinRightButton:Landroid/view/View;

    .line 149
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "default_onehandoperation_on"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 150
    .local v1, onehand:I
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "default_onehandoperation_unlock_on"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 151
    .local v2, onehand_unlock:I
    const-string v4, "KeyguardPINView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "test gesturelockscreen onFinishInflate Constructor,onehand="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",onehand_unlock="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    if-ne v1, v8, :cond_3

    if-ne v2, v8, :cond_3

    .line 153
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mIsSingleOperation:Z

    .line 154
    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mIsSingleLeft:Z

    .line 158
    :goto_0
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mIsSingleOperation:Z

    .line 159
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mPinLeftButton:Landroid/view/View;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mPinRightButton:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 160
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mIsSingleOperation:Z

    if-eqz v4, :cond_5

    .line 161
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mIsSingleLeft:Z

    if-eqz v4, :cond_4

    .line 162
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mPinLeftButton:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mPinRightButton:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 168
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mPinLeftButton:Landroid/view/View;

    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$4;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mPinRightButton:Landroid/view/View;

    new-instance v5, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$5;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    :cond_2
    :goto_2
    return-void

    .line 156
    :cond_3
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mIsSingleOperation:Z

    goto :goto_0

    .line 165
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mPinRightButton:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mPinLeftButton:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 184
    :cond_5
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mPinLeftButton:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 185
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mPinRightButton:Landroid/view/View;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iput-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mIsSingleOperation:Z

    goto :goto_2
.end method

.method protected resetState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 72
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getMaxBiometricUnlockAttemptsReached()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const-string v0, "KeyguardPINView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "test debug voiceprint getMaxBiometricUnlockAttemptsReached test 000,mTopParent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mTopParent:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mTopParent:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mTopParent:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;->isVoicePrintUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x10405d3

    invoke-interface {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 76
    const-string v0, "KeyguardPINView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "test debug voiceprint getMaxBiometricUnlockAttemptsReached test 111,mTopParent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mTopParent:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 85
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x104034a

    invoke-interface {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 79
    const-string v0, "KeyguardPINView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "test debug voiceprint getMaxBiometricUnlockAttemptsReached test 222,mTopParent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPINView;->mTopParent:Lcom/android/internal/policy/impl/keyguard/WaveKeyguardHostView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v1, 0x1040594

    invoke-interface {v0, v1, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    goto :goto_0
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method
