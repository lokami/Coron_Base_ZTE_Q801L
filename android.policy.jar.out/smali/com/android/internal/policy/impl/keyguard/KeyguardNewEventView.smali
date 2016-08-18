.class public Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;
.super Landroid/widget/LinearLayout;
.source "KeyguardNewEventView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$InfoRefreshCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView$UnlockScreenCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DELAY:J = 0x190L

.field private static final MSG_START_UNLOCK:I = 0x191

.field private static final TAG:Ljava/lang/String; = "KeyguardNewEventView"


# instance fields
.field private mCalendarDrawable:Landroid/graphics/drawable/Drawable;

.field private mCallDrawable:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mEmailDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

.field private mMmsDrawable:Landroid/graphics/drawable/Drawable;

.field private mNewCalendar:Landroid/widget/TextView;

.field private mNewCalendarNum:Landroid/widget/TextView;

.field private mNewCall:Landroid/widget/TextView;

.field private mNewCallNum:Landroid/widget/TextView;

.field private mNewEmail:Landroid/widget/TextView;

.field private mNewEmailNum:Landroid/widget/TextView;

.field private mNewMms:Landroid/widget/TextView;

.field private mNewMmsNum:Landroid/widget/TextView;

.field private mUnlockCalendar:Landroid/widget/LinearLayout;

.field private mUnlockCall:Landroid/widget/LinearLayout;

.field private mUnlockEmail:Landroid/widget/LinearLayout;

.field private mUnlockMms:Landroid/widget/LinearLayout;

.field private mUnlockScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView$UnlockScreenCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mContext:Landroid/content/Context;

    .line 53
    const-string v0, "KeyguardNewEventView"

    const-string v1, "KeyguardNewEventView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10800db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mCallDrawable:Landroid/graphics/drawable/Drawable;

    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10800dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mMmsDrawable:Landroid/graphics/drawable/Drawable;

    .line 57
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10800de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mCalendarDrawable:Landroid/graphics/drawable/Drawable;

    .line 58
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10800dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mEmailDrawable:Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->registerInfoCallbacks()V

    .line 60
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mHandler:Landroid/os/Handler;

    .line 73
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;)Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView$UnlockScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mUnlockScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView$UnlockScreenCallback;

    return-object v0
.end method

.method private registerInfoCallbacks()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->registerInfoCallCallbacks(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$InfoRefreshCallback;)V

    .line 77
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->registerInfoMessageCallbacks(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$InfoRefreshCallback;)V

    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->registerInfoEmailCallbacks(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$InfoRefreshCallback;)V

    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->registerInfoCalendarCallbacks(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$InfoRefreshCallback;)V

    .line 80
    return-void
.end method

.method private updateMoreText()V
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/Utilities;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/Utilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/Utilities;->getNumOfMissdeCall()I

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mNewCall:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mNewCallNum:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/Utilities;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/Utilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/Utilities;->getNumOfMissdeCall()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/Utilities;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/Utilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/Utilities;->getNumOfUnreadMessage()I

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mNewMms:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mNewMmsNum:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/Utilities;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/Utilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/Utilities;->getNumOfUnreadMessage()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/Utilities;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/Utilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/Utilities;->getNumOfUnreadEmail()I

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mNewEmail:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mNewEmailNum:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/Utilities;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/Utilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/Utilities;->getNumOfUnreadEmail()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/Utilities;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/Utilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/Utilities;->getNumOfMissdeCalendar()I

    move-result v0

    if-eqz v0, :cond_3

    .line 221
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mNewCalendar:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mNewCalendarNum:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/Utilities;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/Utilities;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/Utilities;->getNumOfMissdeCalendar()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    :cond_3
    return-void
.end method

