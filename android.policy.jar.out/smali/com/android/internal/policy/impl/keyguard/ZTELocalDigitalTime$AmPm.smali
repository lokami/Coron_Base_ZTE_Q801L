.class Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$AmPm;
.super Ljava/lang/Object;
.source "ZTELocalDigitalTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AmPm"
.end annotation


# instance fields
.field private isShow:Z

.field private mAmPmTextView:Landroid/widget/TextView;

.field private mAmString:Ljava/lang/String;

.field private mPmString:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/graphics/Typeface;)V
    .locals 2
    .parameter "parent"
    .parameter "tf"

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 125
    :cond_0
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, ampm:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$AmPm;->mAmString:Ljava/lang/String;

    .line 129
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$AmPm;->mPmString:Ljava/lang/String;

    .line 131
    return-void
.end method


# virtual methods
.method getShowString(Z)Ljava/lang/String;
    .locals 2
    .parameter "isMorning"

    .prologue
    .line 148
    const-string v0, ""

    .line 149
    .local v0, showString:Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$AmPm;->isShow:Z

    if-eqz v1, :cond_0

    .line 150
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$AmPm;->mPmString:Ljava/lang/String;

    .line 152
    :cond_0
    :goto_0
    return-object v0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$AmPm;->mAmString:Ljava/lang/String;

    goto :goto_0
.end method

.method setIsMorning(Z)V
    .locals 2
    .parameter "isMorning"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$AmPm;->mAmString:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$AmPm;->mPmString:Ljava/lang/String;

    goto :goto_0
.end method

.method setShowAmPm(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 135
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$AmPm;->mAmPmTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 137
    :cond_0
    return-void

    .line 135
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method setShowAmPmString(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTELocalDigitalTime$AmPm;->isShow:Z

    .line 146
    return-void
.end method
