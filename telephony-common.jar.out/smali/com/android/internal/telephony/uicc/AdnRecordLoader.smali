.class public Lcom/android/internal/telephony/uicc/AdnRecordLoader;
.super Landroid/os/Handler;
.source "AdnRecordLoader.java"


# static fields
.field static final EVENT_ADN_LOAD_ALL_DONE:I = 0x3

.field static final EVENT_ADN_LOAD_DONE:I = 0x1

.field static final EVENT_ANR_EXT_RECORD_LOAD_DONE:I = 0xd

.field static final EVENT_ANR_LOAD_ALL_DONE:I = 0xc

.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x4

.field static final EVENT_EXT_RECORD_LOAD_DONE:I = 0x2

.field static final EVENT_UPDATE_ANR_RECORD_DONE:I = 0x9

.field static final EVENT_UPDATE_EMAIL_RECORD_DONE:I = 0x7

.field static final EVENT_UPDATE_IAP_RECORD_DONE:I = 0xb

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x5

.field static final LOG_TAG:Ljava/lang/String; = "RIL_AdnRecordLoader"


# instance fields
.field Anriniap:I

.field EmailadnNumber:I

.field Emailiniap:I

.field IapforAnr:I

.field IapforEmail:I

.field adns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field anrExtRecId:I

.field anradnNumber:I

.field ef:I

.field extInx:I

.field extRecId:I

.field extensionEF:I

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field pendingExtLoads:I

.field pin2:Ljava/lang/String;

.field recordNumber:I

.field result:Ljava/lang/Object;

.field sfi:I