.method private updateText(Landroid/widget/LinearLayout;IZ)V
    .locals 5
    .parameter "v"
    .parameter "number"
    .parameter "isShowStr"

    .prologue
    .line 184
    const/4 v1, 0x0

    .line 185
    .local v1, stringId:I
    const/4 v2, 0x0

    .line 186
    .local v2, view:Landroid/widget/TextView;
    const/4 v0, 0x0

    .line 187
    .local v0, numView:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mUnlockCall:Landroid/widget/LinearLayout;

    if-ne p1, v3, :cond_3

    .line 188
    const v1, 0x1040023

    .line 189
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mNewCall:Landroid/widget/TextView;

    .line 190
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mNewCallNum:Landroid/widget/TextView;

    .line 204
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    if-eqz p3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    :cond_1
    if-eqz v0, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    :cond_2
    return-void

    .line 191
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mUnlockMms:Landroid/widget/LinearLayout;

    if-ne p1, v3, :cond_4

    .line 192
    const v1, 0x1040022

    .line 193
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mNewMms:Landroid/widget/TextView;

    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mNewMmsNum:Landroid/widget/TextView;

    goto :goto_0

    .line 195
    :cond_4
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mUnlockCalendar:Landroid/widget/LinearLayout;

    if-ne p1, v3, :cond_5

    .line 196
    const v1, 0x1040025

    .line 197
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mNewCalendar:Landroid/widget/TextView;

    .line 198
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mNewCalendarNum:Landroid/widget/TextView;

    goto :goto_0

    .line 199
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mUnlockEmail:Landroid/widget/LinearLayout;

    if-ne p1, v3, :cond_0

    .line 200
    const v1, 0x1040024

    .line 201
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mNewEmail:Landroid/widget/TextView;

    .line 202
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mNewEmailNum:Landroid/widget/TextView;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x0

    .line 125
    const-string v4, "KeyguardNewEventView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClickv="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v3, 0x0

    .line 127
    .local v3, mPackageName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 128
    .local v1, mClassName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mUnlockCall:Landroid/widget/LinearLayout;

    if-ne p1, v4, :cond_2

    .line 129
    const-string v3, "com.android.contacts"

    .line 130
    const-string v1, "com.android.contacts.activities.DialtactsActivity"

    .line 141
    :cond_0
    :goto_0
    const-string v4, "KeyguardNewEventView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick mPackageName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mClassName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mUnlockScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView$UnlockScreenCallback;

    if-eqz v4, :cond_1

    .line 143
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 144
    .local v0, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mUnlockCall:Landroid/widget/LinearLayout;

    if-ne p1, v4, :cond_5

    .line 145
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 146
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v4, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    :goto_1
    invoke-virtual {p0, v0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 154
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mHandler:Landroid/os/Handler;

    if-eqz v4, :cond_1

    .line 155
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x191

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x190

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 160
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-void

    .line 131
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mUnlockMms:Landroid/widget/LinearLayout;

    if-ne p1, v4, :cond_3

    .line 132
    const-string v3, "com.android.mms"

    .line 133
    const-string v1, "com.android.mms.ui.ConversationList"

    goto :goto_0

    .line 134
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mUnlockCalendar:Landroid/widget/LinearLayout;

    if-ne p1, v4, :cond_4

    .line 135
    const-string v3, "com.android.calendar"

    .line 136
    const-string v1, "com.android.calendar.alerts.AlertActivity"

    goto :goto_0

    .line 137
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mUnlockEmail:Landroid/widget/LinearLayout;

    if-ne p1, v4, :cond_0

    .line 138
    const-string v3, "com.android.email"

    .line 139
    const-string v1, "com.android.email.activity.Welcome"

    goto :goto_0

    .line 148
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_5
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .local v2, mComponentName:Landroid/content/ComponentName;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 85
    const v0, 0x10202d4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mNewCall:Landroid/widget/TextView;

    .line 86
    const v0, 0x10202d7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mNewMms:Landroid/widget/TextView;

    .line 87
    const v0, 0x10202da

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mNewCalendar:Landroid/widget/TextView;

    .line 88
    const v0, 0x1020081

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mNewEmail:Landroid/widget/TextView;

    .line 89
    const v0, 0x10202d5

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mNewCallNum:Landroid/widget/TextView;

    .line 90
    const v0, 0x10202d8

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mNewMmsNum:Landroid/widget/TextView;

    .line 91
    const v0, 0x10202db

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mNewCalendarNum:Landroid/widget/TextView;

    .line 92
    const v0, 0x10202dd

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mNewEmailNum:Landroid/widget/TextView;

    .line 93
    const v0, 0x10202d3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mUnlockCall:Landroid/widget/LinearLayout;

    .line 94
    const v0, 0x10202d6

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mUnlockMms:Landroid/widget/LinearLayout;

    .line 95
    const v0, 0x10202d9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mUnlockCalendar:Landroid/widget/LinearLayout;

    .line 96
    const v0, 0x10202dc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mUnlockEmail:Landroid/widget/LinearLayout;

    .line 97
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->setOnClickListener()V

    .line 98
    return-void
.end method

.method public onRefreshCalendarInfo(I)V
    .locals 2
    .parameter "number"

    .prologue
    .line 238
    const-string v0, "KeyguardNewEventView"

    const-string v1, "onRefreshCalendarInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mUnlockCalendar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mCalendarDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->updateMissedNumber(Landroid/widget/LinearLayout;Landroid/graphics/drawable/Drawable;I)V

    .line 240
    return-void
.end method

.method public onRefreshCallInfo(I)V
    .locals 2
    .parameter "number"

    .prologue
    .line 226
    const-string v0, "KeyguardNewEventView"

    const-string v1, "onRefreshCallInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mUnlockCall:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mCallDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->updateMissedNumber(Landroid/widget/LinearLayout;Landroid/graphics/drawable/Drawable;I)V

    .line 228
    return-void
.end method

.method public onRefreshEmailInfo(I)V
    .locals 2
    .parameter "number"

    .prologue
    .line 234
    const-string v0, "KeyguardNewEventView"

    const-string v1, "onRefreshEmailInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mUnlockEmail:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mEmailDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->updateMissedNumber(Landroid/widget/LinearLayout;Landroid/graphics/drawable/Drawable;I)V

    .line 236
    return-void
.end method

.method public onRefreshMessageInfo(I)V
    .locals 2
    .parameter "number"

    .prologue
    .line 230
    const-string v0, "KeyguardNewEventView"

    const-string v1, "onRefreshMessageInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mUnlockMms:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mMmsDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->updateMissedNumber(Landroid/widget/LinearLayout;Landroid/graphics/drawable/Drawable;I)V

    .line 232
    return-void
.end method

.method public setOnClickListener()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mUnlockCall:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mUnlockMms:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mUnlockCalendar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mUnlockEmail:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    return-void
.end method

.method public setUnlockScreenCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView$UnlockScreenCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mUnlockScreenCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView$UnlockScreenCallback;

    .line 243
    return-void
.end method

.method startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z
    .locals 4
    .parameter "intent"
    .parameter "tag"

    .prologue
    .line 106
    const/high16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    const/4 v1, 0x1

    .line 120
    :goto_0
    return v1

    .line 110
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v1, "KeyguardNewEventView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch. tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 113
    :catch_1
    move-exception v0

    .line 115
    .local v0, e:Ljava/lang/SecurityException;
    const-string v1, "KeyguardNewEventView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Launcher does not have the permission to launch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "or use the exported attribute for this activity. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "tag="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public updateMissedNumber(Landroid/widget/LinearLayout;Landroid/graphics/drawable/Drawable;I)V
    .locals 5
    .parameter "view"
    .parameter "drawable"
    .parameter "number"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 162
    const-string v0, "KeyguardNewEventView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " drawable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " number="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    if-eqz p1, :cond_0

    .line 164
    if-eqz p2, :cond_0

    if-lez p3, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/Utilities;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/Utilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/Utilities;->getMissNum()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 168
    invoke-direct {p0, p1, p3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->updateText(Landroid/widget/LinearLayout;IZ)V

    .line 174
    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/Utilities;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/Utilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/Utilities;->hasMissNum()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 182
    :goto_1
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/Utilities;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/Utilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/Utilities;->getMissNum()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 170
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->updateMoreText()V

    goto :goto_0

    .line 172
    :cond_2
    invoke-direct {p0, p1, p3, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;->updateText(Landroid/widget/LinearLayout;IZ)V

    goto :goto_0

    .line 180
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
