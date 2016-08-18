.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final BIND_RETRY_INTERVAL:I

.field private final WAKE_LOCK_TIMEOUT:I

.field private final mContext:Landroid/content/Context;

.field private mOriginatingAddress:Ljava/lang/String;

.field private mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

.field private mimeType:Ljava/lang/String;

.field private pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

.field private siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

.field private slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 2
    .parameter "phone"
    .parameter "smsDispatcher"

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->WAKE_LOCK_TIMEOUT:I

    .line 80
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->BIND_RETRY_INTERVAL:I

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    .line 155
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 156
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 157
    new-instance v0, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;-><init>(Lcom/android/internal/telephony/WapPushOverSms;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    .line 158
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->bindWapPushManager()V

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/WapPushOverSms;)Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    return-object v0
.end method

.method private dispatchWapPdu_CONNECTIVITY_WBXML([BIII)V
    .locals 6
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "dataIndex"

    .prologue
    .line 1058
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CONNECTIVITY_WBXML: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1062
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1063
    const-string v3, "data"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1064
    const-string v3, "subscription"

    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1066
    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    .line 1067
    .local v2, permission:Ljava/lang/String;
    const/16 v0, 0x13

    .line 1068
    .local v0, appOp:I
    iget-object v3, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1070
    return-void
.end method

.method private dispatchWapPdu_EMN_B_X_HDML([BIII)V
    .locals 6
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "dataIndex"

    .prologue
    .line 1092
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "X_HDML: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mimetype = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1096
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1097
    const-string v3, "data"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1098
    const-string v3, "subscription"

    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1100
    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    .line 1101
    .local v2, permission:Ljava/lang/String;
    const/16 v0, 0x13

    .line 1102
    .local v0, appOp:I
    iget-object v3, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1104
    return-void
.end method

.method private dispatchWapPdu_EMN_WBXML([BIII)V
    .locals 6
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "dataIndex"

    .prologue
    .line 1076
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EMN_WBXML: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1080
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1081
    const-string v3, "data"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1082
    const-string v3, "subscription"

    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1084
    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    .line 1085
    .local v2, permission:Ljava/lang/String;
    const/16 v0, 0x13

    .line 1086
    .local v0, appOp:I
    iget-object v3, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1088
    return-void
.end method

.method private dispatchWapPdu_SI([BIII)Z
    .locals 30
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "dataIndex"

    .prologue
    .line 409
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v26, v0

    sub-int v26, v26, p4

    move/from16 v0, v26

    new-array v11, v0, [B

    .line 410
    .local v11, data:[B
    const/16 v26, 0x0

    array-length v0, v11

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v11, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    const/4 v12, 0x0

    .line 414
    .local v12, index:I
    add-int/lit8 v13, v12, 0x1

    .end local v12           #index:I
    .local v13, index:I
    aget-byte v26, v11, v12

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    .line 415
    .local v25, wbxml_version:I
    const/16 v26, 0x1

    move/from16 v0, v26

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    const/16 v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    .line 416
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push version is Not support index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/16 v26, 0x0

    move v12, v13

    .line 803
    .end local v13           #index:I
    .restart local v12       #index:I
    :goto_0
    return v26

    .line 421
    .end local v12           #index:I
    .restart local v13       #index:I
    :cond_0
    new-instance v26, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v26

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v26

    if-nez v26, :cond_1

    .line 425
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push publicId error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/16 v26, 0x0

    move v12, v13

    .end local v13           #index:I
    .restart local v12       #index:I
    goto :goto_0

    .line 428
    .end local v12           #index:I
    .restart local v13       #index:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v19

    .line 429
    .local v19, publicId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v26

    add-int/lit8 v12, v26, 0x1

    .line 430
    .end local v13           #index:I
    .restart local v12       #index:I
    const-wide/16 v26, 0x5

    cmp-long v26, v26, v19

    if-eqz v26, :cond_2

    .line 431
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push Not SI index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/16 v26, 0x0

    goto :goto_0

    .line 436
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v26

    if-nez v26, :cond_3

    .line 437
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push charset error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 440
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v8

    .line 441
    .local v8, charSet:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v26

    add-int v12, v12, v26

    .line 443
    const-wide/16 v26, 0x6a

    cmp-long v26, v26, v8

    if-eqz v26, :cond_4

    const-wide/16 v26, 0x4

    cmp-long v26, v26, v8

    if-eqz v26, :cond_4

    const-wide/16 v26, 0x3

    cmp-long v26, v26, v8

    if-eqz v26, :cond_4

    .line 444
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push charset Not support index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 450
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v26

    if-nez v26, :cond_5

    .line 451
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push table_strlen error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 455
    :cond_5
    const/16 v22, 0x0

    .line 456
    .local v22, table_str:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v23

    .line 457
    .local v23, table_strlen:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v26

    add-int v12, v12, v26

    .line 458
    const-wide/16 v26, 0x0

    cmp-long v26, v26, v23

    if-eqz v26, :cond_7

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v26

    if-nez v26, :cond_6

    .line 460
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push table_str error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 463
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v22

    .line 466
    :cond_7
    int-to-long v0, v12

    move-wide/from16 v26, v0

    add-long v26, v26, v23

    move-wide/from16 v0, v26

    long-to-int v12, v0

    .line 468
    array-length v0, v11

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    if-lt v12, v0, :cond_8

    .line 469
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push No valid content index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 474
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    const/16 v27, 0x7

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->NotifyText:Ljava/lang/String;

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->si_id:Ljava/lang/String;

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    const-wide/16 v27, 0x0

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/android/internal/telephony/WspTypeDecoder;->created:J

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    const-wide/16 v27, 0x0

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/android/internal/telephony/WspTypeDecoder;->si_expired:J

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iput-wide v8, v0, Lcom/android/internal/telephony/WspTypeDecoder;->CharSet:J

    .line 484
    aget-byte v26, v11, v12

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x80

    move/from16 v26, v0

    shr-int/lit8 v7, v26, 0x7

    .line 485
    .local v7, attrTag:I
    aget-byte v26, v11, v12

    and-int/lit8 v26, v26, 0x40

    shr-int/lit8 v10, v26, 0x6

    .line 486
    .local v10, conTag:I
    aget-byte v26, v11, v12

    and-int/lit8 v4, v26, 0x3f

    .line 487
    .local v4, SI_tag:I
    const/16 v26, 0x5

    move/from16 v0, v26

    if-eq v0, v4, :cond_9

    .line 488
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push Not SI 2 index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 491
    :cond_9
    add-int v21, v7, v10

    .line 492
    .local v21, siEndTagCount:I
    add-int/lit8 v12, v12, 0x1

    .line 494
    :cond_a
    :goto_1
    array-length v0, v11

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v12, v0, :cond_23

    if-lez v21, :cond_23

    .line 496
    aget-byte v26, v11, v12

    and-int/lit8 v4, v26, 0x3f

    .line 497
    sparse-switch v4, :sswitch_data_0

    .line 738
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push not handled tag:0x%x"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 499
    :sswitch_0
    aget-byte v26, v11, v12

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xc0

    move/from16 v26, v0

    if-eqz v26, :cond_b

    .line 500
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push end tag not support index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 503
    :cond_b
    add-int/lit8 v12, v12, 0x1

    .line 504
    add-int/lit8 v21, v21, -0x1

    .line 505
    goto :goto_1

    .line 507
    :sswitch_1
    aget-byte v26, v11, v12

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x80

    move/from16 v26, v0

    shr-int/lit8 v7, v26, 0x7

    .line 508
    aget-byte v26, v11, v12

    and-int/lit8 v26, v26, 0x40

    shr-int/lit8 v10, v26, 0x6

    .line 509
    add-int v26, v7, v10

    move/from16 v0, v26

    int-to-long v14, v0

    .line 510
    .local v14, indicationEndTagcount:J
    add-int/lit8 v12, v12, 0x1

    .line 511
    :goto_2
    array-length v0, v11

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    if-gt v12, v0, :cond_a

    const-wide/16 v26, 0x0

    cmp-long v26, v14, v26

    if-lez v26, :cond_a

    .line 512
    aget-byte v26, v11, v12

    move/from16 v0, v26

    and-int/lit16 v6, v0, 0xff

    .line 513
    .local v6, attrId:I
    packed-switch v6, :pswitch_data_0

    .line 715
    :pswitch_0
    add-int/lit8 v12, v12, 0x1

    .line 716
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push attribute content type not support index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 515
    :pswitch_1
    const-wide/16 v26, 0x1

    sub-long v14, v14, v26

    .line 516
    add-int/lit8 v12, v12, 0x1

    .line 517
    goto :goto_2

    .line 519
    :pswitch_2
    aget-byte v26, v11, v12

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xc0

    move/from16 v26, v0

    if-eqz v26, :cond_c

    .line 520
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push string table not support index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 523
    :cond_c
    add-int/lit8 v12, v12, 0x1

    .line 527
    const-wide/16 v26, 0x4

    cmp-long v26, v26, v8

    if-nez v26, :cond_d

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextStringLatin1(I)Z

    move-result v26

    if-nez v26, :cond_f

    .line 529
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push latin1 text error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 532
    :cond_d
    const-wide/16 v26, 0x3

    cmp-long v26, v26, v8

    if-nez v26, :cond_e

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextStringUsAscII(I)Z

    move-result v26

    if-nez v26, :cond_f

    .line 534
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push us-ascii text error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 538
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTextString(I)Z

    move-result v26

    if-nez v26, :cond_f

    .line 539
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push utf8 text error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 544
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->NotifyText:Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v26, :cond_11

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->NotifyText:Ljava/lang/String;

    .line 546
    if-eqz v22, :cond_10

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->NotifyText:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->NotifyText:Ljava/lang/String;

    .line 553
    :cond_10
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v26

    add-int v12, v12, v26

    .line 554
    goto/16 :goto_2

    .line 549
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->NotifyText:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_10

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->NotifyText:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->NotifyText:Ljava/lang/String;

    goto :goto_3

    .line 557
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    const/16 v27, 0x5

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    .line 558
    add-int/lit8 v12, v12, 0x1

    .line 559
    goto/16 :goto_2

    .line 561
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    const/16 v27, 0x6

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    .line 562
    add-int/lit8 v12, v12, 0x1

    .line 563
    goto/16 :goto_2

    .line 565
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    const/16 v27, 0x7

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    .line 566
    add-int/lit8 v12, v12, 0x1

    .line 567
    goto/16 :goto_2

    .line 569
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    const/16 v27, 0x8

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    .line 570
    add-int/lit8 v12, v12, 0x1

    .line 571
    goto/16 :goto_2

    .line 573
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    const/16 v27, 0x9

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    .line 574
    add-int/lit8 v12, v12, 0x1

    .line 575
    goto/16 :goto_2

    .line 577
    :pswitch_8
    add-int/lit8 v12, v12, 0x1

    .line 579
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push data type Not support index at1:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    aget-byte v26, v11, v12

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    const/16 v27, 0xc3

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_12

    .line 583
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push data type Not support index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 587
    :cond_12
    add-int/lit8 v12, v12, 0x1

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTimeInteger(I)Z

    move-result v26

    if-nez v26, :cond_13

    .line 590
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push create time error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 594
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/android/internal/telephony/WspTypeDecoder;->created:J

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v26

    add-int v12, v12, v26

    .line 598
    goto/16 :goto_2

    .line 600
    :pswitch_9
    add-int/lit8 v12, v12, 0x1

    .line 601
    aget-byte v26, v11, v12

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_14

    .line 602
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push href 0x0B string type not support index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 605
    :cond_14
    add-int/lit8 v12, v12, 0x1

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUrlString(I)Z

    move-result v26

    if-nez v26, :cond_15

    .line 607
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push href 0x0B url parse error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 610
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v26

    add-int v12, v12, v26

    .line 612
    goto/16 :goto_2

    .line 614
    :pswitch_a
    add-int/lit8 v12, v12, 0x1

    .line 615
    aget-byte v26, v11, v12

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_16

    .line 616
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push href 0x0C string type not support index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 619
    :cond_16
    add-int/lit8 v12, v12, 0x1

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUrlString(I)Z

    move-result v26

    if-nez v26, :cond_17

    .line 621
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push href 0x0C url parse error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 624
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v26

    add-int v12, v12, v26

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v28, Ljava/lang/String;

    const-string v29, "http://"

    invoke-direct/range {v28 .. v29}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    goto/16 :goto_2

    .line 629
    :pswitch_b
    add-int/lit8 v12, v12, 0x1

    .line 630
    aget-byte v26, v11, v12

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_18

    .line 631
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push href 0x0D string type not support index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 634
    :cond_18
    add-int/lit8 v12, v12, 0x1

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUrlString(I)Z

    move-result v26

    if-nez v26, :cond_19

    .line 636
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push href 0x0D url parse error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 639
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v26

    add-int v12, v12, v26

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v28, Ljava/lang/String;

    const-string v29, "http://www."

    invoke-direct/range {v28 .. v29}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    goto/16 :goto_2

    .line 644
    :pswitch_c
    add-int/lit8 v12, v12, 0x1

    .line 645
    aget-byte v26, v11, v12

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1a

    .line 646
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push href 0x0E string type not support index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 649
    :cond_1a
    add-int/lit8 v12, v12, 0x1

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUrlString(I)Z

    move-result v26

    if-nez v26, :cond_1b

    .line 651
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push href 0x0E url parse error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 654
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v26

    add-int v12, v12, v26

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v28, Ljava/lang/String;

    const-string v29, "https://"

    invoke-direct/range {v28 .. v29}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    goto/16 :goto_2

    .line 659
    :pswitch_d
    add-int/lit8 v12, v12, 0x1

    .line 660
    aget-byte v26, v11, v12

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1c

    .line 661
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push href 0x0F string type not support index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 664
    :cond_1c
    add-int/lit8 v12, v12, 0x1

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUrlString(I)Z

    move-result v26

    if-nez v26, :cond_1d

    .line 666
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push href 0x0F url parse error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 669
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v26

    add-int v12, v12, v26

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v28, Ljava/lang/String;

    const-string v29, "https://www."

    invoke-direct/range {v28 .. v29}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    goto/16 :goto_2

    .line 674
    :pswitch_e
    add-int/lit8 v12, v12, 0x1

    .line 677
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push data type Not support index at11:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    aget-byte v26, v11, v12

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    const/16 v27, 0xc3

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1e

    .line 680
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push data type Not support index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 684
    :cond_1e
    add-int/lit8 v12, v12, 0x1

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeTimeInteger(I)Z

    move-result v26

    if-nez v26, :cond_1f

    .line 687
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push si-expires error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 691
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/android/internal/telephony/WspTypeDecoder;->si_expired:J

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v26

    add-int v12, v12, v26

    .line 694
    goto/16 :goto_2

    .line 696
    :pswitch_f
    add-int/lit8 v12, v12, 0x1

    .line 697
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu_default. data[index] 41= "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    aget-byte v28, v11, v12

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "index :"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    aget-byte v26, v11, v12

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_20

    .line 699
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push SI ID type Not support or may be null string, index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 704
    :cond_20
    add-int/lit8 v12, v12, 0x1

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUrlString(I)Z

    move-result v26

    if-nez v26, :cond_21

    .line 706
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push SI ID parse error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 709
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->si_id:Ljava/lang/String;

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v26

    add-int v12, v12, v26

    .line 711
    goto/16 :goto_2

    .line 724
    .end local v6           #attrId:I
    .end local v14           #indicationEndTagcount:J
    :sswitch_2
    aget-byte v26, v11, v12

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x80

    move/from16 v26, v0

    shr-int/lit8 v7, v26, 0x7

    .line 725
    aget-byte v26, v11, v12

    and-int/lit8 v26, v26, 0x40

    shr-int/lit8 v10, v26, 0x6

    .line 726
    add-int v16, v7, v10

    .line 727
    .local v16, infoEndTagCount:I
    add-int/lit8 v12, v12, 0x1

    .line 728
    :goto_4
    array-length v0, v11

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    if-gt v12, v0, :cond_a

    if-lez v16, :cond_a

    .line 730
    const/16 v26, 0x1

    aget-byte v27, v11, v12

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_22

    .line 731
    add-int/lit8 v16, v16, -0x1

    .line 733
    :cond_22
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 746
    .end local v16           #infoEndTagCount:I
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->created:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->si_expired:J

    move-wide/from16 v28, v0

    cmp-long v26, v26, v28

    if-lez v26, :cond_24

    .line 747
    const-string v26, "WAP PUSH"

    const-string v27, "si expired, ignor wappush message"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 752
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    const/16 v27, 0x9

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_26

    .line 753
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu_default. si_id = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->si_id:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const-string v26, "WAP PUSH"

    const-string v27, "delete all the push message with the same si_id"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_25
    :goto_5
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu SI mimeType:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu SI transactionId:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu SI pduType:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu SI pdu :"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {v11}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu SI action = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu SI CharSet = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->CharSet:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu SI href = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu SI NotifyText="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->NotifyText:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu SI si_id = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->si_id:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu SI address = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mOriginatingAddress:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu SI created = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->created:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu SI si_expired = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->si_expired:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    new-instance v17, Landroid/content/Intent;

    const-string v26, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 780
    .local v17, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 781
    const-string v26, "transactionId"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 782
    const-string v26, "pduType"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 783
    const-string v26, "data"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 784
    const-string v26, "href"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 785
    const-string v26, "action"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    move/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 786
    const-string v26, "NotifyText"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->NotifyText:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 787
    const-string v26, "si_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->si_id:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 788
    const-string v26, "address"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mOriginatingAddress:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 790
    const-string v26, "created"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->created:J

    move-wide/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 791
    const-string v26, "si_expired"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->si_expired:J

    move-wide/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 793
    const-string v26, "subscription"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v27

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 798
    const-string v18, "android.permission.RECEIVE_WAP_PUSH"

    .line 799
    .local v18, permission:Ljava/lang/String;
    const/16 v5, 0x13

    .line 801
    .local v5, appOp:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 803
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 756
    .end local v5           #appOp:I
    .end local v17           #intent:Landroid/content/Intent;
    .end local v18           #permission:Ljava/lang/String;
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    const/16 v27, 0x9

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v27, v0

    const/16 v27, 0x5

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_25

    .line 757
    :cond_27
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu_default. si_id = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->si_id:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    const-string v26, "WAP PUSH"

    const-string v27, "don\'t save the push message"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 497
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch

    .line 513
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private dispatchWapPdu_SL([BIII)Z
    .locals 25
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "dataIndex"

    .prologue
    .line 809
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    sub-int v21, v21, p4

    move/from16 v0, v21

    new-array v10, v0, [B

    .line 810
    .local v10, data:[B
    const/16 v21, 0x0

    array-length v0, v10

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v10, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 813
    const/4 v11, 0x0

    .line 814
    .local v11, index:I
    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .local v12, index:I
    aget-byte v21, v10, v11

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    .line 815
    .local v20, wbxml_version:I
    const/16 v21, 0x1

    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    const/16 v21, 0x2

    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 816
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push version is Not support index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const/16 v21, 0x0

    move v11, v12

    .line 1032
    .end local v12           #index:I
    .restart local v11       #index:I
    :goto_0
    return v21

    .line 821
    .end local v11           #index:I
    .restart local v12       #index:I
    :cond_0
    new-instance v21, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v21

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v21

    if-nez v21, :cond_1

    .line 825
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push publicId error index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/16 v21, 0x0

    move v11, v12

    .end local v12           #index:I
    .restart local v11       #index:I
    goto :goto_0

    .line 828
    .end local v11           #index:I
    .restart local v12       #index:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v15

    .line 829
    .local v15, publicId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v21

    add-int/lit8 v11, v21, 0x1

    .line 830
    .end local v12           #index:I
    .restart local v11       #index:I
    const-wide/16 v21, 0x6

    cmp-long v21, v21, v15

    if-eqz v21, :cond_2

    .line 831
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push Not SL index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const/16 v21, 0x0

    goto :goto_0

    .line 836
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v21

    if-nez v21, :cond_3

    .line 837
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push charset error index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 840
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v7

    .line 841
    .local v7, charSet:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v21

    add-int v11, v11, v21

    .line 843
    const-wide/16 v21, 0x6a

    cmp-long v21, v21, v7

    if-eqz v21, :cond_4

    const-wide/16 v21, 0x4

    cmp-long v21, v21, v7

    if-eqz v21, :cond_4

    .line 844
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push charset Not support index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 849
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v21

    if-nez v21, :cond_5

    .line 850
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SI push table_strlen error index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 853
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v18

    .line 854
    .local v18, table_strlen:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v21

    add-int v11, v11, v21

    .line 855
    const-wide/16 v21, 0x0

    cmp-long v21, v21, v18

    if-eqz v21, :cond_6

    .line 856
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push string table Not support index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 860
    :cond_6
    int-to-long v0, v11

    move-wide/from16 v21, v0

    add-long v21, v21, v18

    move-wide/from16 v0, v21

    long-to-int v11, v0

    .line 862
    array-length v0, v10

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-lt v11, v0, :cond_7

    .line 863
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push No valid content index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 868
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    const/16 v22, 0x5

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->NotifyText:Ljava/lang/String;

    .line 871
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-wide v7, v0, Lcom/android/internal/telephony/WspTypeDecoder;->CharSet:J

    .line 873
    aget-byte v21, v10, v11

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x80

    move/from16 v21, v0

    shr-int/lit8 v6, v21, 0x7

    .line 874
    .local v6, attrTag:I
    aget-byte v21, v10, v11

    and-int/lit8 v21, v21, 0x40

    shr-int/lit8 v9, v21, 0x6

    .line 875
    .local v9, conTag:I
    aget-byte v21, v10, v11

    and-int/lit8 v4, v21, 0x3f

    .line 876
    .local v4, SL_tag:I
    const/16 v21, 0x5

    move/from16 v0, v21

    if-eq v0, v4, :cond_8

    .line 877
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push Not SI 2 index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 880
    :cond_8
    add-int v17, v6, v9

    .line 881
    .local v17, slEndTagCount:I
    add-int/lit8 v11, v11, 0x1

    .line 883
    :goto_1
    array-length v0, v10

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_14

    if-lez v17, :cond_14

    .line 885
    aget-byte v21, v10, v11

    and-int/lit8 v4, v21, 0x3f

    .line 886
    packed-switch v4, :pswitch_data_0

    .line 978
    :pswitch_0
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push not handled tag:0x%x"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 888
    :pswitch_1
    aget-byte v21, v10, v11

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xc0

    move/from16 v21, v0

    if-eqz v21, :cond_9

    .line 889
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push end tag not support index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 892
    :cond_9
    add-int/lit8 v11, v11, 0x1

    .line 893
    add-int/lit8 v17, v17, -0x1

    .line 894
    goto :goto_1

    .line 896
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    const/16 v22, 0x5

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    .line 897
    add-int/lit8 v11, v11, 0x1

    .line 898
    goto :goto_1

    .line 900
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    const/16 v22, 0x6

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    .line 901
    add-int/lit8 v11, v11, 0x1

    .line 902
    goto/16 :goto_1

    .line 904
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    const/16 v22, 0x7

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    .line 905
    add-int/lit8 v11, v11, 0x1

    .line 906
    goto/16 :goto_1

    .line 908
    :pswitch_5
    add-int/lit8 v11, v11, 0x1

    .line 909
    aget-byte v21, v10, v11

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_a

    .line 910
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push href 0x08 string type not support index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 913
    :cond_a
    add-int/lit8 v11, v11, 0x1

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUrlString(I)Z

    move-result v21

    if-nez v21, :cond_b

    .line 915
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push href 0x08 url parse error index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 918
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v21

    add-int v11, v11, v21

    .line 920
    goto/16 :goto_1

    .line 922
    :pswitch_6
    add-int/lit8 v11, v11, 0x1

    .line 923
    aget-byte v21, v10, v11

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_c

    .line 924
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push href 0x09 string type not support index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 927
    :cond_c
    add-int/lit8 v11, v11, 0x1

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUrlString(I)Z

    move-result v21

    if-nez v21, :cond_d

    .line 929
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push href 0x09 url parse error index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 932
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v23, Ljava/lang/String;

    const-string v24, "http://"

    invoke-direct/range {v23 .. v24}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    .line 933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v21

    add-int v11, v11, v21

    .line 934
    goto/16 :goto_1

    .line 936
    :pswitch_7
    add-int/lit8 v11, v11, 0x1

    .line 937
    aget-byte v21, v10, v11

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_e

    .line 938
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push href 0x0A string type not support index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 941
    :cond_e
    add-int/lit8 v11, v11, 0x1

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUrlString(I)Z

    move-result v21

    if-nez v21, :cond_f

    .line 943
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push href 0x0A url parse error index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 946
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v23, Ljava/lang/String;

    const-string v24, "http://www."

    invoke-direct/range {v23 .. v24}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v21

    add-int v11, v11, v21

    .line 948
    goto/16 :goto_1

    .line 950
    :pswitch_8
    add-int/lit8 v11, v11, 0x1

    .line 951
    aget-byte v21, v10, v11

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_10

    .line 952
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push href 0x0B string type not support index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 955
    :cond_10
    add-int/lit8 v11, v11, 0x1

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUrlString(I)Z

    move-result v21

    if-nez v21, :cond_11

    .line 957
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push href 0x0B url parse error index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 960
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v23, Ljava/lang/String;

    const-string v24, "https://"

    invoke-direct/range {v23 .. v24}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v21

    add-int v11, v11, v21

    .line 962
    goto/16 :goto_1

    .line 964
    :pswitch_9
    add-int/lit8 v11, v11, 0x1

    .line 965
    aget-byte v21, v10, v11

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_12

    .line 966
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push href 0x0C string type not support index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 969
    :cond_12
    add-int/lit8 v11, v11, 0x1

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUrlString(I)Z

    move-result v21

    if-nez v21, :cond_13

    .line 971
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push href 0x0C url parse error index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 974
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v23, Ljava/lang/String;

    const-string v24, "https://www."

    invoke-direct/range {v23 .. v24}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v21

    add-int v11, v11, v21

    .line 976
    goto/16 :goto_1

    .line 985
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    const-string v22, "application/x-oma-DCD:DCD.ua"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 987
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "SL_DCD: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    new-instance v13, Landroid/content/Intent;

    const-string v21, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 991
    .local v13, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 992
    const-string v21, "href"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 993
    const-string v14, "android.permission.RECEIVE_WAP_PUSH"

    .line 994
    .local v14, permission:Ljava/lang/String;
    const/16 v5, 0x13

    .line 995
    .local v5, appOp:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13, v14, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 996
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 999
    .end local v5           #appOp:I
    .end local v13           #intent:Landroid/content/Intent;
    .end local v14           #permission:Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    const/16 v22, 0x7

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    const/16 v22, 0x5

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_17

    .line 1001
    :cond_16
    const-string v21, "WAP PUSH"

    const-string v22, "Received SL push not handled when action is cache "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 1006
    :cond_17
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "dispatchWapPdu SL mimeType:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "dispatchWapPdu SL pduType:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "dispatchWapPdu SL pdu :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v10}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "dispatchWapPdu SL action = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "dispatchWapPdu SL CharSet = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->CharSet:J

    move-wide/from16 v23, v0

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "dispatchWapPdu SL href = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "dispatchWapPdu SL address = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mOriginatingAddress:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    new-instance v13, Landroid/content/Intent;

    const-string v21, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1015
    .restart local v13       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1016
    const-string v21, "transactionId"

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1017
    const-string v21, "pduType"

    move-object/from16 v0, v21

    move/from16 v1, p3

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1018
    const-string v21, "data"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1019
    const-string v21, "href"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1020
    const-string v21, "action"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/WspTypeDecoder;->action:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1021
    const-string v21, "address"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mOriginatingAddress:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1023
    const-string v21, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1026
    const-string v21, "subscription"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1029
    const-string v14, "android.permission.RECEIVE_WAP_PUSH"

    .line 1030
    .restart local v14       #permission:Ljava/lang/String;
    const/16 v5, 0x13

    .line 1031
    .restart local v5       #appOp:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v13, v14, v5}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1032
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 886
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private dispatchWapPdu_SYNML_NOTIFICATION([BIII)V
    .locals 6
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "dataIndex"

    .prologue
    .line 1040
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SYNML_NOTIFICATION: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1044
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1045
    const-string v3, "data"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1046
    const-string v3, "subscription"

    iget-object v4, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iget-object v4, v4, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1048
    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    .line 1049
    .local v2, permission:Ljava/lang/String;
    const/16 v0, 0x13

    .line 1050
    .local v0, appOp:I
    iget-object v3, p0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 1052
    return-void
.end method


# virtual methods
.method public dispatchWapPdu([B)I
    .locals 32
    .parameter "pdu"

    .prologue
    .line 180
    const-string v29, "WAP PUSH"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Rx: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/16 v18, 0x0

    .line 183
    .local v18, index:I
    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .local v19, index:I
    aget-byte v29, p1, v18

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    .line 184
    .local v26, transactionId:I
    add-int/lit8 v18, v19, 0x1

    .end local v19           #index:I
    .restart local v18       #index:I
    aget-byte v29, p1, v19

    move/from16 v0, v29

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    .line 185
    .local v22, pduType:I
    const/4 v14, 0x0

    .line 188
    .local v14, headerLength:I
    const-string v29, "WAP PUSH"

    const-string v30, "====== By lmq, dispatchWapPdu"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "ENABLE_WAP_PUSH_RECEIVING"

    const/16 v31, 0x1

    invoke-static/range {v29 .. v31}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    if-nez v29, :cond_0

    .line 190
    const-string v29, "WAP PUSH"

    const-string v30, "====== By lmq, wap push switch is off."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const/16 v29, 0x1

    .line 405
    :goto_0
    return v29

    .line 193
    :cond_0
    const-string v29, "WAP PUSH"

    const-string v30, "====== By lmq, wap push switch is on."

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/16 v29, 0x6

    move/from16 v0, v22

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    const/16 v29, 0xf0

    move/from16 v0, v22

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    const/16 v29, 0x7

    move/from16 v0, v22

    move/from16 v1, v29

    if-eq v0, v1, :cond_1

    .line 200
    const-string v29, "WAP PUSH"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/16 v29, 0x1

    goto :goto_0

    .line 204
    :cond_1
    new-instance v29, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v29

    if-nez v29, :cond_2

    .line 213
    const-string v29, "WAP PUSH"

    const-string v30, "Received PDU. Header Length error."

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/16 v29, 0x2

    goto :goto_0

    .line 216
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v29

    move-wide/from16 v0, v29

    long-to-int v14, v0

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v29

    add-int/lit8 v18, v29, 0x2

    .line 219
    move/from16 v15, v18

    .line 233
    .local v15, headerStartIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v29

    if-nez v29, :cond_3

    .line 234
    const-string v29, "WAP PUSH"

    const-string v30, "Received PDU. Header Content-Type error."

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/16 v29, 0x2

    goto/16 :goto_0

    .line 238
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v5

    .line 241
    .local v5, binaryContentType:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v29

    add-int v18, v18, v29

    .line 243
    const-string v29, "WAP PUSH"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "mimeType = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "  binaryContentType"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-array v13, v14, [B

    .line 245
    .local v13, header:[B
    const/16 v29, 0x0

    array-length v0, v13

    move/from16 v30, v0

    move-object/from16 v0, p1

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v15, v13, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    add-int v8, v15, v14

    .line 250
    .local v8, dataIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "application/vnd.wap.coc"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_5

    .line 251
    move-object/from16 v21, p1

    .line 258
    .local v21, intentData:[B
    :goto_1
    const/4 v11, 0x0

    .line 259
    .local v11, dispatchedByApplication:Z
    long-to-int v0, v5

    move/from16 v29, v0

    sparse-switch v29, :sswitch_data_0

    .line 322
    :cond_4
    :goto_2
    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v11, v0, :cond_a

    .line 323
    const/16 v29, -0x1

    goto/16 :goto_0

    .line 254
    .end local v11           #dispatchedByApplication:Z
    .end local v21           #intentData:[B
    :cond_5
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v29, v0

    sub-int v29, v29, v8

    move/from16 v0, v29

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 255
    .restart local v21       #intentData:[B
    const/16 v29, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-static {v0, v8, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 262
    .restart local v11       #dispatchedByApplication:Z
    :sswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_SI([BIII)Z

    move-result v11

    .line 263
    if-nez v11, :cond_4

    .line 264
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ".invalid"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    goto :goto_2

    .line 270
    :sswitch_1
    new-instance v10, Ljava/lang/String;

    const-string v29, "application/x-oma-DCD:DCD.ua"

    move-object/from16 v0, v29

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 271
    .local v10, dcd_id_string:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 272
    .local v9, dcd_id_byte:[B
    array-length v0, v9

    move/from16 v29, v0

    move/from16 v0, v29

    if-lt v14, v0, :cond_7

    .line 273
    const/16 v16, 0x0

    .line 274
    .local v16, headerStartIndexOffset:I
    :goto_3
    array-length v0, v9

    move/from16 v29, v0

    add-int v29, v29, v16

    move/from16 v0, v29

    if-gt v0, v14, :cond_7

    .line 276
    const/16 v17, 0x0

    .local v17, i:I
    :goto_4
    array-length v0, v9

    move/from16 v29, v0

    move/from16 v0, v17

    move/from16 v1, v29

    if-ge v0, v1, :cond_6

    .line 277
    add-int v29, v15, v16

    add-int v29, v29, v17

    aget-byte v29, p1, v29

    aget-byte v30, v9, v17

    move/from16 v0, v29

    move/from16 v1, v30

    if-eq v0, v1, :cond_8

    .line 281
    :cond_6
    array-length v0, v9

    move/from16 v29, v0

    move/from16 v0, v17

    move/from16 v1, v29

    if-ne v0, v1, :cond_9

    .line 282
    const-string v29, "application/x-oma-DCD:DCD.ua"

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    .line 290
    .end local v16           #headerStartIndexOffset:I
    .end local v17           #i:I
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_SL([BIII)Z

    move-result v11

    .line 291
    if-nez v11, :cond_4

    .line 292
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ".invalid"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    goto/16 :goto_2

    .line 276
    .restart local v16       #headerStartIndexOffset:I
    .restart local v17       #i:I
    :cond_8
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 285
    :cond_9
    add-int/lit8 v16, v16, 0x1

    .line 286
    goto :goto_3

    .line 298
    .end local v9           #dcd_id_byte:[B
    .end local v10           #dcd_id_string:Ljava/lang/String;
    .end local v16           #headerStartIndexOffset:I
    .end local v17           #i:I
    :sswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_SYNML_NOTIFICATION([BIII)V

    .line 299
    const/4 v11, 0x1

    .line 300
    goto/16 :goto_2

    .line 304
    :sswitch_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_CONNECTIVITY_WBXML([BIII)V

    .line 305
    const/4 v11, 0x1

    .line 306
    goto/16 :goto_2

    .line 310
    :sswitch_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_EMN_WBXML([BIII)V

    .line 311
    const/4 v11, 0x1

    .line 312
    goto/16 :goto_2

    .line 314
    :sswitch_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu_EMN_B_X_HDML([BIII)V

    .line 315
    const/4 v11, 0x1

    .line 316
    goto/16 :goto_2

    .line 333
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v29, v0

    add-int v30, v18, v14

    add-int/lit8 v30, v30, -0x1

    move-object/from16 v0, v29

    move/from16 v1, v18

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v29

    move-wide/from16 v0, v29

    long-to-int v0, v0

    move/from16 v18, v0

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v27

    .line 337
    .local v27, wapAppId:Ljava/lang/String;
    if-nez v27, :cond_b

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v29

    move-wide/from16 v0, v29

    long-to-int v0, v0

    move/from16 v29, v0

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    .line 341
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    move-object/from16 v29, v0

    if-nez v29, :cond_d

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 343
    .local v7, contentType:Ljava/lang/String;
    :goto_5
    const-string v29, "WAP PUSH"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "appid found: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ":"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/16 v25, 0x1

    .line 347
    .local v25, processFurther:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapConn:Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/WapPushOverSms$WapPushConnection;->getWapPushManager()Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v28

    .line 349
    .local v28, wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    if-nez v28, :cond_e

    .line 350
    const-string v29, "WAP PUSH"

    const-string v30, "wap push manager not found!"

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :cond_c
    :goto_6
    if-nez v25, :cond_f

    .line 370
    const/16 v29, 0x1

    goto/16 :goto_0

    .line 341
    .end local v7           #contentType:Ljava/lang/String;
    .end local v25           #processFurther:Z
    .end local v28           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    goto :goto_5

    .line 352
    .restart local v7       #contentType:Ljava/lang/String;
    .restart local v25       #processFurther:Z
    .restart local v28       #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_e
    :try_start_1
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 353
    .local v20, intent:Landroid/content/Intent;
    const-string v29, "transactionId"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 354
    const-string v29, "pduType"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 355
    const-string v29, "header"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 356
    const-string v29, "data"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 357
    const-string v29, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 359
    const-string v29, "subscription"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v30

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v7, v2}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v24

    .line 363
    .local v24, procRet:I
    const-string v29, "WAP PUSH"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "procRet:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 364
    and-int/lit8 v29, v24, 0x1

    if-lez v29, :cond_c

    const v29, 0x8000

    and-int v29, v29, v24

    if-nez v29, :cond_c

    .line 366
    const/16 v25, 0x0

    goto/16 :goto_6

    .line 372
    .end local v20           #intent:Landroid/content/Intent;
    .end local v24           #procRet:I
    .end local v28           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :catch_0
    move-exception v12

    .line 373
    .local v12, e:Landroid/os/RemoteException;
    const-string v29, "WAP PUSH"

    const-string v30, "remote func failed..."

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    .end local v7           #contentType:Ljava/lang/String;
    .end local v12           #e:Landroid/os/RemoteException;
    .end local v25           #processFurther:Z
    .end local v27           #wapAppId:Ljava/lang/String;
    :cond_f
    const-string v29, "WAP PUSH"

    const-string v30, "fall back to existing handler"

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    move-object/from16 v29, v0

    if-nez v29, :cond_10

    .line 379
    const-string v29, "WAP PUSH"

    const-string v30, "Header Content-Type error."

    invoke-static/range {v29 .. v30}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/16 v29, 0x2

    goto/16 :goto_0

    .line 386
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "application/vnd.wap.mms-message"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_11

    .line 387
    const-string v23, "android.permission.RECEIVE_MMS"

    .line 388
    .local v23, permission:Ljava/lang/String;
    const/16 v4, 0x12

    .line 394
    .local v4, appOp:I
    :goto_7
    new-instance v20, Landroid/content/Intent;

    const-string v29, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 395
    .restart local v20       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mimeType:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    const-string v29, "transactionId"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    const-string v29, "pduType"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 398
    const-string v29, "header"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 399
    const-string v29, "data"

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 400
    const-string v29, "contentTypeParameters"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v30

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 401
    const-string v29, "subscription"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v30

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mSmsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/telephony/SMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 405
    const/16 v29, -0x1

    goto/16 :goto_0

    .line 390
    .end local v4           #appOp:I
    .end local v20           #intent:Landroid/content/Intent;
    .end local v23           #permission:Ljava/lang/String;
    :cond_11
    const-string v23, "android.permission.RECEIVE_WAP_PUSH"

    .line 391
    .restart local v23       #permission:Ljava/lang/String;
    const/16 v4, 0x13

    .restart local v4       #appOp:I
    goto/16 :goto_7

    .line 259
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x2e -> :sswitch_0
        0x30 -> :sswitch_1
        0x36 -> :sswitch_3
        0x44 -> :sswitch_2
        0x30a -> :sswitch_4
    .end sparse-switch
.end method

.method public dispatchWapPdu([BLjava/lang/String;)I
    .locals 3
    .parameter "pdu"
    .parameter "address"

    .prologue
    .line 163
    iput-object p2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mOriginatingAddress:Ljava/lang/String;

    .line 164
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchWapPdu,mOriginatingAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/WapPushOverSms;->mOriginatingAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v0

    return v0
.end method