.field userResponse:Landroid/os/Message;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 2
    .parameter "fh"

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 49
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->Emailiniap:I

    .line 50
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->Anriniap:I

    .line 55
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extInx:I

    .line 56
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->sfi:I

    .line 94
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 95
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .parameter "msg"

    .prologue
    .line 377
    :try_start_0
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v1, :pswitch_data_0

    .line 656
    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    if-nez v1, :cond_1

    .line 658
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->result:Ljava/lang/Object;

    iput-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 660
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 661
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 663
    :cond_1
    :goto_1
    return-void

    .line 379
    :pswitch_1
    :try_start_1
    const-string v1, "AdnRecordLoader"

    const-string v2, "got EVENT_EF_LINEAR_RECORD_SIZE_DONE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 381
    .local v9, ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v7, v0

    .line 383
    .local v7, adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 384
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get EF record size failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 644
    .end local v7           #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    :catch_0
    move-exception v11

    .line 645
    .local v11, exc:Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 646
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v11, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 648
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 651
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_1

    .line 388
    .end local v11           #exc:Ljava/lang/RuntimeException;
    .restart local v7       #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v9       #ar:Landroid/os/AsyncResult;
    :cond_2
    :try_start_2
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    move-object/from16 v16, v0

    .line 396
    .local v16, recordSize:[I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extInx:I

    if-nez v1, :cond_4

    move-object/from16 v0, v16

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->recordNumber:I

    const/4 v2, 0x2

    aget v2, v16, v2

    if-le v1, v2, :cond_4

    .line 397
    :cond_3
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error  1recordSize.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->recordNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordSize[2]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v16, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 401
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extInx:I

    if-lez v1, :cond_6

    move-object/from16 v0, v16

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extRecId:I

    const/4 v2, 0x2

    aget v2, v16, v2

    if-le v1, v2, :cond_6

    .line 402
    :cond_5
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error  2recordSize.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "extRecId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extRecId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordSize[2]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v16, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 407
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extInx:I

    if-nez v1, :cond_8

    .line 408
    const/4 v1, 0x0

    aget v1, v16, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extRecId:I

    invoke-virtual {v7, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildAdnString(II)[B

    move-result-object v4

    .line 409
    .local v4, data:[B
    if-nez v4, :cond_7

    .line 410
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "wrong ADN format"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 413
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->ef:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->recordNumber:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pin2:Ljava/lang/String;

    const/4 v6, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 415
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    .line 417
    .end local v4           #data:[B
    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extInx:I

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extRecId:I

    const/16 v2, 0xff

    if-ne v1, v2, :cond_9

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_a

    .line 418
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extensionEF:I

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 420
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extInx:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extInx:I

    goto/16 :goto_0

    .line 424
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extInx:I

    if-eqz v1, :cond_0

    .line 425
    const/4 v1, 0x0

    aget v1, v16, v1

    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildEXT1String(I)[B

    move-result-object v4

    .line 427
    .restart local v4       #data:[B
    if-nez v4, :cond_b

    .line 428
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "worong ADN format"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 432
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extensionEF:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extRecId:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pin2:Ljava/lang/String;

    const/4 v6, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 435
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 440
    .end local v4           #data:[B
    .end local v7           #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v16           #recordSize:[I
    :pswitch_2
    const-string v1, "AdnRecordLoader"

    const-string v2, "got EVENT_UPDATE_RECORD_DONE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 442
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_c

    .line 443
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "update EF adn record failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 446
    :cond_c
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    .line 447
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 451
    .end local v9           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 452
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_d

    .line 453
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "update EF adn email record failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 456
    :cond_d
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    .line 457
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 460
    .end local v9           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    const-string v1, "AdnRecordLoader"

    const-string v2, "got EVENT_UPDATE_ANR_RECORD_DONE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 463
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_e

    .line 464
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "update EF adn anr record failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 467
    :cond_e
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    .line 468
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 471
    .end local v9           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 472
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_f

    .line 473
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "update EF adn anr record failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 476
    :cond_f
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    .line 477
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 481
    .end local v9           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 482
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v4, v0

    .line 484
    .restart local v4       #data:[B
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_10

    .line 485
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 495
    :cond_10
    new-instance v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->ef:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->recordNumber:I

    invoke-direct {v7, v1, v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 496
    .restart local v7       #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->result:Ljava/lang/Object;

    .line 499
    sget-boolean v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->is3GPB:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 501
    sget v12, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1RecMaxSize:I

    .line 507
    .local v12, ext1MaxRecSize:I
    :goto_2
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasExtendedRecord()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    if-le v12, v1, :cond_0

    .line 514
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    .line 516
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extensionEF:I

    iget v3, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 505
    .end local v12           #ext1MaxRecSize:I
    :cond_11
    sget v12, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mExt1RecMaxSize:I

    .restart local v12       #ext1MaxRecSize:I
    goto :goto_2

    .line 523
    .end local v4           #data:[B
    .end local v7           #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v12           #ext1MaxRecSize:I
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 524
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v4, v0

    .line 525
    .restart local v4       #data:[B
    iget-object v1, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v7, v0

    .line 527
    .restart local v7       #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_12

    .line 528
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 531
    :cond_12
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADN extension EF: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extensionEF:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->appendExtRecord([B)V

    .line 538
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 543
    .end local v4           #data:[B
    .end local v7           #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    :pswitch_8
    const-string v1, "RIL_AdnRecordLoader"

    const-string v2, "EVENT_ADN_LOAD_ALL_DONE "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 545
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    move-object v10, v0

    .line 547
    .local v10, datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_13

    .line 548
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 551
    :cond_13
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    .line 552
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->result:Ljava/lang/Object;

    .line 553
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    .line 555
    sget-boolean v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->is3GPB:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    .line 557
    sget v12, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1RecMaxSize:I

    .line 564
    .restart local v12       #ext1MaxRecSize:I
    :goto_3
    const/4 v13, 0x0

    .local v13, i:I
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v17

    .local v17, s:I
    :goto_4
    move/from16 v0, v17

    if-ge v13, v0, :cond_0

    .line 565
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_ADN_LOAD_ALL_DONE-i= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    new-instance v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->ef:I

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v7, v2, v3, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 569
    .restart local v7       #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->ef:I

    const/16 v2, 0x6f3a

    if-ne v1, v2, :cond_14

    .line 572
    const/4 v1, 0x2

    new-array v15, v1, [B

    .line 573
    .local v15, recid:[B
    const/4 v1, 0x0

    add-int/lit8 v2, v13, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v15, v1

    .line 574
    const/4 v1, 0x1

    const/4 v2, 0x1

    aput-byte v2, v15, v1

    .line 575
    invoke-static {v15}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v18

    .line 576
    .local v18, srecid:Ljava/lang/String;
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_ADN_LOAD_ALL_DONE-srecid= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecid(Ljava/lang/String;)V

    .line 582
    .end local v15           #recid:[B
    .end local v18           #srecid:Ljava/lang/String;
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasExtendedRecord()Z

    move-result v1

    if-eqz v1, :cond_15

    iget v1, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    if-le v12, v1, :cond_15

    .line 591
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    .line 592
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extensionEF:I

    iget v3, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 564
    :cond_15
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 561
    .end local v7           #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v12           #ext1MaxRecSize:I
    .end local v13           #i:I
    .end local v17           #s:I
    :cond_16
    sget v12, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mExt1RecMaxSize:I

    .restart local v12       #ext1MaxRecSize:I
    goto/16 :goto_3

    .line 600
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v10           #datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .end local v12           #ext1MaxRecSize:I
    :pswitch_9
    const-string v1, "RIL_AdnRecordLoader"

    const-string v2, "EVENT_ANR_LOAD_ALL_DONE "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 602
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    move-object v14, v0

    .line 604
    .local v14, mAnrFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_17

    .line 605
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 607
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    .line 608
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->result:Ljava/lang/Object;

    .line 609
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    .line 611
    const/4 v8, 0x0

    .line 612
    .local v8, anrRec:[B
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_5
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v13, v1, :cond_0

    .line 613
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #anrRec:[B
    check-cast v8, [B

    .line 614
    .restart local v8       #anrRec:[B
    new-instance v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->ef:I

    invoke-direct {v7, v1, v8}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(I[B)V

    .line 615
    .restart local v7       #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->adns:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasAnrExtendedRecord()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 617
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    .line 618
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extensionEF:I

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v3

    const/16 v5, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 612
    :cond_18
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 626
    .end local v7           #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v8           #anrRec:[B
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v13           #i:I
    .end local v14           #mAnrFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    :pswitch_a
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 627
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v4, v0

    .line 628
    .restart local v4       #data:[B
    iget-object v1, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v7, v0

    .line 630
    .restart local v7       #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_19

    .line 631
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 633
    :cond_19
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANR extention EF: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extensionEF:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->appendAnrExtRecord([B)V

    .line 640
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 377
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public loadAllAnrFromEF(IILandroid/os/Message;)V
    .locals 2
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "response"

    .prologue
    .line 136
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->ef:I

    .line 137
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extensionEF:I

    .line 138
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 140
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 144
    return-void
.end method

.method public loadAllFromEF(IILandroid/os/Message;)V
    .locals 2
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "response"

    .prologue
    .line 123
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->ef:I

    .line 124
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extensionEF:I

    .line 125
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 127
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 131
    return-void
.end method

.method public loadFromEF(IIILandroid/os/Message;)V
    .locals 2
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "response"

    .prologue
    .line 104
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->ef:I

    .line 105
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extensionEF:I

    .line 106
    iput p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->recordNumber:I

    .line 107
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 109
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 113
    return-void
.end method

.method public updateAdnEF(Ljava/util/Map;Lcom/android/internal/telephony/uicc/AdnRecord;IIIILjava/lang/String;Landroid/os/Message;)V
    .locals 9
    .parameter
    .parameter "adn"
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "extRecId"
    .parameter "pin2"
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[I>;",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            "IIII",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, recordSizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[I>;"
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 181
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 183
    .local v8, recordSize:[I
    array-length v1, v8

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget v1, v8, v1

    if-le p5, v1, :cond_2

    .line 184
    :cond_0
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in updateAdnEF, recordSize.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordSize[2]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v8, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .end local v8           #recordSize:[I
    :catch_0
    move-exception v7

    .line 218
    .local v7, exc:Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 219
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 221
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 224
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 227
    .end local v7           #exc:Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void

    .line 188
    .restart local v8       #recordSize:[I
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    aget v1, v8, v1

    invoke-virtual {p2, v1, p6}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildAdnString(II)[B

    move-result-object v4

    .line 189
    .local v4, data:[B
    if-nez v4, :cond_3

    .line 190
    const-string v1, "RIL_AdnRecordLoader"

    const-string v2, "in updateAdnEF, data == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "wrong ADN format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move v2, p3

    move v3, p5

    move-object/from16 v5, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 196
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    .line 199
    const/16 v1, 0xff

    if-ne p6, v1, :cond_4

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    .line 200
    :cond_4
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #recordSize:[I
    check-cast v8, [I

    .line 201
    .restart local v8       #recordSize:[I
    array-length v1, v8

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    const/4 v1, 0x2

    aget v1, v8, v1

    if-le p6, v1, :cond_6

    .line 202
    :cond_5
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in updateAdnEF, recordSize.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "extRecId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordSize[2]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v8, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_6
    const/4 v1, 0x0

    aget v1, v8, v1

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildEXT1String(I)[B

    move-result-object v4

    .line 207
    if-nez v4, :cond_7

    .line 208
    const-string v1, "RIL_AdnRecordLoader"

    const-string v2, "in updateAdnEF, data == null,1"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "worong ADN format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move v2, p4

    move v3, p6

    move-object/from16 v5, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 215
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public updateAnrEF(Ljava/util/Map;Lcom/android/internal/telephony/uicc/AdnRecord;IIIIILjava/lang/String;ILandroid/os/Message;)V
    .locals 9
    .parameter
    .parameter "adn"
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "anradnNumber"
    .parameter "sfi"
    .parameter "pin2"
    .parameter "anrExtRecId"
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[I>;",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            "IIIII",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 309
    .local p1, recordSizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[I>;"
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 314
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 316
    .local v8, recordSizeAnr:[I
    array-length v1, v8

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget v1, v8, v1

    if-le p5, v1, :cond_2

    .line 317
    :cond_0
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in updateAnrEF, recordSize.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordSize[2]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v8, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .end local v8           #recordSizeAnr:[I
    :catch_0
    move-exception v7

    .line 351
    .local v7, exc:Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 352
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 354
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 357
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 360
    .end local v7           #exc:Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void

    .line 321
    .restart local v8       #recordSizeAnr:[I
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    aget v2, v8, v1

    move-object v1, p2

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p9

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildAnrString(IIIII)[B

    move-result-object v4

    .line 322
    .local v4, data:[B
    if-nez v4, :cond_3

    .line 323
    const-string v1, "RIL_AdnRecordLoader"

    const-string v2, "in updateAnrEF, data == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "wrong ADN format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 327
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move v2, p3

    move v3, p5

    move-object/from16 v5, p8

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 329
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I

    .line 332
    const/16 v1, 0xff

    move/from16 v0, p9

    if-ne v0, v1, :cond_4

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    .line 333
    :cond_4
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #recordSizeAnr:[I
    check-cast v8, [I

    .line 334
    .restart local v8       #recordSizeAnr:[I
    array-length v1, v8

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    const/4 v1, 0x2

    aget v1, v8, v1

    move/from16 v0, p9

    if-le v0, v1, :cond_6

    .line 335
    :cond_5
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in updateAnrEF, recordSize.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "anrExtRecId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordSizeAnr[2]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v8, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 339
    :cond_6
    const/4 v1, 0x0

    aget v1, v8, v1

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildAnrEXT1String(I)[B

    move-result-object v4

    .line 340
    if-nez v4, :cond_7

    .line 341
    const-string v1, "RIL_AdnRecordLoader"

    const-string v2, "in updateAnrEF, data == null,1"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "wrong ADN format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 345
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move v2, p4

    move/from16 v3, p9

    move-object/from16 v5, p8

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 348
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "adn"
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 161
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->ef:I

    .line 162
    iput p3, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->extensionEF:I

    .line 163
    iput p4, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->recordNumber:I

    .line 164
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 165
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pin2:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 169
    return-void
.end method

.method public updateEmailEF(Ljava/util/Map;Lcom/android/internal/telephony/uicc/AdnRecord;IIIILjava/lang/String;Landroid/os/Message;)V
    .locals 9
    .parameter
    .parameter "adn"
    .parameter "ef"
    .parameter "recordNumber"
    .parameter "EmailadnNumber"
    .parameter "sfi"
    .parameter "pin2"
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[I>;",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            "IIII",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, recordSizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[I>;"
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 238
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 240
    .local v8, recordSizeEmail:[I
    array-length v1, v8

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget v1, v8, v1

    if-le p4, v1, :cond_2

    .line 241
    :cond_0
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in updateEmailEF, recordSizeEmail.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordSizeEmail[2]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v8, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v8           #recordSizeEmail:[I
    :catch_0
    move-exception v7

    .line 256
    .local v7, exc:Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 259
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 262
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 265
    .end local v7           #exc:Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void

    .line 245
    .restart local v8       #recordSizeEmail:[I
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    aget v1, v8, v1

    invoke-virtual {p2, v1, p4, p5, p6}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildEmailString(IIII)[B

    move-result-object v4

    .line 246
    .local v4, data:[B
    if-nez v4, :cond_3

    .line 247
    const-string v1, "RIL_AdnRecordLoader"

    const-string v2, "in updateEmailEF, data == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "worong ADN format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move v2, p3

    move v3, p4

    move-object/from16 v5, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 254
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public updateIapEF(Ljava/util/Map;Lcom/android/internal/telephony/uicc/AdnRecord;IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 9
    .parameter
    .parameter "adn"
    .parameter "Emailiniap"
    .parameter "Anriniap"
    .parameter "IapforEmail"
    .parameter "IapforAnr"
    .parameter "ef"
    .parameter "recordNumber"
    .parameter "pin2"
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[I>;",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            "IIIIII",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, recordSizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[I>;"
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 275
    :try_start_0
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 277
    .local v8, recordSizeIap:[I
    array-length v1, v8

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget v1, v8, v1

    move/from16 v0, p8

    if-le v0, v1, :cond_2

    .line 278
    :cond_0
    const-string v1, "RIL_AdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in updateIapEF, recordSizeIap.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordSizeIap[2]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v8, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .end local v8           #recordSizeIap:[I
    :catch_0
    move-exception v7

    .line 294
    .local v7, exc:Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 295
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 297
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 300
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 303
    .end local v7           #exc:Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void

    .line 282
    .restart local v8       #recordSizeIap:[I
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    aget v2, v8, v1

    move-object v1, p2

    move v3, p5

    move v4, p6

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildIapString(IIIII)[B

    move-result-object v4

    .line 283
    .local v4, data:[B
    if-nez v4, :cond_3

    .line 284
    const-string v1, "RIL_AdnRecordLoader"

    const-string v2, "in updateIapEF, data == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "worong ADN format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move/from16 v2, p7

    move/from16 v3, p8

    move-object/from16 v5, p9

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 291
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->pendingExtLoads:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
