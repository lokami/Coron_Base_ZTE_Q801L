.class public final Lcom/android/internal/telephony/uicc/AdnRecordCache;
.super Landroid/os/Handler;
.source "AdnRecordCache.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final EVENT_LOAD_ALL_ADN_LIKE_DONE:I = 0x1

.field static final EVENT_LOAD_EF_FILE_RECORD_SIZE_DONE:I = 0x7

.field static final EVENT_UPDATE_ADN_DONE:I = 0x2

.field static final EVENT_UPDATE_ANR_DONE:I = 0x5

.field static final EVENT_UPDATE_EMAIL_DONE:I = 0x3

.field static final EVENT_UPDATE_IAP_DONE:I = 0x6

.field static final LOG_TAG:Ljava/lang/String; = "RIL_AdnRecordCache"

.field public static mExt1RecMaxSize:I


# instance fields
.field public final adnExt1_Index:I

.field public adnLikeFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field adnLikeWaiters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field public final adn_Index:I

.field public final anrExt1_Index:I

.field anrLikeWaiters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field public final anr_Index:I

.field public final email_Index:I

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mLock:Ljava/lang/Object;

.field public mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

.field pbrIndex:I

.field public final pbr_Index:I

.field protected recordSize:[I

.field userWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mExt1RecMaxSize:I

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 2
    .parameter "fh"

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 54
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->pbrIndex:I

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    .line 70
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->anrLikeWaiters:Landroid/util/SparseArray;

    .line 75
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    .line 91
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adn_Index:I

    .line 92
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnExt1_Index:I

    .line 93
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->anrExt1_Index:I

    .line 94
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->email_Index:I

    .line 95
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->anr_Index:I

    .line 96
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->pbr_Index:I

    .line 104
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 105
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    .line 106
    return-void
.end method

.method private clearUserWriters()V
    .locals 4

    .prologue
    .line 133
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 134
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 135
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    const-string v3, "AdnCace reset"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 138
    return-void
.end method

.method private clearWaiters()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 123
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 124
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 125
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 126
    .local v3, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "AdnCache reset"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6, v6, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 127
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 130
    return-void
.end method

.method private getEfFileRecordSizeAndWait(I)V
    .locals 6
    .parameter "fileId"

    .prologue
    .line 1105
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfRecordSize()Ljava/util/Map;

    move-result-object v2

    .line 1106
    .local v2, recordSizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[I>;"
    const/4 v1, 0x0

    .line 1108
    .local v1, recordSize:[I
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " contact framework , in getEfFileRecordSizeAndWait, fileId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 1111
    :cond_0
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " contact framework , in getEfFileRecordSizeAndWait, error, recordSizeMap = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :goto_0
    return-void

    .line 1115
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #recordSize:[I
    check-cast v1, [I

    .line 1116
    .restart local v1       #recordSize:[I
    if-eqz v1, :cond_2

    .line 1117
    const-string v3, "RIL_AdnRecordCache"

    const-string v4, " contact framework , in getEfFileRecordSizeAndWait, recordSize != null,means that the recordSize of this file has been loaded before"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1120
    :cond_2
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " contact framework ,in getEfFileRecordSizeAndWait,fileId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",will mFh.getEFLinearRecordSize,EVENT_LOAD_EF_FILE_RECORD_SIZE_DONE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-virtual {p0, v4, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 1123
    :try_start_0
    const-string v3, "RIL_AdnRecordCache"

    const-string v4, " contact framework ,in getEfFileRecordSizeAndWait,will mLock.wait()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1125
    :catch_0
    move-exception v0

    .line 1126
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Interrupted Exception in getEfFileRecordSizeAndWait,fileId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getpbrNumbers()I
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getpbrNumbers()I

    move-result v0

    return v0
.end method

.method private isANRSpaceFullInCurPhonebook(I)Z
    .locals 9
    .parameter "pbrIndex"

    .prologue
    .line 1617
    const/4 v5, 0x1

    .line 1618
    .local v5, isFull:Z
    const-string v6, "RIL_AdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isANRSpaceFullInCurPhonebook mUsimPhoneBookManager.isSupportANR() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v8, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportANR(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    const-string v6, "RIL_AdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isANRSpaceFullInCurPhonebook mUsimPhoneBookManager.isANRTYP2() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isANRTYP2()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1620
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isANRTYP2()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1622
    const/4 v2, 0x0

    .line 1623
    .local v2, anrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    const/4 v3, 0x0

    .line 1625
    .local v3, anrListSize:I
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getanrlist(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1626
    if-eqz v2, :cond_0

    .line 1628
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1630
    :cond_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 1632
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 1633
    .local v1, anrAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrIndex()I

    move-result v0

    .line 1634
    .local v0, adnAnrRecNum:I
    const/16 v6, 0xff

    if-eq v0, v6, :cond_1

    if-gtz v0, :cond_3

    .line 1636
    :cond_1
    const/4 v5, 0x0

    .line 1646
    .end local v0           #adnAnrRecNum:I
    .end local v1           #anrAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v2           #anrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v3           #anrListSize:I
    .end local v4           #i:I
    :cond_2
    :goto_1
    const-string v6, "RIL_AdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isANRSpaceFullInCurPhonebook isFull = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    return v5

    .line 1630
    .restart local v0       #adnAnrRecNum:I
    .restart local v1       #anrAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v2       #anrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .restart local v3       #anrListSize:I
    .restart local v4       #i:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1643
    .end local v0           #adnAnrRecNum:I
    .end local v1           #anrAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v2           #anrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v3           #anrListSize:I
    .end local v4           #i:I
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isAdnFileFull(Ljava/util/ArrayList;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1600
    .local p1, adnlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    const/4 v1, 0x1

    .line 1602
    .local v1, isFull:Z
    if-eqz p1, :cond_0

    .line 1603
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1604
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 1605
    .local v2, rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1607
    const/4 v1, 0x0

    .line 1612
    .end local v0           #i:I
    .end local v2           #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_0
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAdnFileFull, isFull = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    return v1

    .line 1603
    .restart local v0       #i:I
    .restart local v2       #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isEmailSpaceFullInCurPhonebook(I)Z
    .locals 9
    .parameter "pbrIndex"

    .prologue
    .line 1651
    const/4 v5, 0x1

    .line 1653
    .local v5, isFull:Z
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-static {}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1655
    const/4 v1, 0x0

    .line 1656
    .local v1, emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    const/4 v2, 0x0

    .line 1658
    .local v2, emailListSize:I
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v6, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getemaillist(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1659
    if-eqz v1, :cond_0

    .line 1661
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1663
    :cond_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 1665
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 1666
    .local v0, emailAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/String;

    .line 1667
    .local v3, emails:[Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    .line 1668
    if-eqz v3, :cond_1

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 1670
    :cond_1
    const/4 v5, 0x0

    .line 1680
    .end local v0           #emailAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v1           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v2           #emailListSize:I
    .end local v3           #emails:[Ljava/lang/String;
    .end local v4           #i:I
    :cond_2
    :goto_1
    const-string v6, "RIL_AdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isEmailSpaceFullInCurPhonebook isFull = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    return v5

    .line 1663
    .restart local v0       #emailAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v1       #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .restart local v2       #emailListSize:I
    .restart local v3       #emails:[Ljava/lang/String;
    .restart local v4       #i:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1677
    .end local v0           #emailAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v1           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v2           #emailListSize:I
    .end local v3           #emails:[Ljava/lang/String;
    .end local v4           #i:I
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 5
    .parameter
    .parameter "ar"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1221
    .local p1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-nez p1, :cond_1

    .line 1231
    :cond_0
    return-void

    .line 1225
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, s:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1226
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 1228
    .local v2, waiter:Landroid/os/Message;
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1229
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .parameter "response"
    .parameter "errString"

    .prologue
    .line 173
    if-eqz p1, :cond_0

    .line 174
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 176
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 178
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method public GetAnriniap()I
    .locals 4

    .prologue
    .line 1039
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnriniap()I

    move-result v0

    .line 1040
    .local v0, Anriniap:I
    const-string v1, "RIL_AdnRecordCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetAnriniap Anriniap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    return v0
.end method

.method public GetEmailiniap()I
    .locals 4

    .prologue
    .line 1012
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailiniap()I

    move-result v0

    .line 1013
    .local v0, Emailiniap:I
    const-string v1, "RIL_AdnRecordCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetEmailiniap Emailiniap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    return v0
.end method

.method public extensionEfForEf(I)I
    .locals 1
    .parameter "efid"

    .prologue
    .line 161
    sparse-switch p1, :sswitch_data_0

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEXT1efid()I

    move-result v0

    :goto_0
    return v0

    .line 162
    :sswitch_0
    const/16 v0, 0x6fc8

    goto :goto_0

    .line 163
    :sswitch_1
    const/16 v0, 0x6f4a

    goto :goto_0

    .line 164
    :sswitch_2
    const/16 v0, 0x6f4c

    goto :goto_0

    .line 165
    :sswitch_3
    const/16 v0, 0x6f4b

    goto :goto_0

    .line 166
    :sswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 161
    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_4
        0x6f3a -> :sswitch_1
        0x6f3b -> :sswitch_3
        0x6f49 -> :sswitch_2
        0x6fc7 -> :sswitch_0
    .end sparse-switch
.end method

.method public getEfFileRecordSize(II)V
    .locals 6
    .parameter "fileId"
    .parameter "extFileId"

    .prologue
    .line 1087
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1088
    :try_start_0
    const-string v2, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " contact framework , in getEfFileRecordSize, fileId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getEfFileRecordSizeAndWait(I)V

    .line 1090
    const-string v2, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " contact framework , in getEfFileRecordSize, extFileId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getEfFileRecordSizeAndWait(I)V

    .line 1093
    sget v2, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mExt1RecMaxSize:I

    if-nez v2, :cond_0

    .line 1095
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfRecordSize()Ljava/util/Map;

    move-result-object v1

    .line 1096
    .local v1, recordSizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[I>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1097
    .local v0, ext1Size:[I
    const/4 v2, 0x2

    aget v2, v0, v2

    sput v2, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mExt1RecMaxSize:I

    .line 1100
    .end local v0           #ext1Size:[I
    .end local v1           #recordSizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[I>;"
    :cond_0
    const-string v2, "RIL_AdnRecordCache"

    const-string v4, " contact framework , in getEfFileRecordSize, end"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    monitor-exit v3

    .line 1102
    return-void

    .line 1101
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getRecordsIfLoaded(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "efid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 25
    .parameter "msg"

    .prologue
    .line 1244
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 1393
    :goto_0
    :pswitch_0
    return-void

    .line 1247
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1248
    .local v9, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 1250
    .local v10, efId:I
    const-string v22, "RIL_AdnRecordCache"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " contact framework ,got EVENT_LOAD_EF_FILE_RECORD_SIZE_DONE efId = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ",ar.exception = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v22, :cond_0

    .line 1254
    :try_start_1
    iget-object v0, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [I

    move-object/from16 v0, v22

    check-cast v0, [I

    move-object/from16 v18, v0

    .line 1255
    .local v18, recordSize:[I
    const-string v22, "AdnRecordCache"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "got EVENT_LOAD_EF_FILE_RECORD_SIZE_DONE,recordSize[0]="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x0

    aget v24, v18, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    const-string v22, "AdnRecordCache"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "got EVENT_LOAD_EF_FILE_RECORD_SIZE_DONE,recordSize[1]="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x1

    aget v24, v18, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    const-string v22, "AdnRecordCache"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "got EVENT_LOAD_EF_FILE_RECORD_SIZE_DONE,recordSize[2]="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x2

    aget v24, v18, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfRecordSize()Ljava/util/Map;

    move-result-object v19

    .line 1259
    .local v19, recordSizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[I>;"
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1264
    .end local v18           #recordSize:[I
    .end local v19           #recordSizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[I>;"
    :cond_0
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1265
    :try_start_3
    const-string v22, "RIL_AdnRecordCache"

    const-string v24, " contact framework ,handle EVENT_LOAD_EF_FILE_RECORD_SIZE_DONE, will mLock.notify()"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mLock:Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notify()V

    .line 1267
    monitor-exit v23

    goto/16 :goto_0

    :catchall_0
    move-exception v22

    monitor-exit v23
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v22
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1389
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v10           #efId:I
    :catch_0
    move-exception v13

    .line 1390
    .local v13, ex:Ljava/lang/Exception;
    const-string v22, "RIL_AdnRecordCache"

    const-string v23, "adncache Exception"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1260
    .end local v13           #ex:Ljava/lang/Exception;
    .restart local v9       #ar:Landroid/os/AsyncResult;
    .restart local v10       #efId:I
    :catch_1
    move-exception v13

    .line 1261
    .restart local v13       #ex:Ljava/lang/Exception;
    :try_start_5
    const-string v22, "RIL_AdnRecordCache"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "got EVENT_LOAD_EF_FILE_RECORD_SIZE_DONE Exception  = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1273
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v10           #efId:I
    .end local v13           #ex:Ljava/lang/Exception;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1274
    .restart local v9       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 1277
    .local v11, efid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/ArrayList;

    .line 1278
    .local v21, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->delete(I)V

    .line 1280
    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    iget-object v0, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/util/ArrayList;

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1283
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1317
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v11           #efid:I
    .end local v21           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1318
    .restart local v9       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 1319
    .restart local v11       #efid:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v17, v0

    .line 1320
    .local v17, index:I
    iget-object v0, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, v22

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v7, v0

    .line 1322
    .local v7, adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_4

    .line 1324
    const/16 v22, 0x6f3a

    move/from16 v0, v22

    if-eq v11, v0, :cond_2

    const/16 v22, 0x6f3b

    move/from16 v0, v22

    if-ne v11, v0, :cond_5

    .line 1325
    :cond_2
    const/16 v22, 0x6f3b

    move/from16 v0, v22

    if-ne v11, v0, :cond_3

    .line 1326
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_3

    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 1328
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    add-int/lit8 v23, v17, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1334
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/Message;

    .line 1335
    .local v20, response:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->delete(I)V

    .line 1337
    const/16 v22, 0x0

    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1338
    invoke-virtual/range {v20 .. v20}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1330
    .end local v20           #response:Landroid/os/Message;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->pbrIndex:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getadnlist(I)Ljava/util/ArrayList;

    move-result-object v22

    add-int/lit8 v23, v17, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1342
    .end local v7           #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v11           #efid:I
    .end local v17           #index:I
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1343
    .restart local v9       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 1344
    .restart local v11       #efid:I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    .line 1345
    .local v3, Anrnumber:I
    iget-object v0, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, v22

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v8, v0

    .line 1346
    .local v8, anradn:Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_6

    .line 1347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->pbrIndex:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getanrlist(I)Ljava/util/ArrayList;

    move-result-object v22

    add-int/lit8 v23, v3, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1349
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 1350
    .local v6, Response:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->delete(I)V

    .line 1352
    const/16 v22, 0x0

    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v6, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1353
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1357
    .end local v3           #Anrnumber:I
    .end local v6           #Response:Landroid/os/Message;
    .end local v8           #anradn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v11           #efid:I
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1358
    .restart local v9       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 1359
    .restart local v11       #efid:I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    .line 1360
    .local v4, Emailrecnmber:I
    iget-object v0, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, v22

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v12, v0

    .line 1361
    .local v12, emailadn:Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_7

    .line 1362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->pbrIndex:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getemaillist(I)Ljava/util/ArrayList;

    move-result-object v22

    add-int/lit8 v23, v4, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v12}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1364
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Message;

    .line 1365
    .local v5, REsponse:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->delete(I)V

    .line 1367
    const/16 v22, 0x0

    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v5, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1368
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1373
    .end local v4           #Emailrecnmber:I
    .end local v5           #REsponse:Landroid/os/Message;
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v11           #efid:I
    .end local v12           #emailadn:Lcom/android/internal/telephony/uicc/AdnRecord;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1374
    .restart local v9       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 1375
    .restart local v11       #efid:I
    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg2:I

    .line 1376
    .local v15, iaprecnmber:I
    iget-object v0, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    move-object/from16 v0, v22

    check-cast v0, [B

    move-object v14, v0

    .line 1377
    .local v14, iap:[B
    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_8

    .line 1378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->pbrIndex:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getiaplist(I)Ljava/util/ArrayList;

    move-result-object v22

    add-int/lit8 v23, v15, -0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v1, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1380
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Message;

    .line 1381
    .local v16, iapresponse:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->delete(I)V

    .line 1383
    const/16 v22, 0x0

    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1384
    invoke-virtual/range {v16 .. v16}, Landroid/os/Message;->sendToTarget()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 1244
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method

.method public requestAdnSize(I)I
    .locals 6
    .parameter "efid"

    .prologue
    .line 1512
    const/4 v0, 0x0

    .line 1513
    .local v0, curSimSize:I
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1514
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1515
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 1516
    .local v2, rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1517
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1514
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1520
    .end local v1           #i:I
    .end local v2           #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_2
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestAdnSize cursimsize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1521
    return v0
.end method

.method public requestAdnTotalSize(I)I
    .locals 4
    .parameter "efid"

    .prologue
    .line 1503
    const/4 v0, 0x0

    .line 1504
    .local v0, simTotalNumbers:I
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1505
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1507
    :cond_0
    const-string v1, "RIL_AdnRecordCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestAdnTotalSize ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    return v0
.end method

.method public requestEXT1Size(I)I
    .locals 6
    .parameter "efid"

    .prologue
    const/16 v4, 0xff

    .line 1484
    const/4 v2, 0x0

    .line 1485
    .local v2, temp:I
    const/4 v1, 0x0

    .line 1486
    .local v1, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    const/16 v3, 0x6f3a

    if-ne p1, v3, :cond_2

    .line 1487
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1491
    :goto_0
    if-eqz v1, :cond_3

    .line 1492
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1493
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtNumber()I

    move-result v3

    if-eq v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 1494
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v3

    if-eq v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 1492
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1489
    .end local v0           #i:I
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 1497
    :cond_3
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestEXT1Size ext1 current size ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    return v2
.end method

.method public requestGetAdnFileld(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAdnFileld(I)I

    move-result v0

    return v0
.end method

.method public requestGetAllAdnFileld()[I
    .locals 1

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAllAdnFileId()[I

    move-result-object v0

    return-object v0
.end method

.method public requestGetAllAnrFileld()[I
    .locals 1

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAllAnrFileId()[I

    move-result-object v0

    return-object v0
.end method

.method public requestGetAllEmailFileld()[I
    .locals 1

    .prologue
    .line 1455
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAllEmailFileId()[I

    move-result-object v0

    return-object v0
.end method

.method public requestGetAllExt1Fileld()[I
    .locals 1

    .prologue
    .line 1465
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAllExt1Fileld()[I

    move-result-object v0

    return-object v0
.end method

.method public requestGetAllIapFileld()[I
    .locals 1

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAllIapFileId()[I

    move-result-object v0

    return-object v0
.end method

.method public requestGetAllSfiFileld()[I
    .locals 1

    .prologue
    .line 1470
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAllSfiFileId()[I

    move-result-object v0

    return-object v0
.end method

.method public requestGetAnrFileld(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrFileId(I)I

    move-result v0

    return v0
.end method

.method public requestGetEmailFileld(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailFileId(I)I

    move-result v0

    return v0
.end method

.method public requestGetExt1Fileld(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getExt1Fileld(I)I

    move-result v0

    return v0
.end method

.method public requestGetIapFileld(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1430
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getIapFileId(I)I

    move-result v0

    return v0
.end method

.method public requestGetSfiFileld(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSfiFileld(I)I

    move-result v0

    return v0
.end method

.method public requestIsANRTYP2()Z
    .locals 1

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isANRTYP2()Z

    move-result v0

    return v0
.end method

.method public requestIsEMAILTYP2()Z
    .locals 1

    .prologue
    .line 1401
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-static {}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v0

    return v0
.end method

.method public requestIsSupANR(I)Z
    .locals 1
    .parameter "pbrindex"

    .prologue
    .line 1407
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportANR(I)Z

    move-result v0

    return v0
.end method

.method public requestIsSupEmail(I)Z
    .locals 1
    .parameter "pbrindex"

    .prologue
    .line 1411
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportEmail(I)Z

    move-result v0

    return v0
.end method

.method public requestIsSupIAP(I)Z
    .locals 1
    .parameter "pbrindex"

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-static {p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportIAP(I)Z

    move-result v0

    return v0
.end method

.method public requestLoadAllAdnLike(IILandroid/os/Message;)V
    .locals 6
    .parameter "efid"
    .parameter "extensionEf"
    .parameter "response"

    .prologue
    const/16 v4, 0x4f30

    .line 1141
    if-ne p1, v4, :cond_2

    .line 1142
    const-string v2, "RIL_AdnRecordCache"

    const-string v3, "wzf-requestLoadAllAdnLike-(efid == EF_PBR)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v0

    .line 1150
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_0
    if-eqz v0, :cond_3

    .line 1151
    if-eqz p3, :cond_0

    .line 1152
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1153
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1155
    :cond_0
    const-string v2, "RIL_AdnRecordCache"

    const-string v3, "wzf-requestLoadAllAdnLike-(result != null)-we have already loaded this efid-return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    :cond_1
    :goto_1
    return-void

    .line 1145
    .end local v0           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_2
    const-string v2, "RIL_AdnRecordCache"

    const-string v3, "wzf-requestLoadAllAdnLike-(efid == EF_ADN)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v0

    .restart local v0       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    goto :goto_0

    .line 1160
    :cond_3
    if-nez v0, :cond_4

    if-ne p1, v4, :cond_4

    .line 1162
    const-string v2, "RIL_AdnRecordCache"

    const-string v3, "wzf-requestLoadAllAdnLike-(result == null && efid == EF_PBR)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    const/16 p1, 0x6f3a

    .line 1164
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result p2

    .line 1170
    :cond_4
    const-string v2, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wzf-requestLoadAllAdnLike-efid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1173
    .local v1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-eqz v1, :cond_5

    .line 1176
    const-string v2, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wzf-(waiters != null)-requestLoadAllAdnLike-There\'s a pending request for this EF already-we have already *started* loading this efid-waiters.size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1178
    const-string v2, "RIL_AdnRecordCache"

    const-string v3, "wzf-(waiters != null)-requestLoadAllAdnLike-waiters.add(response)-return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1183
    :cond_5
    const-string v2, "RIL_AdnRecordCache"

    const-string v3, "wzf-requestLoadAllAdnLike-(waiters== null)-Start loading efid"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1185
    .restart local v1       #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1187
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1190
    if-gez p2, :cond_6

    .line 1193
    if-eqz p3, :cond_1

    .line 1194
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF is not known ADN-like EF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1196
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 1202
    :cond_6
    const/16 v2, 0x6f3a

    if-ne p1, v2, :cond_7

    .line 1204
    const-string v2, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " wzf-requestLoadAllAdnLike,will getEfFileRecordSize,efid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getEfFileRecordSize(II)V

    .line 1211
    :cond_7
    const-string v2, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " contact framework ,in requestLoadAllAdnLike,will AdnRecordLoader(mFh).loadAllFromEF,efid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",extensionEf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    goto/16 :goto_1
.end method

.method public requestPbrFileld()I
    .locals 1

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getUsimRecordSize()I

    move-result v0

    return v0
.end method

.method public requestUsimAdnSize()I
    .locals 1

    .prologue
    .line 1525
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadUsimRecord()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1526
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadUsimRecord()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->reset()V

    .line 117
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->clearWaiters()V

    .line 118
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->clearUserWriters()V

    .line 120
    return-void
.end method

.method public searchANRSpaceWithSrecid(Ljava/lang/String;)Z
    .locals 3
    .parameter "srecid"

    .prologue
    .line 1558
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1559
    .local v1, recid:[B
    const/4 v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v2, -0x1

    .line 1562
    .local v0, pbrIndex:I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->isANRSpaceFullInCurPhonebook(I)Z

    move-result v2

    return v2
.end method

.method public searchANRSpaceWithoutSrecid()Z
    .locals 5

    .prologue
    .line 1532
    const/4 v2, 0x0

    .line 1533
    .local v2, pbrIndex:I
    const/4 v3, -0x1

    .line 1534
    .local v3, pbrNumbers:I
    const/4 v0, -0x1

    .line 1535
    .local v0, adnEfid:I
    const/4 v1, 0x0

    .line 1538
    .local v1, adnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getpbrNumbers()I

    move-result v3

    .line 1539
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1540
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getadnlist(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1541
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->isAdnFileFull(Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1547
    :cond_0
    if-ne v2, v3, :cond_2

    .line 1549
    const/4 v4, 0x1

    .line 1553
    :goto_1
    return v4

    .line 1539
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1553
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->isANRSpaceFullInCurPhonebook(I)Z

    move-result v4

    goto :goto_1
.end method

.method public searchAdnIndex(ILcom/android/internal/telephony/uicc/AdnRecord;I)I
    .locals 10
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "pbrIndex"

    .prologue
    const/16 v9, 0x6f3b

    const/4 v6, -0x1

    .line 598
    const-string v5, "RIL_AdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "searchAdnIndex efid= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "pbrIndex=  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const/16 v5, 0x6f3a

    if-eq p1, v5, :cond_0

    if-ne p1, v9, :cond_3

    .line 601
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 616
    .local v4, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_1
    :goto_0
    if-nez v4, :cond_4

    .line 618
    const-string v5, "RIL_AdnRecordCache"

    const-string v7, "searchAdnIndex oldAdnList is null "

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 650
    :cond_2
    :goto_1
    return v1

    .line 605
    .end local v4           #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v5, p3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getadnlist(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 607
    .restart local v4       #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    if-nez v4, :cond_1

    .line 609
    const-string v5, "RIL_AdnRecordCache"

    const-string v7, "wzf-searchAdnIndex-(efid == EF_PBR)&(oldAdnList == null)"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    const/16 p1, 0x6f3a

    .line 611
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v4

    goto :goto_0

    .line 621
    :cond_4
    const/4 v1, -0x1

    .line 622
    .local v1, index:I
    const/4 v0, 0x1

    .line 623
    .local v0, count:I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 625
    if-ne p1, v9, :cond_6

    .line 627
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->isFDNEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 629
    move v1, v0

    .line 644
    :cond_5
    :goto_3
    const-string v5, "RIL_AdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "searchAdnIndex index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    if-ne v1, v6, :cond_2

    .line 647
    const-string v5, "RIL_AdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "searchAdnIndex Adn record don\'t exist for oldAdn = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 648
    goto :goto_1

    .line 635
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 637
    .local v3, itoldadn:Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 638
    move v1, v0

    .line 639
    goto :goto_3

    .line 642
    .end local v3           #itoldadn:Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public searchEmailSpaceWithSrecid(Ljava/lang/String;)Z
    .locals 3
    .parameter "srecid"

    .prologue
    .line 1592
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1593
    .local v1, recid:[B
    const/4 v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v2, -0x1

    .line 1596
    .local v0, pbrIndex:I
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->isEmailSpaceFullInCurPhonebook(I)Z

    move-result v2

    return v2
.end method

.method public searchEmailSpaceWithoutSrecid()Z
    .locals 5

    .prologue
    .line 1566
    const/4 v2, 0x0

    .line 1567
    .local v2, pbrIndex:I
    const/4 v3, -0x1

    .line 1568
    .local v3, pbrNumbers:I
    const/4 v0, -0x1

    .line 1569
    .local v0, adnEfid:I
    const/4 v1, 0x0

    .line 1572
    .local v1, adnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getpbrNumbers()I

    move-result v3

    .line 1573
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1574
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getadnlist(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1575
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->isAdnFileFull(Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1581
    :cond_0
    if-ne v2, v3, :cond_2

    .line 1583
    const/4 v4, 0x1

    .line 1587
    :goto_1
    return v4

    .line 1573
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1587
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->isEmailSpaceFullInCurPhonebook(I)Z

    move-result v4

    goto :goto_1
.end method

.method public searchExt1Index(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;[II)[I
    .locals 15
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "index"
    .parameter "extsize"

    .prologue
    .line 494
    const/4 v9, 0x0

    .line 495
    .local v9, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    const/4 v11, 0x0

    .line 497
    .local v11, oldAnrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    .line 499
    .local v4, extensionEF:I
    const/4 v3, 0x0

    .line 500
    .local v3, extCount:I
    const/4 v12, 0x1

    const/16 v13, 0xff

    aput v13, p4, v12

    .line 501
    const/4 v12, 0x2

    const/16 v13, 0xff

    aput v13, p4, v12

    .line 502
    const/4 v8, 0x0

    .line 503
    .local v8, oldAdnHasEXT1:Z
    const/4 v10, 0x0

    .line 504
    .local v10, oldAnrHasEXT1:Z
    const/4 v7, 0x0

    .line 505
    .local v7, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-gez v4, :cond_1

    .line 506
    const-string v12, "RIL_AdnRecordCache"

    const-string v13, "ext1 is not exist"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_0
    :goto_0
    return-object p4

    .line 509
    :cond_1
    if-lez p5, :cond_0

    .line 510
    add-int/lit8 v3, p5, 0x1

    .line 511
    const-string v12, "RIL_AdnRecordCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "searchExt1Index extsize "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    new-array v5, v3, [I

    .line 517
    .local v5, extnumber:[I
    const/16 v12, 0x6f3a

    move/from16 v0, p1

    if-ne v0, v12, :cond_2

    .line 518
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v9

    .line 525
    :goto_1
    if-nez v9, :cond_3

    .line 526
    const/4 v12, 0x1

    const/4 v13, -0x1

    aput v13, p4, v12

    goto :goto_0

    .line 520
    :cond_2
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    const/4 v13, 0x5

    aget v13, p4, v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getadnlist(I)Ljava/util/ArrayList;

    move-result-object v9

    .line 521
    iget-object v12, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    const/4 v13, 0x5

    aget v13, p4, v13

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getanrlist(I)Ljava/util/ArrayList;

    move-result-object v11

    goto :goto_1

    .line 529
    :cond_3
    const/4 v12, 0x4

    aget v12, p4, v12

    const/16 v13, 0xff

    if-eq v12, v13, :cond_4

    const/4 v12, 0x4

    aget v12, p4, v12

    if-lez v12, :cond_4

    if-nez v11, :cond_4

    .line 530
    const/4 v12, 0x1

    const/4 v13, -0x1

    aput v13, p4, v12

    goto :goto_0

    .line 534
    :cond_4
    const/4 v12, 0x0

    aget v12, p4, v12

    const/16 v13, 0xff

    if-eq v12, v13, :cond_5

    const/4 v12, 0x0

    aget v12, p4, v12

    if-lez v12, :cond_5

    const/4 v13, 0x1

    const/4 v12, 0x0

    aget v12, p4, v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtNumber()I

    move-result v12

    aput v12, p4, v13

    .line 535
    :cond_5
    const/4 v12, 0x1

    aget v12, p4, v12

    const/16 v13, 0xff

    if-eq v12, v13, :cond_6

    const/4 v12, 0x1

    aget v12, p4, v12

    if-lez v12, :cond_6

    .line 536
    const-string v12, "RIL_AdnRecordCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "searchExt1Index adn update ext1 index[adnExt1_Index] = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    aget v14, p4, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const/4 v8, 0x1

    .line 538
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x14

    if-ge v12, v13, :cond_6

    const/4 v12, 0x0

    aget v12, p4, v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/AdnRecord;

    const/16 v13, 0xff

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->setExtNumber(I)V

    .line 541
    :cond_6
    const/4 v12, 0x4

    aget v12, p4, v12

    const/16 v13, 0xff

    if-eq v12, v13, :cond_7

    const/4 v12, 0x4

    aget v12, p4, v12

    if-lez v12, :cond_7

    if-eqz v11, :cond_7

    const/4 v13, 0x2

    const/4 v12, 0x4

    aget v12, p4, v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v12

    aput v12, p4, v13

    .line 543
    :cond_7
    const/4 v12, 0x2

    aget v12, p4, v12

    const/16 v13, 0xff

    if-eq v12, v13, :cond_8

    const/4 v12, 0x2

    aget v12, p4, v12

    if-lez v12, :cond_8

    .line 544
    const-string v12, "RIL_AdnRecordCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "searchExt1Index anr update ext1 index[anrExt1_Index] = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x2

    aget v14, p4, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 v10, 0x1

    .line 546
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x14

    if-ge v12, v13, :cond_8

    const/4 v12, 0x4

    aget v12, p4, v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/AdnRecord;

    const/16 v13, 0xff

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnrExtNumber(I)V

    .line 549
    :cond_8
    if-nez v8, :cond_9

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x14

    if-gt v12, v13, :cond_a

    :cond_9
    if-nez v10, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x14

    if-le v12, v13, :cond_0

    .line 550
    :cond_a
    const-string v12, "RIL_AdnRecordCache"

    const-string v13, "searchExt1Index insert ext1"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    if-ge v6, v3, :cond_b

    const/16 v12, 0xff

    aput v12, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 552
    :cond_b
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_d

    .line 553
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtNumber()I

    move-result v1

    .line 554
    .local v1, adntemp:I
    const/16 v12, 0xff

    if-eq v1, v12, :cond_c

    const/4 v12, 0x1

    aput v12, v5, v1

    .line 552
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 556
    .end local v1           #adntemp:I
    :cond_d
    if-eqz v11, :cond_f

    .line 557
    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_f

    .line 558
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v2

    .line 559
    .local v2, anrtemp:I
    const/16 v12, 0xff

    if-eq v2, v12, :cond_e

    const/4 v12, 0x1

    aput v12, v5, v2

    .line 557
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 562
    .end local v2           #anrtemp:I
    :cond_f
    if-nez v8, :cond_12

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x14

    if-le v12, v13, :cond_12

    .line 563
    const/4 v6, 0x1

    :goto_5
    if-ge v6, v3, :cond_10

    .line 564
    aget v12, v5, v6

    const/16 v13, 0xff

    if-ne v12, v13, :cond_11

    .line 565
    aput v6, v5, v6

    .line 566
    const/4 v12, 0x1

    aget v13, v5, v6

    aput v13, p4, v12

    .line 570
    :cond_10
    const-string v12, "RIL_AdnRecordCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "searchExt1Index insert adn ext1 index[adnExt1_Index] ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    aget v14, p4, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v12, 0x1

    aget v12, p4, v12

    const/16 v13, 0xff

    if-ne v12, v13, :cond_12

    .line 572
    const/4 v12, 0x1

    const/4 v13, -0x1

    aput v13, p4, v12

    .line 573
    const-string v12, "RIL_AdnRecordCache"

    const-string v13, "adn ext1 is full"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 563
    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 577
    :cond_12
    if-nez v10, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x14

    if-le v12, v13, :cond_0

    .line 578
    const/4 v6, 0x1

    :goto_6
    if-ge v6, v3, :cond_13

    .line 579
    aget v12, v5, v6

    const/16 v13, 0xff

    if-ne v12, v13, :cond_14

    .line 580
    aput v6, v5, v6

    .line 581
    const/4 v12, 0x2

    aget v13, v5, v6

    aput v13, p4, v12

    .line 585
    :cond_13
    const-string v12, "RIL_AdnRecordCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "searchExt1Index insert adn ext1 index[anrExt1_Index] ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x2

    aget v14, p4, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    const/4 v12, 0x2

    aget v12, p4, v12

    const/16 v13, 0xff

    if-ne v12, v13, :cond_0

    .line 587
    const/4 v12, 0x2

    const/4 v13, -0x1

    aput v13, p4, v12

    .line 588
    const-string v12, "RIL_AdnRecordCache"

    const-string v13, "anr ext1 is full"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 578
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_6
.end method

.method public searchIndex(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;)[I
    .locals 20
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "extsize"
    .parameter "srecid"

    .prologue
    .line 238
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex efid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " srecid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v3, 0x6

    new-array v7, v3, [I

    .line 240
    .local v7, index:[I
    const/4 v3, 0x0

    const/4 v4, -0x1

    aput v4, v7, v3

    .line 241
    const/4 v3, 0x1

    const/4 v4, -0x1

    aput v4, v7, v3

    .line 242
    const/4 v3, 0x2

    const/4 v4, -0x1

    aput v4, v7, v3

    .line 243
    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v7, v3

    .line 244
    const/4 v3, 0x4

    const/4 v4, -0x1

    aput v4, v7, v3

    .line 245
    const/4 v3, 0x5

    const/4 v4, -0x1

    aput v4, v7, v3

    .line 246
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getpbrNumbers()I

    move-result v17

    .line 247
    .local v17, pbnumber:I
    if-nez p5, :cond_0

    const-string p5, ""

    .line 248
    :cond_0
    const-string v3, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 250
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex efid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " srecid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const/16 v3, 0x6f3a

    move/from16 v0, p1

    if-eq v0, v3, :cond_1

    const/16 v3, 0x6f3b

    move/from16 v0, p1

    if-ne v0, v3, :cond_6

    .line 253
    :cond_1
    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v7, v3

    .line 254
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex  index[pbr_Index]  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const/4 v3, 0x0

    const/4 v4, 0x5

    aget v4, v7, v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->searchAdnIndex(ILcom/android/internal/telephony/uicc/AdnRecord;I)I

    move-result v4

    aput v4, v7, v3

    .line 257
    const/4 v3, 0x0

    aget v3, v7, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    move-object v14, v7

    .line 439
    .end local v7           #index:[I
    .local v14, index:[I
    :goto_0
    return-object v14

    .line 262
    .end local v14           #index:[I
    .restart local v7       #index:[I
    :cond_2
    const/16 v3, 0x6f3a

    move/from16 v0, p1

    if-ne v0, v3, :cond_3

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v8, p4

    .line 264
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->searchExt1Index(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;[II)[I

    move-result-object v7

    .line 267
    :cond_3
    const/16 v3, 0x6f3b

    move/from16 v0, p1

    if-ne v0, v3, :cond_4

    .line 269
    const/4 v3, 0x1

    const/16 v4, 0xff

    aput v4, v7, v3

    .line 272
    :cond_4
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex  index[adn_Index] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_5
    :goto_1
    const-string v3, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 362
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex efid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " srecid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-static/range {p5 .. p5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v18

    .line 364
    .local v18, recid:[B
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex recid[0] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-byte v5, v18, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "recid[1] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-byte v5, v18, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-byte v4, v18, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v7, v3

    .line 366
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex index[adn_Index] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const/4 v3, 0x0

    aget v3, v7, v3

    if-gez v3, :cond_15

    .line 368
    const/4 v3, 0x0

    const/4 v4, -0x1

    aput v4, v7, v3

    move-object v14, v7

    .line 369
    .end local v7           #index:[I
    .restart local v14       #index:[I
    goto/16 :goto_0

    .line 276
    .end local v14           #index:[I
    .end local v18           #recid:[B
    .restart local v7       #index:[I
    :cond_6
    const-string v16, ""

    .line 277
    .local v16, oldemail:Ljava/lang/String;
    const-string v19, ""

    .line 278
    .local v19, tag:Ljava/lang/String;
    const-string v15, ""

    .line 279
    .local v15, number:Ljava/lang/String;
    const-string v9, ""

    .line 280
    .local v9, anr:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v16, v3, v4

    .line 281
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v19

    .line 282
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v15

    .line 283
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v9

    .line 285
    :cond_a
    const-string v3, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, ""

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, ""

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 287
    :cond_b
    const-string v3, "RIL_AdnRecordCache"

    const-string v4, "searchIndex for update or delte and srecid is null  "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->searchsrecid(Lcom/android/internal/telephony/uicc/AdnRecord;)Ljava/lang/String;

    move-result-object p5

    .line 289
    const-string v3, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 291
    const/4 v3, 0x0

    const/4 v4, -0x1

    aput v4, v7, v3

    move-object v14, v7

    .line 292
    .end local v7           #index:[I
    .restart local v14       #index:[I
    goto/16 :goto_0

    .line 297
    .end local v14           #index:[I
    .restart local v7       #index:[I
    :cond_c
    const-string v3, "RIL_AdnRecordCache"

    const-string v4, "searchIndex for insert "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    move/from16 v0, v17

    if-ge v12, v0, :cond_d

    .line 300
    const/4 v3, 0x5

    aput v12, v7, v3

    .line 301
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wzf-searchIndex index[pbr_Index] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v3, 0x0

    const/4 v4, 0x5

    aget v4, v7, v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->searchAdnIndex(ILcom/android/internal/telephony/uicc/AdnRecord;I)I

    move-result v4

    aput v4, v7, v3

    .line 303
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wzf-searchIndex index[adn_Index] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 306
    const-string v3, "RIL_AdnRecordCache"

    const-string v4, "wzf-searchIndex-(newAdn.getEmails()!=null) "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v3, 0x5

    aget v3, v7, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestIsSupEmail(I)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-eqz v3, :cond_f

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 309
    const-string v3, "RIL_AdnRecordCache"

    const-string v4, "wzf-searchIndex-Email is Supported ,Email value is valid"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestIsEMAILTYP2()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 312
    const/4 v3, 0x3

    const/4 v4, 0x5

    aget v4, v7, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->searchemailindex(ILcom/android/internal/telephony/uicc/AdnRecord;)I

    move-result v4

    aput v4, v7, v3

    .line 313
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wzf-searchIndex-Email is TYPE2-index[email_Index]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :goto_3
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex index[email_Index] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v3, 0x5

    aget v3, v7, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestIsSupANR(I)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestIsANRTYP2()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 338
    const/4 v3, 0x4

    const/4 v4, 0x5

    aget v4, v7, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->searchanrindex(ILcom/android/internal/telephony/uicc/AdnRecord;)I

    move-result v4

    aput v4, v7, v3

    .line 349
    :goto_4
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex index[anr_Index] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v3, 0x0

    aget v3, v7, v3

    if-lez v3, :cond_13

    const/4 v3, 0x3

    aget v3, v7, v3

    if-lez v3, :cond_13

    const/4 v3, 0x4

    aget v3, v7, v3

    if-lez v3, :cond_13

    .line 352
    :cond_d
    const/4 v3, 0x0

    aget v3, v7, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_14

    move-object v14, v7

    .line 354
    .end local v7           #index:[I
    .restart local v14       #index:[I
    goto/16 :goto_0

    .line 317
    .end local v14           #index:[I
    .restart local v7       #index:[I
    :cond_e
    const/4 v3, 0x3

    const/4 v4, 0x0

    aget v4, v7, v4

    aput v4, v7, v3

    .line 318
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wzf-searchIndex-Email is NOT TYPE2-index[email_Index]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 323
    :cond_f
    const-string v3, "RIL_AdnRecordCache"

    const-string v4, "wzf-searchIndex-NOT(Email is Supported , Email value is valid)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v3, 0x3

    const/16 v4, 0xff

    aput v4, v7, v3

    goto/16 :goto_3

    .line 329
    :cond_10
    const-string v3, "RIL_AdnRecordCache"

    const-string v4, "wzf-searchIndex-(newAdn.getEmails()==null) "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v3, 0x3

    const/16 v4, 0xff

    aput v4, v7, v3

    goto/16 :goto_3

    .line 342
    :cond_11
    const/4 v3, 0x4

    const/4 v4, 0x0

    aget v4, v7, v4

    aput v4, v7, v3

    goto :goto_4

    .line 347
    :cond_12
    const/4 v3, 0x4

    const/16 v4, 0xff

    aput v4, v7, v3

    goto :goto_4

    .line 298
    :cond_13
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    :cond_14
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v8, p4

    .line 356
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->searchExt1Index(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;[II)[I

    move-result-object v7

    goto/16 :goto_1

    .line 371
    .end local v9           #anr:Ljava/lang/String;
    .end local v12           #i:I
    .end local v15           #number:Ljava/lang/String;
    .end local v16           #oldemail:Ljava/lang/String;
    .end local v19           #tag:Ljava/lang/String;
    .restart local v18       #recid:[B
    :cond_15
    const/16 v3, 0x6f3a

    move/from16 v0, p1

    if-eq v0, v3, :cond_16

    const/16 v3, 0x6f3b

    move/from16 v0, p1

    if-ne v0, v3, :cond_19

    .line 372
    :cond_16
    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v7, v3

    .line 373
    const/16 v3, 0x6f3a

    move/from16 v0, p1

    if-ne v0, v3, :cond_17

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->searchExt1Index(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;[II)[I

    move-result-object v7

    .line 374
    :cond_17
    const/16 v3, 0x6f3b

    move/from16 v0, p1

    if-ne v0, v3, :cond_18

    const/4 v3, 0x1

    const/16 v4, 0xff

    aput v4, v7, v3

    .end local v18           #recid:[B
    :cond_18
    :goto_5
    move-object v14, v7

    .line 439
    .end local v7           #index:[I
    .restart local v14       #index:[I
    goto/16 :goto_0

    .line 377
    .end local v14           #index:[I
    .restart local v7       #index:[I
    .restart local v18       #recid:[B
    :cond_19
    const/4 v3, 0x5

    const/4 v4, 0x1

    aget-byte v4, v18, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, -0x1

    aput v4, v7, v3

    .line 379
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex index[pbr_Index] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v13, 0x0

    .line 382
    .local v13, iap:[B
    const/4 v3, 0x5

    aget v3, v7, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestIsSupIAP(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 384
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    const/4 v4, 0x5

    aget v4, v7, v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getiaplist(I)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v7, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #iap:[B
    check-cast v13, [B

    .line 386
    .restart local v13       #iap:[B
    :cond_1a
    const/4 v3, 0x5

    aget v3, v7, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestIsSupEmail(I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestIsEMAILTYP2()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->GetEmailiniap()I

    move-result v11

    .line 389
    .local v11, emailiniap:I
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex emailiniap = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    if-nez v13, :cond_1d

    .line 391
    const-string v3, "RIL_AdnRecordCache"

    const-string v4, "searchIndex email type2 iap is null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v3, 0x3

    const/16 v4, 0xff

    aput v4, v7, v3

    .line 399
    .end local v11           #emailiniap:I
    :goto_6
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x3

    aget v3, v7, v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_1b

    .line 400
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-eqz v3, :cond_1b

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestIsEMAILTYP2()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 402
    const/4 v3, 0x3

    const/4 v4, 0x5

    aget v4, v7, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->searchemailindex(ILcom/android/internal/telephony/uicc/AdnRecord;)I

    move-result v4

    aput v4, v7, v3

    .line 411
    :cond_1b
    :goto_7
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex index[email_Index] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v3, 0x5

    aget v3, v7, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestIsSupANR(I)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestIsANRTYP2()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->GetAnriniap()I

    move-result v10

    .line 415
    .local v10, anrliniap:I
    if-nez v13, :cond_21

    .line 416
    const-string v3, "RIL_AdnRecordCache"

    const-string v4, "searchIndex anr type2 iap is null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/4 v3, 0x4

    const/16 v4, 0xff

    aput v4, v7, v3

    .line 424
    .end local v10           #anrliniap:I
    :goto_8
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1c

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    const/4 v3, 0x4

    aget v3, v7, v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_1c

    .line 425
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestIsANRTYP2()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 426
    const/4 v3, 0x4

    const/4 v4, 0x5

    aget v4, v7, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->searchanrindex(ILcom/android/internal/telephony/uicc/AdnRecord;)I

    move-result v4

    aput v4, v7, v3

    .line 435
    :cond_1c
    :goto_9
    const-string v3, "RIL_AdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex index[anr_Index] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v8, p4

    .line 436
    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->searchExt1Index(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;[II)[I

    move-result-object v7

    goto/16 :goto_5

    .line 394
    .restart local v11       #emailiniap:I
    :cond_1d
    const/4 v3, 0x3

    aget-byte v4, v13, v11

    and-int/lit16 v4, v4, 0xff

    aput v4, v7, v3

    goto/16 :goto_6

    .line 397
    .end local v11           #emailiniap:I
    :cond_1e
    const/4 v3, 0x3

    const/4 v4, 0x0

    aget v4, v7, v4

    aput v4, v7, v3

    goto/16 :goto_6

    .line 404
    :cond_1f
    const/4 v3, 0x3

    const/4 v4, 0x0

    aget v4, v7, v4

    aput v4, v7, v3

    goto/16 :goto_7

    .line 409
    :cond_20
    const/4 v3, 0x3

    const/16 v4, 0xff

    aput v4, v7, v3

    goto/16 :goto_7

    .line 419
    .restart local v10       #anrliniap:I
    :cond_21
    const/4 v3, 0x4

    aget-byte v4, v13, v10

    and-int/lit16 v4, v4, 0xff

    aput v4, v7, v3

    goto :goto_8

    .line 422
    .end local v10           #anrliniap:I
    :cond_22
    const/4 v3, 0x4

    const/4 v4, 0x0

    aget v4, v7, v4

    aput v4, v7, v3

    goto/16 :goto_8

    .line 428
    :cond_23
    const/4 v3, 0x4

    const/4 v4, 0x0

    aget v4, v7, v4

    aput v4, v7, v3

    goto :goto_9

    .line 433
    :cond_24
    const/4 v3, 0x4

    const/16 v4, 0xff

    aput v4, v7, v3

    goto :goto_9
.end method

.method public searchanrindex(ILcom/android/internal/telephony/uicc/AdnRecord;)I
    .locals 8
    .parameter "pbrIndex"
    .parameter "oldAnr"

    .prologue
    .line 1018
    const-string v5, "RIL_AdnRecordCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MY searchanrindex pbrIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    const/4 v2, 0x1

    .line 1020
    .local v2, count:I
    const/4 v0, -0x1

    .line 1022
    .local v0, anrIndex:I
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getanrlist(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1023
    .local v4, oldAnrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    if-nez v4, :cond_0

    .line 1024
    const-string v5, "RIL_AdnRecordCache"

    const-string v6, "MY searchanrindex oldAnrList is null "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1036
    .end local v0           #anrIndex:I
    .local v1, anrIndex:I
    :goto_0
    return v1

    .line 1027
    .end local v1           #anrIndex:I
    .restart local v0       #anrIndex:I
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1028
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->isAnrEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1030
    move v0, v2

    .line 1035
    :cond_1
    const-string v5, "RIL_AdnRecordCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "searchanrindex anrIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1036
    .end local v0           #anrIndex:I
    .restart local v1       #anrIndex:I
    goto :goto_0

    .line 1033
    .end local v1           #anrIndex:I
    .restart local v0       #anrIndex:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public searchemailindex(ILcom/android/internal/telephony/uicc/AdnRecord;)I
    .locals 7
    .parameter "pbrIndex"
    .parameter "oldEmail"

    .prologue
    .line 991
    const/4 v0, 0x1

    .line 992
    .local v0, count:I
    const/4 v1, -0x1

    .line 993
    .local v1, emailIndex:I
    const-string v4, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY searchemailindex pbrIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getemaillist(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 996
    .local v3, oldEmailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    if-eqz v3, :cond_2

    .line 997
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 998
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmailEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1000
    move v1, v0

    .line 1008
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_0
    :goto_1
    const-string v4, "RIL_AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchemailindex emailIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    return v1

    .line 1003
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1006
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_2
    const-string v4, "RIL_AdnRecordCache"

    const-string v5, "searchemailindex oldEmailList is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public searchsrecid(Lcom/android/internal/telephony/uicc/AdnRecord;)Ljava/lang/String;
    .locals 9
    .parameter "oldAdn"

    .prologue
    .line 476
    const-string v4, ""

    .line 477
    .local v4, srecid:Ljava/lang/String;
    const/4 v1, -0x1

    .line 478
    .local v1, index:I
    const/4 v0, 0x0

    .line 479
    .local v0, count:I
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v3

    .line 480
    .local v3, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 481
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->isUsimEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 482
    move v1, v0

    .line 487
    :cond_0
    const/4 v6, -0x1

    if-ne v1, v6, :cond_2

    move-object v5, v4

    .line 490
    .end local v4           #srecid:Ljava/lang/String;
    .local v5, srecid:Ljava/lang/String;
    :goto_1
    return-object v5

    .line 485
    .end local v5           #srecid:Ljava/lang/String;
    .restart local v4       #srecid:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 488
    :cond_2
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecid()Ljava/lang/String;

    move-result-object v4

    .line 489
    const-string v6, "RIL_AdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "searchsrecid srecid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    .line 490
    .end local v4           #srecid:Ljava/lang/String;
    .restart local v5       #srecid:Ljava/lang/String;
    goto :goto_1
.end method

.method public updateAdnByIndex(IILcom/android/internal/telephony/uicc/AdnRecord;IILjava/lang/String;Landroid/os/Message;)V
    .locals 12
    .parameter "efid"
    .parameter "pbrIndex"
    .parameter "adn"
    .parameter "extensionIndex"
    .parameter "recordIndex"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 192
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->pbrIndex:I

    .line 193
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v5

    .line 194
    .local v5, extensionEF:I
    if-gez v5, :cond_0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EF is not known ADN-like EF:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 234
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Message;

    .line 200
    .local v10, pendingResponse:Landroid/os/Message;
    if-eqz v10, :cond_1

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Have pending update for EF:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v0, p7

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 208
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfRecordSize()Ljava/util/Map;

    move-result-object v2

    .line 209
    .local v2, recordSizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[I>;"
    const/4 v11, 0x0

    .line 211
    .local v11, recordSize:[I
    const-string v1, "AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateAdnByIndex, efid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 214
    :cond_2
    const-string v1, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateAdnByIndex, error, recordSizeMap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in updateAdnByIndex,recordSizeMap error, recordSizeMap ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 218
    :cond_3
    const-string v1, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateAdnByIndex, recordSizeMap.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #recordSize:[I
    check-cast v11, [I

    .line 221
    .restart local v11       #recordSize:[I
    if-nez v11, :cond_4

    .line 222
    const-string v1, "RIL_AdnRecordCache"

    const-string v3, " in updateAdnByIndex, error, recordSize == null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v1, "in updateAdnByIndex,recordSize error, recordSize == null"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 227
    :cond_4
    const-string v1, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateAdnByIndex, recordSize[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v11, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v1, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateAdnByIndex, recordSize[1] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v11, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const-string v1, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateAdnByIndex, recordSize[2] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget v4, v11, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v3, 0x2

    move/from16 v0, p5

    invoke-virtual {p0, v3, p1, v0, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object v3, p3

    move v4, p1

    move/from16 v6, p5

    move/from16 v7, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateAdnEF(Ljava/util/Map;Lcom/android/internal/telephony/uicc/AdnRecord;IIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public updateAdnBySearch(IILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)[I
    .locals 27
    .parameter "efid"
    .parameter "pbrIndex"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 809
    const/16 v16, 0x0

    .line 810
    .local v16, extCount:I
    const/16 v20, 0x0

    .line 812
    .local v20, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    const/4 v3, 0x3

    new-array v0, v3, [I

    move-object/from16 v24, v0

    .line 813
    .local v24, recAndAnr:[I
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v24, v3

    .line 814
    const/4 v3, 0x1

    const/16 v5, 0xff

    aput v5, v24, v3

    .line 815
    const/4 v3, 0x2

    const/16 v5, 0xff

    aput v5, v24, v3

    .line 816
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v7

    .line 819
    .local v7, extensionEF:I
    :try_start_0
    const-string v3, "simphonebook"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v20

    .line 821
    if-eqz v20, :cond_0

    .line 822
    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->recordSize:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->recordSize:[I

    if-eqz v3, :cond_1

    .line 829
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->recordSize:[I

    const/4 v5, 0x2

    aget v3, v3, v5

    add-int/lit8 v16, v3, 0x1

    .line 830
    :cond_1
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY updateAdnBySearch extCount"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 833
    .local v17, extIndex:[I
    if-gez v7, :cond_2

    .line 834
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF is not known ADN-like EF:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 835
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v24, v3

    .line 985
    :goto_1
    return-object v24

    .line 824
    .end local v17           #extIndex:[I
    :catch_0
    move-exception v15

    .line 825
    .local v15, e:Ljava/lang/Exception;
    const-string v3, "GSM"

    const-string v5, "ServiceManager.getService() exception"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 840
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v17       #extIndex:[I
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v22

    .line 843
    .local v22, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    const/16 v3, 0x6f3a

    move/from16 v0, p1

    if-eq v0, v3, :cond_3

    const/16 v3, 0x6f3b

    move/from16 v0, p1

    if-ne v0, v3, :cond_4

    .line 844
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v22

    .line 849
    :goto_2
    if-nez v22, :cond_5

    .line 850
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adn list not exist for EF:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 851
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v24, v3

    goto :goto_1

    .line 846
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v22

    goto :goto_2

    .line 856
    :cond_5
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v24, v3

    .line 857
    const/16 v9, 0xff

    .line 858
    .local v9, extRecId:I
    const/16 v13, 0xff

    .line 859
    .local v13, anrExtRecId:I
    const/16 v18, 0x0

    .line 860
    .local v18, hasAdnExt:Z
    const/4 v14, 0x1

    .line 861
    .local v14, count:I
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 862
    const/16 v3, 0x6f3a

    move/from16 v0, p1

    if-ne v0, v3, :cond_c

    .line 863
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 864
    const/4 v3, 0x0

    aput v14, v24, v3

    .line 881
    :cond_6
    :goto_4
    const/4 v3, 0x0

    aget v3, v24, v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_16

    const/16 v3, 0x6f3b

    move/from16 v0, p1

    if-eq v0, v3, :cond_16

    .line 882
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 884
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-gt v3, v5, :cond_7

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-le v3, v5, :cond_9

    .line 885
    :cond_7
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-le v3, v5, :cond_8

    const/4 v3, 0x0

    aget v3, v24, v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtNumber()I

    move-result v3

    const/16 v5, 0xff

    if-eq v3, v5, :cond_8

    .line 886
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY  ---------update  adn..ext   recAndAnr[0]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v24, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "oldAdnList.get(recAndAnr[0]-1)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v24, v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const/4 v3, 0x0

    aget v3, v24, v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtNumber()I

    move-result v5

    const/4 v3, 0x0

    aget v3, v24, v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtNumber()I

    move-result v3

    aput v3, v17, v5

    .line 888
    const/4 v3, 0x0

    aget v3, v24, v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtNumber()I

    move-result v3

    aget v9, v17, v3

    .line 889
    const/4 v3, 0x1

    aput v9, v24, v3

    .line 891
    :cond_8
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-le v3, v5, :cond_9

    const/4 v3, 0x0

    aget v3, v24, v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v3

    const/16 v5, 0xff

    if-eq v3, v5, :cond_9

    .line 892
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY  ---------update  anr..ext   recAndAnr[0]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v24, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "oldAdnList.get(recAndAnr[0]-1)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v24, v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const/4 v3, 0x0

    aget v3, v24, v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v5

    const/4 v3, 0x0

    aget v3, v24, v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v3

    aput v3, v17, v5

    .line 894
    const/4 v3, 0x0

    aget v3, v24, v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v3

    aget v13, v17, v3

    .line 895
    const/4 v3, 0x2

    aput v13, v24, v3

    .line 899
    :cond_9
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-gt v3, v5, :cond_a

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-gt v3, v5, :cond_b

    :cond_a
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-gt v3, v5, :cond_13

    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-le v3, v5, :cond_13

    .line 900
    :cond_b
    const-string v3, "GSM"

    const-string v5, "MY  ---------insert  ext"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const/16 v19, 0x0

    .local v19, i:I
    :goto_5
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_f

    const/16 v3, 0xff

    aput v3, v17, v19

    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 867
    .end local v19           #i:I
    :cond_c
    const/16 v3, 0x6f3b

    move/from16 v0, p1

    if-ne v0, v3, :cond_d

    .line 868
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->isFDNEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 869
    const/4 v3, 0x0

    aput v14, v24, v3

    goto/16 :goto_4

    .line 873
    :cond_d
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->isUsimEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 874
    const/4 v3, 0x0

    aput v14, v24, v3

    goto/16 :goto_4

    .line 878
    :cond_e
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 902
    .restart local v19       #i:I
    :cond_f
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_10
    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 904
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtNumber()I

    move-result v26

    .line 905
    .local v26, temp:I
    const/16 v3, 0xff

    move/from16 v0, v26

    if-eq v0, v3, :cond_10

    const/4 v3, 0x1

    aput v3, v17, v26

    goto :goto_6

    .line 907
    .end local v26           #temp:I
    :cond_11
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_12
    :goto_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 909
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v26

    .line 910
    .restart local v26       #temp:I
    const/16 v3, 0xff

    move/from16 v0, v26

    if-eq v0, v3, :cond_12

    const/4 v3, 0x1

    aput v3, v17, v26

    goto :goto_7

    .line 913
    .end local v19           #i:I
    .end local v26           #temp:I
    :cond_13
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-le v3, v5, :cond_14

    .line 914
    const/16 v19, 0x1

    .restart local v19       #i:I
    :goto_8
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_14

    .line 915
    aget v3, v17, v19

    const/16 v5, 0xff

    if-ne v3, v5, :cond_17

    .line 916
    aput v19, v17, v19

    .line 917
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY  ---------insert  adn ..extIndex["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v17, v19

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    aget v9, v17, v19

    .line 919
    const/4 v3, 0x1

    aput v9, v24, v3

    .line 924
    .end local v19           #i:I
    :cond_14
    invoke-virtual/range {p4 .. p4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-le v3, v5, :cond_15

    .line 925
    const/16 v19, 0x1

    .restart local v19       #i:I
    :goto_9
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_15

    .line 926
    aget v3, v17, v19

    const/16 v5, 0xff

    if-ne v3, v5, :cond_18

    .line 927
    aput v19, v17, v19

    .line 928
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY  ---------insert  anr ..extIndex["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v17, v19

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    aget v13, v17, v19

    .line 930
    const/4 v3, 0x2

    aput v13, v24, v3

    .line 936
    .end local v19           #i:I
    :cond_15
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY  ---------extRecId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " anrExtRecId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_16
    const/4 v3, 0x0

    aget v3, v24, v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_19

    .line 939
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adn record don\'t exist for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 940
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adn record don\'t exist for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v24, v3

    goto/16 :goto_1

    .line 914
    .restart local v19       #i:I
    :cond_17
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_8

    .line 925
    :cond_18
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_9

    .line 945
    .end local v19           #i:I
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/Message;

    .line 947
    .local v23, pendingResponse:Landroid/os/Message;
    if-eqz v23, :cond_1a

    .line 948
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Have pending update for EF:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 949
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v24, v3

    goto/16 :goto_1

    .line 953
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 954
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestGetAllAdnFileld()[I

    move-result-object v12

    .line 956
    .local v12, adnEfid:[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfRecordSize()Ljava/util/Map;

    move-result-object v4

    .line 957
    .local v4, recordSizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[I>;"
    const/16 v25, 0x0

    .line 959
    .local v25, recordSize:[I
    const-string v3, "AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAdnBySearch, efid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    if-eqz v4, :cond_1b

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1c

    .line 962
    :cond_1b
    const-string v3, "AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAdnBySearch, error, recordSizeMap = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in updateAdnBySearch,recordSizeMap error, recordSizeMap ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 964
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v24, v3

    goto/16 :goto_1

    .line 967
    :cond_1c
    const-string v3, "AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAdnBySearch, recordSizeMap.size() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    .end local v25           #recordSize:[I
    check-cast v25, [I

    .line 970
    .restart local v25       #recordSize:[I
    if-nez v25, :cond_1d

    .line 971
    const-string v3, "AdnRecordCache"

    const-string v5, " in updateAdnBySearch, error, recordSize == null"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    const-string v3, "in updateAdnBySearch,recordSize error, recordSize == null"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 973
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v24, v3

    goto/16 :goto_1

    .line 977
    :cond_1d
    const-string v3, "AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAdnBySearch, recordSize[0] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v25, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    const-string v3, "AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAdnBySearch, recordSize[1] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v25, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    const-string v3, "AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAdnBySearch, recordSize[2] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget v6, v25, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v5, 0x0

    aget v8, v24, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aget v6, v24, v6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v5, v1, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v5, p4

    move/from16 v6, p1

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateAdnEF(Ljava/util/Map;Lcom/android/internal/telephony/uicc/AdnRecord;IIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1
.end method

.method public updateAnrByIndex(I[ILcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 17
    .parameter "efid"
    .parameter "index"
    .parameter "adn"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 741
    const/4 v3, 0x5

    aget v3, p2, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->pbrIndex:I

    .line 742
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->extensionEfForEf(I)I

    move-result v7

    .line 743
    .local v7, extensionEF:I
    if-gez v7, :cond_0

    .line 744
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF is not known ADN-like EF:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 784
    :goto_0
    return-void

    .line 748
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Message;

    .line 749
    .local v14, pendingResponse:Landroid/os/Message;
    if-eqz v14, :cond_1

    .line 750
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Have pending update for EF:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 754
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 755
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestGetAllSfiFileld()[I

    move-result-object v16

    .line 758
    .local v16, sfi:[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfRecordSize()Ljava/util/Map;

    move-result-object v4

    .line 759
    .local v4, recordSizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[I>;"
    const/4 v15, 0x0

    .line 761
    .local v15, recordSize:[I
    const-string v3, "AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAnrByIndex, efid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 764
    :cond_2
    const-string v3, "AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAnrByIndex, error, recordSizeMap = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in updateAnrByIndex,recordSizeMap error, recordSizeMap ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 768
    :cond_3
    const-string v3, "AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAnrByIndex, recordSizeMap.size() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #recordSize:[I
    check-cast v15, [I

    .line 771
    .restart local v15       #recordSize:[I
    if-nez v15, :cond_4

    .line 772
    const-string v3, "AdnRecordCache"

    const-string v5, " in updateAnrByIndex, error, recordSize == null"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const-string v3, "in updateAnrByIndex,recordSize error, recordSize == null"

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 777
    :cond_4
    const-string v3, "AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAnrByIndex, recordSize[0] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v15, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const-string v3, "AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAnrByIndex, recordSize[1] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v15, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    const-string v3, "AdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAnrByIndex, recordSize[2] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget v6, v15, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v5}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v5, 0x4

    aget v8, p2, v5

    const/4 v5, 0x0

    aget v9, p2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->pbrIndex:I

    aget v10, v16, v5

    const/4 v5, 0x2

    aget v12, p2, v5

    const/4 v5, 0x5

    const/4 v6, 0x4

    aget v6, p2, v6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v5, v1, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    move-object/from16 v5, p3

    move/from16 v6, p1

    move-object/from16 v11, p4

    invoke-virtual/range {v3 .. v13}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateAnrEF(Ljava/util/Map;Lcom/android/internal/telephony/uicc/AdnRecord;IIIIILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public updateEmailByIndex(I[ILcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 13
    .parameter "efid"
    .parameter "index"
    .parameter "adn"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 659
    const/4 v1, 0x5

    aget v1, p2, v1

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->pbrIndex:I

    .line 660
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Message;

    .line 661
    .local v10, pendingResponse:Landroid/os/Message;
    if-eqz v10, :cond_0

    .line 662
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Have pending update for EF:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 695
    :goto_0
    return-void

    .line 666
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v0, p5

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 667
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->requestGetAllSfiFileld()[I

    move-result-object v12

    .line 670
    .local v12, sfi:[I
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfRecordSize()Ljava/util/Map;

    move-result-object v2

    .line 671
    .local v2, recordSizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[I>;"
    const/4 v11, 0x0

    .line 673
    .local v11, recordSize:[I
    const-string v1, "AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateEmailByIndex, efid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 676
    :cond_1
    const-string v1, "AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateEmailByIndex, error, recordSizeMap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in updateEmailByIndex,recordSizeMap error, recordSizeMap ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 680
    :cond_2
    const-string v1, "AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateEmailByIndex, recordSizeMap.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #recordSize:[I
    check-cast v11, [I

    .line 683
    .restart local v11       #recordSize:[I
    if-nez v11, :cond_3

    .line 684
    const-string v1, "AdnRecordCache"

    const-string v3, " in updateEmailByIndex, error, recordSize == null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const-string v1, "in updateEmailByIndex,recordSize error, recordSize == null"

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 689
    :cond_3
    const-string v1, "AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateEmailByIndex, recordSize[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v11, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const-string v1, "AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateEmailByIndex, recordSize[1] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v11, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const-string v1, "AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateEmailByIndex, recordSize[2] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget v4, v11, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v3, 0x3

    aget v5, p2, v3

    const/4 v3, 0x0

    aget v6, p2, v3

    iget v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->pbrIndex:I

    aget v7, v12, v3

    const/4 v3, 0x3

    const/4 v4, 0x3

    aget v4, p2, v4

    move-object/from16 v0, p3

    invoke-virtual {p0, v3, p1, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v3, p3

    move v4, p1

    move-object/from16 v8, p4

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateEmailEF(Ljava/util/Map;Lcom/android/internal/telephony/uicc/AdnRecord;IIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public updateIapByIndex(III[I[BLcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 14
    .parameter "efid"
    .parameter "Emailiniap"
    .parameter "Anriniap"
    .parameter "index"
    .parameter "iapRecord"
    .parameter "adn"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 700
    const/4 v1, 0x5

    aget v1, p4, v1

    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->pbrIndex:I

    .line 701
    const-string v1, "RIL_AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wzf-updateIapByIndex: this.pbrIndex= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->pbrIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    .line 703
    .local v12, pendingResponse:Landroid/os/Message;
    if-eqz v12, :cond_0

    .line 704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Have pending update for EF:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 737
    :goto_0
    return-void

    .line 707
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v0, p8

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 710
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfRecordSize()Ljava/util/Map;

    move-result-object v2

    .line 711
    .local v2, recordSizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[I>;"
    const/4 v13, 0x0

    .line 713
    .local v13, recordSize:[I
    const-string v1, "AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateIapByIndex, efid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 716
    :cond_1
    const-string v1, "AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateIapByIndex, error, recordSizeMap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in updateIapByIndex,recordSizeMap error, recordSizeMap ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 720
    :cond_2
    const-string v1, "AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateIapByIndex, recordSizeMap.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #recordSize:[I
    check-cast v13, [I

    .line 723
    .restart local v13       #recordSize:[I
    if-nez v13, :cond_3

    .line 724
    const-string v1, "AdnRecordCache"

    const-string v3, " in updateIapByIndex, error, recordSize == null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const-string v1, "in updateIapByIndex,recordSize error, recordSize == null"

    move-object/from16 v0, p8

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 729
    :cond_3
    const-string v1, "AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateIapByIndex, recordSize[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v13, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const-string v1, "AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateIapByIndex, recordSize[1] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v13, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const-string v1, "AdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateIapByIndex, recordSize[2] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget v4, v13, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v3, 0x3

    aget v6, p4, v3

    const/4 v3, 0x4

    aget v7, p4, v3

    const/4 v3, 0x0

    aget v9, p4, v3

    const/4 v3, 0x6

    const/4 v4, 0x0

    aget v4, p4, v4

    move-object/from16 v0, p5

    invoke-virtual {p0, v3, p1, v4, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v3, p6

    move/from16 v4, p2

    move/from16 v5, p3

    move v8, p1

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->updateIapEF(Ljava/util/Map;Lcom/android/internal/telephony/uicc/AdnRecord;IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public updateusimphonebook(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;[ILjava/lang/String;I)Z
    .locals 9
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "index"
    .parameter "oldSrecid"
    .parameter "adnSize"

    .prologue
    .line 442
    const-string v6, "RIL_AdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateusimphonebook index[adnExt1_Index] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget v8, p3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " index[anrExt1_Index] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget v8, p3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    const/4 v5, -0x1

    .line 445
    .local v5, usimindex:I
    const/4 v0, 0x1

    .line 446
    .local v0, count:I
    const/4 v6, 0x5

    aget v4, p3, v6

    .line 447
    .local v4, pbrIndex:I
    if-nez p4, :cond_2

    const-string v6, ""

    invoke-virtual {p4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 448
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v3

    .line 449
    .local v3, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 450
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->isUsimEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 451
    move v5, v0

    .line 464
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v3           #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_0
    const-string v6, "RIL_AdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateusimphonebook usimindex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    const/4 v6, 0x0

    .line 471
    :goto_1
    return v6

    .line 454
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .restart local v3       #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 458
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v3           #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_2
    const/4 v6, 0x0

    aget v5, p3, v6

    .line 459
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v4, :cond_0

    .line 460
    add-int/2addr v5, p5

    .line 459
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 466
    .end local v1           #i:I
    :cond_3
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x14

    if-gt v6, v7, :cond_4

    const/4 v6, 0x1

    const/16 v7, 0xff

    aput v7, p3, v6

    .line 467
    :cond_4
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x14

    if-gt v6, v7, :cond_5

    const/4 v6, 0x2

    const/16 v7, 0xff

    aput v7, p3, v6

    .line 468
    :cond_5
    const/4 v6, 0x1

    aget v6, p3, v6

    if-lez v6, :cond_6

    const/4 v6, 0x1

    aget v6, p3, v6

    const/16 v7, 0xff

    if-eq v6, v7, :cond_6

    const/4 v6, 0x1

    aget v6, p3, v6

    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setExtNumber(I)V

    .line 469
    :cond_6
    const/4 v6, 0x2

    aget v6, p3, v6

    if-lez v6, :cond_7

    const/4 v6, 0x2

    aget v6, p3, v6

    const/16 v7, 0xff

    if-eq v6, v7, :cond_7

    const/4 v6, 0x2

    aget v6, p3, v6

    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnrExtNumber(I)V

    .line 470
    :cond_7
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecordCache;->mUsimPhoneBookManager:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v6, v7, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 471
    const/4 v6, 0x1

    goto :goto_1
.end method
