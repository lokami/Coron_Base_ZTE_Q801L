.class public abstract Lcom/android/internal/telephony/SmsMessageBase;
.super Ljava/lang/Object;
.source "SmsMessageBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMS"


# instance fields
.field protected callBackNumber:Ljava/lang/String;

.field protected cmasCategory:I

.field protected cmasExpireTime:J

.field protected cmasResponseType:I

.field protected cmasSpecialHandling:I

.field protected mEmailBody:Ljava/lang/String;

.field protected mEmailFrom:Ljava/lang/String;

.field protected mIndexOnIcc:I

.field protected mIsEmail:Z

.field protected mIsMwi:Z

.field protected mMessageBody:Ljava/lang/String;

.field public mMessageRef:I

.field protected mMwiDontStore:Z

.field protected mMwiSense:Z

.field protected mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

.field protected mPdu:[B

.field protected mPseudoSubject:Ljava/lang/String;

.field protected mScAddress:Ljava/lang/String;

.field protected mScTimeMillis:J

.field protected mStatusOnIcc:I

.field protected mUserData:[B

.field protected mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

.field protected priority:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mStatusOnIcc:I

    .line 95
    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIndexOnIcc:I

    .line 101
    return-void
.end method


# virtual methods
.method protected extractEmailAddressFromMessageBody()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 360
    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    const-string v2, "( /)|( )"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, parts:[Ljava/lang/String;
    array-length v1, v0

    if-ge v1, v3, :cond_0

    .line 365
    :goto_0
    return-void

    .line 362
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    .line 363
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailBody:Ljava/lang/String;

    .line 364
    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    goto :goto_0
.end method

.method public getCallBackNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->callBackNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailBody:Ljava/lang/String;

    .line 168
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDisplayOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    .line 143
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEmailBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailBody:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mEmailFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexOnIcc()I
    .locals 1

    .prologue
    .line 329
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIndexOnIcc:I

    return v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mMessageBody:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
.end method

.method public getOriginatingAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-nez v0, :cond_0

    .line 128
    const/4 v0, 0x0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPdu()[B
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->priority:I

    return v0
.end method

.method public abstract getProtocolIdentifier()I
.end method

.method public getPseudoSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPseudoSubject:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPseudoSubject:Ljava/lang/String;

    goto :goto_0
.end method

.method public getServiceCenterAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mScAddress:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getStatus()I
.end method

.method public getStatusOnIcc()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mStatusOnIcc:I

    return v0
.end method

.method public getTimestampMillis()J
    .locals 2

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mScTimeMillis:J

    return-wide v0
.end method

.method public getUserData()[B
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserData:[B

    return-object v0
.end method

.method public getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    return-object v0
.end method

.method public abstract isCphsMwiMessage()Z
.end method

.method public isEmail()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mIsEmail:Z

    return v0
.end method

.method public abstract isMWIClearMessage()Z
.end method

.method public abstract isMWISetMessage()Z
.end method

.method public abstract isMwiDontStore()Z
.end method

.method public abstract isReplace()Z
.end method

.method public abstract isReplyPathPresent()Z
.end method

.method public abstract isStatusReportMessage()Z
.end method

.method protected parseMessageBody()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SmsAddress;->couldBeEmailGateway()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Lcom/android/internal/telephony/SmsMessageBase;->extractEmailAddressFromMessageBody()V

    .line 338
    :cond_0
    return-void
.end method
