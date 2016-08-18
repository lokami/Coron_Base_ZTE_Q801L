.class public Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.super Landroid/os/Handler;
.source "UsimPhoneBookManager.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;,
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;,
        Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_ANR_ALL_LOAD_DONE:I = 0x7

.field private static final EVENT_ANR_EXT_RECORD_LOAD_DONE:I = 0x6

.field private static final EVENT_ANR_LOAD_DONE:I = 0x5

.field private static final EVENT_EMAIL_LOAD_DONE:I = 0x4

.field private static final EVENT_GET_EF_FILE_RECORD_SIZE_DONE:I = 0x5

.field private static final EVENT_IAP_LOAD_DONE:I = 0x3

.field private static final EVENT_PBR_LOAD_DONE:I = 0x1

.field private static final EVENT_USIM_ADN_LOAD_DONE:I = 0x2

.field private static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field private static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field private static final EXT_RECORD_TYPE_MASK:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "RIL_UsimPhoneBookManager"

.field private static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field private static final USIM_EFAAS_TAG:I = 0xc7

.field private static final USIM_EFADN_TAG:I = 0xc0

.field private static final USIM_EFANR_TAG:I = 0xc4

.field private static final USIM_EFCCP1_TAG:I = 0xcb

.field private static final USIM_EFEMAIL_TAG:I = 0xca

.field private static final USIM_EFEXT1_TAG:I = 0xc2

.field private static final USIM_EFGRP_TAG:I = 0xc6

.field private static final USIM_EFGSD_TAG:I = 0xc8

.field private static final USIM_EFIAP_TAG:I = 0xc1

.field private static final USIM_EFPBC_TAG:I = 0xc5

.field private static final USIM_EFSNE_TAG:I = 0xc3

.field private static final USIM_EFUID_TAG:I = 0xc9

.field private static final USIM_TYPE1_TAG:I = 0xa8

.field private static final USIM_TYPE2_TAG:I = 0xa9

.field private static final USIM_TYPE3_TAG:I = 0xaa

.field public static is3GPB:Z

.field private static isType1Email:Z

.field private static mEmailPresentInIap:Z

.field public static mExt1RecMaxSize:I

.field private static mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;


# instance fields
.field private Anrdatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private Emaildatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private anrExtRecId:I

.field private anrRecordExt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ext1Efid:I

.field private mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

.field private mAnrFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mAnrForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAnrPresentInIap:Z

.field private mAnrTagNumberInIap:I

.field private mAnrsForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEmailFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mEmailTagNumberInIap:I

.field private mEmailsForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mIapFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mIapForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private mIsPbrPresent:Ljava/lang/Boolean;

.field private mLock:Ljava/lang/Object;

.field private mPbrFileSfi:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;

.field private mPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordSize:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private mRefreshCache:Z

.field private oldNumAdnRec:I

.field private pbrNumbers:I

.field private upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    sput-boolean v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    .line 64
    sput-boolean v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isType1Email:Z

    .line 121
    sput v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1RecMaxSize:I

    .line 122
    sput-boolean v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->is3GPB:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/AdnRecordCache;)V
    .locals 3
    .parameter "fh"
    .parameter "cache"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 66
    iput v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 70
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    .line 74
    iput v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    .line 80
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->oldNumAdnRec:I

    .line 82
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->anrExtRecId:I

    .line 91
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ext1Efid:I

    .line 92
    iput v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    .line 147
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->Anrdatas:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->Emaildatas:Ljava/util/ArrayList;

    .line 153
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 156
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 157
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/Map;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isType1Email:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    sput-boolean p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isType1Email:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    return p1
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 51
    sget-boolean v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    sput-boolean p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ext1Efid:I

    return p1
.end method

.method private createPbrFile(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 1170
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_0

    .line 1171
    const-string v0, "wzf-20131220-createPbrFile-(records==null)-(mPbrFile==null)-(mIsPbrPresent==false)-return"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1172
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 1173
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 1177
    :goto_0
    return-void

    .line 1176
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    goto :goto_0
.end method

.method private createPbrFileSfi(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 633
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_0

    .line 634
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFileSfi:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;

    .line 639
    :goto_0
    return-void

    .line 638
    :cond_0
    new-instance v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFileSfi:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;

    goto :goto_0
.end method

.method private getEfFileRecordSize()V
    .locals 10

    .prologue
    const/16 v9, 0xca

    const/16 v8, 0xc4

    const/16 v7, 0xc1

    const/16 v6, 0xc2

    .line 170
    sget-object v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 199
    :cond_0
    return-void

    .line 172
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 174
    .local v3, numRecs:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 175
    sget-object v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 176
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 178
    const/16 v4, 0xc0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfFileRecordSizeAndWait(I)V

    .line 179
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 180
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfFileRecordSizeAndWait(I)V

    .line 182
    sget v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1RecMaxSize:I

    if-nez v4, :cond_2

    .line 184
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 185
    .local v0, ext1Size:[I
    const/4 v4, 0x2

    aget v4, v0, v4

    sput v4, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1RecMaxSize:I

    .line 189
    .end local v0           #ext1Size:[I
    :cond_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 190
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfFileRecordSizeAndWait(I)V

    .line 192
    :cond_3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 193
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfFileRecordSizeAndWait(I)V

    .line 195
    :cond_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 196
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfFileRecordSizeAndWait(I)V

    .line 174
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private getEfFileRecordSizeAndWait(I)V
    .locals 4
    .parameter "fileId"

    .prologue
    .line 202
    const-string v1, "RIL_UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in getEfFileRecordSizeAndWait,fileId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",will mFh.getEFLinearRecordSize,EVENT_GET_EF_FILE_RECORD_SIZE_DONE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 205
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "RIL_UsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interrupted Exception in getEfFileRecordSizeAndWait,fileId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isEMAILTYP1()Z
    .locals 1

    .prologue
    .line 242
    sget-boolean v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isType1Email:Z

    return v0
.end method

.method public static isEMAILTYP2()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 235
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportIAP(I)Z

    move-result v0

    .line 236
    .local v0, supportIAP:Z
    sget-boolean v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isSupportIAP(I)Z
    .locals 4
    .parameter "pbrindex"

    .prologue
    const/4 v1, 0x0

    .line 281
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 289
    :cond_0
    :goto_0
    return v1

    .line 282
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 283
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 284
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 287
    const/16 v2, 0xc1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 288
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1586
    const-string v0, "RIL_UsimPhoneBookManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    return-void
.end method

.method private readAdnFileAndWait(I)V
    .locals 8
    .parameter "recNum"

    .prologue
    const/16 v7, 0xc2

    const/16 v4, 0xc0

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1147
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 1167
    :cond_0
    :goto_0
    return-void

    .line 1148
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1149
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1151
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1154
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v6, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    .line 1163
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1164
    :catch_0
    move-exception v0

    .line 1165
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "RIL_UsimPhoneBookManager"

    const-string v3, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1158
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v6, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v2, v5, v4}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    goto :goto_1
.end method

.method private readAnrFileAndWait(I)V
    .locals 8
    .parameter "recNum"

    .prologue
    const/16 v5, 0xc2

    const/4 v7, 0x7

    const/16 v6, 0xc4

    .line 471
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 473
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 475
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 477
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 479
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v7, v2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadAllAnrFromEF(IILandroid/os/Message;)V

    .line 489
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "RIL_UsimPhoneBookManager"

    const-string v3, "Interrupted Exception in readAnrFileAndWait"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 483
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_2
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v7, v2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadAllAnrFromEF(IILandroid/os/Message;)V

    goto :goto_1
.end method

.method private readAnrRecord(I)Ljava/lang/String;
    .locals 7
    .parameter "recNum"

    .prologue
    .line 1034
    const/4 v3, 0x0

    .line 1036
    .local v3, anrRec:[B
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1041
    const/4 v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v2, v5, 0xff

    .line 1043
    .local v2, anrLength:I
    const/4 v5, 0x2

    add-int/lit8 v6, v2, 0x1

    invoke-static {v3, v5, v6}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 1044
    .end local v2           #anrLength:I
    :goto_0
    return-object v1

    .line 1037
    :catch_0
    move-exception v4

    .line 1038
    .local v4, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readAnrRecord mAnrFileRecord.get exception anrRec = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1039
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readEmailFileAndWait(I)V
    .locals 7
    .parameter "recNum"

    .prologue
    const/16 v5, 0xca

    .line 417
    sget-object v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 419
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 421
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 422
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 437
    .local v1, efid:I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-virtual {p0, v5, p1, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 440
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 446
    const-string v3, "RIL_UsimPhoneBookManager"

    const-string v4, "Error: Email file is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "RIL_UsimPhoneBookManager"

    const-string v4, "Interrupted Exception in readEmailFileAndWait"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private readEmailRecord(I)Ljava/lang/String;
    .locals 7
    .parameter "recNum"

    .prologue
    const/4 v6, 0x0

    .line 1124
    const/4 v3, 0x0

    .line 1126
    .local v3, emailRec:[B
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1132
    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    invoke-static {v3, v6, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 1137
    .local v2, email:Ljava/lang/String;
    const/4 v4, -0x1

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v3, v5

    if-ne v4, v5, :cond_0

    .line 1138
    array-length v4, v3

    invoke-static {v3, v6, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 1142
    .end local v2           #email:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 1127
    :catch_0
    move-exception v1

    .line 1128
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private readIapFileAndWait(I)V
    .locals 6
    .parameter "recNum"

    .prologue
    .line 456
    sget-object v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 458
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 459
    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 461
    .local v1, efid:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {p0, v4, p1, v5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 463
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "RIL_UsimPhoneBookManager"

    const-string v4, "Interrupted Exception in readIapFileAndWait"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readIapRecord(I)[B
    .locals 4
    .parameter "recNum"

    .prologue
    .line 1114
    const/4 v2, 0x0

    .line 1116
    .local v2, iapRec:[B
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [B

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 1120
    :goto_0
    return-object v3

    .line 1117
    :catch_0
    move-exception v1

    .line 1118
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private readPbrFileAndWait()V
    .locals 4

    .prologue
    .line 407
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x4f30

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 409
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :goto_0
    return-void

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "RIL_UsimPhoneBookManager"

    const-string v2, "Interrupted Exception in readPbrFileAndWait"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshCache()V
    .locals 3

    .prologue
    .line 393
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 400
    :cond_0
    return-void

    .line 394
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 396
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 397
    .local v1, numRecs:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 398
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updatePhoneAdnRecord(I)V
    .locals 13
    .parameter "recordNum"

    .prologue
    const/4 v12, 0x0

    .line 837
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v10, :cond_1

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 838
    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 840
    .local v5, numAdnRecs:I
    if-nez p1, :cond_2

    .line 841
    iput v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->oldNumAdnRec:I

    .line 843
    :cond_2
    const/4 v7, 0x0

    .line 844
    .local v7, recIndex:I
    if-lez p1, :cond_4

    .line 845
    iget v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->oldNumAdnRec:I

    .line 849
    :goto_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-eqz v10, :cond_5

    invoke-static {}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 854
    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->oldNumAdnRec:I

    invoke-virtual {p0, p1, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType1IapFile(II)V

    .line 856
    move v3, v7

    .local v3, i:I
    :goto_2
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_5

    .line 857
    const/4 v9, 0x0

    .line 859
    .local v9, record:[B
    :try_start_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapForAdnRec:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #record:[B
    check-cast v9, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 865
    .restart local v9       #record:[B
    if-nez v9, :cond_6

    .line 856
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 847
    .end local v3           #i:I
    .end local v9           #record:[B
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 860
    .restart local v3       #i:I
    :catch_0
    move-exception v0

    .line 861
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v10, "RIL_UsimPhoneBookManager"

    const-string v11, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v3           #i:I
    :cond_5
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 897
    .local v4, len:I
    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->oldNumAdnRec:I

    invoke-virtual {p0, p1, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType1EmailFile(II)V

    .line 905
    move v3, v7

    .restart local v3       #i:I
    :goto_4
    if-ge v3, v5, :cond_0

    .line 907
    const/4 v1, 0x0

    .line 909
    .local v1, emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 913
    .restart local v1       #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_8

    .line 905
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 868
    .end local v1           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #len:I
    .restart local v9       #record:[B
    :cond_6
    iget v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v10, v9, v10

    and-int/lit16 v8, v10, 0xff

    .line 870
    .local v8, recNum:I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_3

    .line 871
    const/4 v10, 0x1

    new-array v2, v10, [Ljava/lang/String;

    .line 873
    .local v2, emails:[Ljava/lang/String;
    add-int/lit8 v10, v8, -0x1

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v12

    .line 874
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 875
    .local v6, rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v6, :cond_7

    .line 876
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 881
    :goto_6
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 879
    :cond_7
    new-instance v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    .end local v6           #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    const-string v10, ""

    const-string v11, ""

    invoke-direct {v6, v10, v11, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .restart local v6       #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    goto :goto_6

    .line 910
    .end local v2           #emails:[Ljava/lang/String;
    .end local v6           #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v8           #recNum:I
    .end local v9           #record:[B
    .restart local v4       #len:I
    :catch_1
    move-exception v0

    .line 911
    .restart local v0       #e:Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_0

    .line 915
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v1       #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 917
    .restart local v6       #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v2, v10, [Ljava/lang/String;

    .line 918
    .restart local v2       #emails:[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-static {v10, v12, v2, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 919
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 920
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method

.method private updatePhoneAnrAdnRecord(I)V
    .locals 21
    .parameter "recNum"

    .prologue
    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 928
    .local v14, numAdnRecs:I
    const-string v6, ""

    .line 930
    .local v6, anr:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 931
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->oldNumAdnRec:I

    .line 933
    :cond_0
    const/16 v16, 0x0

    .line 934
    .local v16, recIndex:I
    if-lez p1, :cond_2

    .line 935
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->oldNumAdnRec:I

    move/from16 v16, v0

    .line 940
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isANRTYP2()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 941
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->oldNumAdnRec:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->parseType1IapFile(II)V

    .line 942
    move/from16 v11, v16

    .local v11, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_3

    .line 943
    const/16 v17, 0x0

    .line 945
    .local v17, record:[B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapForAdnRec:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #record:[B
    check-cast v17, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    .restart local v17       #record:[B
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    move/from16 v18, v0

    aget-byte v18, v17, v18

    move/from16 v0, v18

    and-int/lit16 v8, v0, 0xff

    .line 951
    .local v8, anrrecNum:I
    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v8, v0, :cond_5

    .line 942
    :cond_1
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 937
    .end local v8           #anrrecNum:I
    .end local v11           #i:I
    .end local v17           #record:[B
    :cond_2
    const/16 v16, 0x0

    goto :goto_0

    .line 946
    .restart local v11       #i:I
    :catch_0
    move-exception v9

    .line 947
    .local v9, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v18, "RIL_UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error: Improper ICC card: No IAP record for ADN, continuing i= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    .end local v9           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v11           #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->Anrdatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 966
    const/4 v12, 0x0

    .line 967
    .local v12, index:I
    if-nez p1, :cond_7

    .line 968
    const/4 v12, 0x0

    .line 969
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->oldNumAdnRec:I

    .line 973
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->Anrdatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_4
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 974
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 975
    .local v4, REC:Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v6

    .line 976
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v10

    .line 977
    .local v10, extAnrIndex:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isANRTYP2()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 978
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrIndex()I

    move-result v3

    .line 979
    .local v3, AnrIndex:I
    if-ge v3, v14, :cond_4

    .line 980
    if-eqz v3, :cond_4

    const/16 v18, 0xff

    move/from16 v0, v18

    if-eq v3, v0, :cond_4

    .line 981
    add-int/lit8 v3, v3, -0x1

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 984
    .local v15, rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v15, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;)V

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 986
    if-eqz v10, :cond_4

    const/16 v18, 0xff

    move/from16 v0, v18

    if-eq v10, v0, :cond_4

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 988
    .local v5, Rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v5, v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnrExtNumber(I)V

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 952
    .end local v3           #AnrIndex:I
    .end local v4           #REC:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v5           #Rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v10           #extAnrIndex:I
    .end local v12           #index:I
    .end local v13           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v15           #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v8       #anrrecNum:I
    .restart local v11       #i:I
    .restart local v17       #record:[B
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->Anrdatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_1

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->Anrdatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, v8, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v6

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 955
    .local v7, anrrec:Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v7, :cond_6

    .line 956
    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;)V

    .line 960
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 958
    :cond_6
    new-instance v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    .end local v7           #anrrec:Lcom/android/internal/telephony/uicc/AdnRecord;
    const-string v18, ""

    const-string v19, ""

    const-string v20, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v7, v0, v1, v6, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v7       #anrrec:Lcom/android/internal/telephony/uicc/AdnRecord;
    goto :goto_5

    .line 971
    .end local v7           #anrrec:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v8           #anrrecNum:I
    .end local v11           #i:I
    .end local v17           #record:[B
    .restart local v12       #index:I
    :cond_7
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->oldNumAdnRec:I

    goto/16 :goto_3

    .line 993
    .restart local v4       #REC:Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v10       #extAnrIndex:I
    .restart local v13       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_8
    if-lt v12, v14, :cond_a

    .line 1009
    .end local v4           #REC:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v10           #extAnrIndex:I
    .end local v12           #index:I
    .end local v13           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_9
    return-void

    .line 994
    .restart local v4       #REC:Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v10       #extAnrIndex:I
    .restart local v12       #index:I
    .restart local v13       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 995
    .restart local v15       #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v15, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;)V

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 997
    if-eqz v10, :cond_b

    const/16 v18, 0xff

    move/from16 v0, v18

    if-eq v10, v0, :cond_b

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 999
    .restart local v5       #Rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v5, v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnrExtNumber(I)V

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1002
    .end local v5           #Rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4
.end method

.method private updatePhoneRecord(I)V
    .locals 22
    .parameter "recordNum"

    .prologue
    .line 702
    const-string v18, "RIL_UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updatePhoneRecord recordNum = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->adnlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 704
    .local v12, numAdnRecs:I
    const-string v18, "RIL_UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updatePhoneRecord numAdnRecs = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v12, :cond_c

    .line 707
    :try_start_0
    const-string v17, ""

    .line 708
    .local v17, tag:Ljava/lang/String;
    const-string v13, ""

    .line 709
    .local v13, number:Ljava/lang/String;
    const/4 v9, -0x1

    .line 710
    .local v9, ext1id:I
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v7, v0, [Ljava/lang/String;

    .line 711
    .local v7, emails:[Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, ""

    aput-object v19, v7, v18

    .line 712
    const/16 v6, 0xff

    .line 713
    .local v6, emailrecNum:I
    const-string v4, ""

    .line 714
    .local v4, anr:Ljava/lang/String;
    const/16 v5, 0xff

    .line 715
    .local v5, anrrecNum:I
    const/4 v11, 0x0

    .line 716
    .local v11, iaprecord:[B
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v15, v0, [B

    .line 717
    .local v15, recid:[B
    const/16 v18, 0x1

    add-int/lit8 v19, p1, 0x1

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v15, v18

    .line 718
    new-instance v14, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v18, ""

    const-string v19, ""

    const-string v20, ""

    const-string v21, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    .local v14, rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    const/16 v18, 0x0

    add-int/lit8 v19, v10, 0x1

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v15, v18

    .line 721
    invoke-static {v15}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v16

    .line 722
    .local v16, srecid:Ljava/lang/String;
    if-eqz v14, :cond_9

    .line 723
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecid(Ljava/lang/String;)V

    .line 728
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->adnlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v17

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->adnlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v13

    .line 730
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAlphaTag(Ljava/lang/String;)V

    .line 731
    invoke-virtual {v14, v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->setNumber(Ljava/lang/String;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->adnlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasExtendedRecord()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->adnlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtNumber()I

    move-result v9

    .line 735
    sget v18, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mExt1RecMaxSize:I

    move/from16 v0, v18

    if-le v0, v9, :cond_0

    .line 737
    invoke-virtual {v14, v9}, Lcom/android/internal/telephony/uicc/AdnRecord;->setExtNumber(I)V

    .line 742
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportEmail(I)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 744
    const-string v18, "RIL_UsimPhoneBookManager"

    const-string v19, "wzf-updatePhoneRecord-isSupportEmail"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-static {}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v18

    if-eqz v18, :cond_d

    .line 747
    const-string v18, "RIL_UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "wzf-updatePhoneRecord-isEMAILTYP2 - i = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_a

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #iaprecord:[B
    check-cast v11, [B

    .line 751
    .restart local v11       #iaprecord:[B
    const-string v18, "RIL_UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "wzf-updatePhoneRecord IAP i = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    if-eqz v11, :cond_b

    .line 760
    const-string v18, "RIL_UsimPhoneBookManager"

    const-string v19, "wzf-updatePhoneRecord-(iaprecord!=null)"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    move/from16 v18, v0

    aget-byte v18, v11, v18

    move/from16 v0, v18

    and-int/lit16 v6, v0, 0xff

    .line 762
    const-string v18, "RIL_UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "wzf-updatePhoneRecord-IAPFile-emailrecNum = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " i = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_1

    const/16 v6, 0xff

    .line 775
    :cond_1
    :goto_2
    const-string v18, "RIL_UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "wzf-updatePhoneRecord final-emailrecNum = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " i = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    const/16 v18, 0xff

    move/from16 v0, v18

    if-eq v6, v0, :cond_2

    if-eqz v6, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->emaillist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-gt v6, v0, :cond_2

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->emaillist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, v6, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v7

    .line 780
    :cond_2
    invoke-virtual {v14, v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 783
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportANR(I)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 784
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isANRTYP2()Z

    move-result v18

    if-eqz v18, :cond_10

    .line 785
    if-eqz v11, :cond_e

    .line 786
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    move/from16 v18, v0

    aget-byte v18, v11, v18

    move/from16 v0, v18

    and-int/lit16 v5, v0, 0xff

    .line 787
    const/16 v18, 0xff

    move/from16 v0, v18

    if-eq v5, v0, :cond_3

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_5

    .line 788
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->valForAnrId:Ljava/util/Map;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->valForAnrId:Ljava/util/Map;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 790
    :cond_4
    const-string v18, "RIL_UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updatePhoneRecord ANR  anrrecNum = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "i = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    const/16 v18, 0xff

    move/from16 v0, v18

    if-eq v5, v0, :cond_5

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_5

    .line 792
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    move/from16 v18, v0

    and-int/lit16 v0, v5, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v11, v18

    .line 793
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 794
    const-string v19, "RIL_UsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updatePhoneRecord upb[recordNum].iaplist.get(i)[mAnrTagNumberInIap] = "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    move/from16 v21, v0

    aget-byte v18, v18, v21

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "i = "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    :cond_5
    :goto_3
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_6

    const/16 v5, 0xff

    .line 809
    :cond_6
    const/16 v18, 0xff

    move/from16 v0, v18

    if-eq v5, v0, :cond_11

    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-gt v5, v0, :cond_11

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, v5, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v4

    .line 815
    :cond_7
    :goto_4
    invoke-virtual {v14, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;)V

    .line 817
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportANR(I)Z

    move-result v18

    if-eqz v18, :cond_8

    const/16 v18, 0xff

    move/from16 v0, v18

    if-eq v5, v0, :cond_8

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-gt v5, v0, :cond_8

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, v5, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasAnrExtendedRecord()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, v5, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v9

    .line 821
    invoke-virtual {v14, v9}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnrExtNumber(I)V

    .line 825
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 725
    :cond_9
    new-instance v14, Lcom/android/internal/telephony/uicc/AdnRecord;

    .end local v14           #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    const-string v18, ""

    const-string v19, ""

    const-string v20, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v16

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v14       #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    goto/16 :goto_1

    .line 755
    :cond_a
    const-string v18, "RIL_UsimPhoneBookManager"

    const-string v19, "wzf-updatePhoneRecord-never come here-IAP does\'t exist or i is not less than iaplistsize "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    .end local v4           #anr:Ljava/lang/String;
    .end local v5           #anrrecNum:I
    .end local v6           #emailrecNum:I
    .end local v7           #emails:[Ljava/lang/String;
    .end local v9           #ext1id:I
    .end local v11           #iaprecord:[B
    .end local v13           #number:Ljava/lang/String;
    .end local v14           #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v15           #recid:[B
    .end local v16           #srecid:Ljava/lang/String;
    .end local v17           #tag:Ljava/lang/String;
    :goto_5
    return-void

    .line 767
    .restart local v4       #anr:Ljava/lang/String;
    .restart local v5       #anrrecNum:I
    .restart local v6       #emailrecNum:I
    .restart local v7       #emails:[Ljava/lang/String;
    .restart local v9       #ext1id:I
    .restart local v11       #iaprecord:[B
    .restart local v13       #number:Ljava/lang/String;
    .restart local v14       #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v15       #recid:[B
    .restart local v16       #srecid:Ljava/lang/String;
    .restart local v17       #tag:Ljava/lang/String;
    :cond_b
    const-string v18, "RIL_UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "wzf-updatePhoneRecord-(iaprecord==null)-comehere-this indicates error!-emailrecNum = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " i = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 828
    .end local v4           #anr:Ljava/lang/String;
    .end local v5           #anrrecNum:I
    .end local v6           #emailrecNum:I
    .end local v7           #emails:[Ljava/lang/String;
    .end local v9           #ext1id:I
    .end local v11           #iaprecord:[B
    .end local v13           #number:Ljava/lang/String;
    .end local v14           #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v15           #recid:[B
    .end local v16           #srecid:Ljava/lang/String;
    .end local v17           #tag:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 829
    .local v8, ex:Ljava/lang/Exception;
    const-string v18, "RIL_UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updatePhoneRecord ex = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    .end local v8           #ex:Ljava/lang/Exception;
    :cond_c
    const-string v18, "RIL_UsimPhoneBookManager"

    const-string v19, "updatePhoneRecord done "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 770
    .restart local v4       #anr:Ljava/lang/String;
    .restart local v5       #anrrecNum:I
    .restart local v6       #emailrecNum:I
    .restart local v7       #emails:[Ljava/lang/String;
    .restart local v9       #ext1id:I
    .restart local v11       #iaprecord:[B
    .restart local v13       #number:Ljava/lang/String;
    .restart local v14       #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v15       #recid:[B
    .restart local v16       #srecid:Ljava/lang/String;
    .restart local v17       #tag:Ljava/lang/String;
    :cond_d
    :try_start_1
    invoke-static {}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEMAILTYP1()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 772
    add-int/lit8 v6, v10, 0x1

    .line 773
    const-string v18, "RIL_UsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "wzf-updatePhoneRecord-isEMAILTYP1-emailrecNum= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " i = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 799
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->valForAnrId:Ljava/util/Map;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->valForAnrId:Ljava/util/Map;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto/16 :goto_3

    .line 802
    :cond_f
    const/16 v5, 0xff

    goto/16 :goto_3

    .line 806
    :cond_10
    add-int/lit8 v5, v10, 0x1

    goto/16 :goto_3

    .line 812
    :cond_11
    const-string v4, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method


# virtual methods
.method public GetAnrdatas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->Anrdatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method public GetEmaildatas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->Emaildatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAdnFileld(I)I
    .locals 5
    .parameter "recNum"

    .prologue
    const/16 v4, 0xc0

    const/4 v0, 0x0

    .line 558
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 572
    :cond_0
    :goto_0
    return v0

    .line 561
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 563
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 564
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 565
    .local v0, efid:I
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 569
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 570
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getAllAdnFileId()[I
    .locals 3

    .prologue
    .line 662
    const/4 v0, 0x0

    .line 663
    .local v0, FileId:[I
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    new-array v0, v2, [I

    .line 664
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    if-ge v1, v2, :cond_0

    .line 666
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAdnFileld(I)I

    move-result v2

    aput v2, v0, v1

    .line 664
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 668
    :cond_0
    return-object v0
.end method

.method public getAllAnrFileId()[I
    .locals 3

    .prologue
    .line 692
    const/4 v0, 0x0

    .line 693
    .local v0, FileId:[I
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    new-array v0, v2, [I

    .line 694
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    if-ge v1, v2, :cond_0

    .line 696
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getAnrFileld(I)I

    move-result v2

    aput v2, v0, v1

    .line 694
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 698
    :cond_0
    return-object v0
.end method

.method public getAllEmailFileId()[I
    .locals 3

    .prologue
    .line 642
    const/4 v0, 0x0

    .line 643
    .local v0, FileId:[I
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    new-array v0, v2, [I

    .line 644
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    if-ge v1, v2, :cond_0

    .line 646
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEmailFileId(I)I

    move-result v2

    aput v2, v0, v1

    .line 644
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 648
    :cond_0
    return-object v0
.end method

.method public getAllExt1Fileld()[I
    .locals 3

    .prologue
    .line 672
    const/4 v0, 0x0

    .line 673
    .local v0, FileId:[I
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    new-array v0, v2, [I

    .line 674
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    if-ge v1, v2, :cond_0

    .line 676
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getExt1Fileld(I)I

    move-result v2

    aput v2, v0, v1

    .line 674
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 678
    :cond_0
    return-object v0
.end method

.method public getAllIapFileId()[I
    .locals 3

    .prologue
    .line 652
    const/4 v0, 0x0

    .line 653
    .local v0, FileId:[I
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    new-array v0, v2, [I

    .line 654
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    if-ge v1, v2, :cond_0

    .line 656
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getIapFileId(I)I

    move-result v2

    aput v2, v0, v1

    .line 654
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 658
    :cond_0
    return-object v0
.end method

.method public getAllSfiFileId()[I
    .locals 3

    .prologue
    .line 682
    const/4 v0, 0x0

    .line 683
    .local v0, FileId:[I
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    new-array v0, v2, [I

    .line 684
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    if-ge v1, v2, :cond_0

    .line 686
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getSfiFileld(I)I

    move-result v2

    aput v2, v0, v1

    .line 684
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 688
    :cond_0
    return-object v0
.end method

.method public getAnrFileId(I)I
    .locals 5
    .parameter "recNum"

    .prologue
    const/16 v4, 0xc4

    const/4 v0, 0x0

    .line 501
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 515
    :cond_0
    :goto_0
    return v0

    .line 504
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 506
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 507
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 508
    .local v0, efid:I
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 512
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 513
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getAnrFileld(I)I
    .locals 5
    .parameter "recNum"

    .prologue
    const/16 v4, 0xc4

    const/4 v0, 0x0

    .line 615
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 629
    :cond_0
    :goto_0
    return v0

    .line 618
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 620
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 621
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 622
    .local v0, efid:I
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 626
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 627
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getAnriniap()I
    .locals 1

    .prologue
    .line 388
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrTagNumberInIap:I

    return v0
.end method

.method public getEXT1efid()I
    .locals 1

    .prologue
    .line 1582
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->ext1Efid:I

    return v0
.end method

.method public getEfRecordSize()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/Map;

    return-object v0
.end method

.method public getEmailFileId(I)I
    .locals 5
    .parameter "recNum"

    .prologue
    const/16 v4, 0xca

    const/4 v0, 0x0

    .line 520
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 534
    :cond_0
    :goto_0
    return v0

    .line 523
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 525
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 526
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 527
    .local v0, efid:I
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 531
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 532
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getEmailiniap()I
    .locals 1

    .prologue
    .line 385
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailTagNumberInIap:I

    return v0
.end method

.method public getExt1Fileld(I)I
    .locals 5
    .parameter "recNum"

    .prologue
    const/16 v4, 0xc2

    const/4 v0, 0x0

    .line 577
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 591
    :cond_0
    :goto_0
    return v0

    .line 580
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 582
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 583
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 584
    .local v0, efid:I
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 588
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 589
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getIapFileId(I)I
    .locals 5
    .parameter "recNum"

    .prologue
    const/16 v4, 0xc1

    const/4 v0, 0x0

    .line 539
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 553
    :cond_0
    :goto_0
    return v0

    .line 542
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 544
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 545
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 546
    .local v0, efid:I
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 550
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 551
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getSfiFileld(I)I
    .locals 5
    .parameter "recNum"

    .prologue
    const/16 v4, 0xc0

    const/4 v1, 0x0

    .line 596
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 610
    :cond_0
    :goto_0
    return v1

    .line 599
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 601
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFileSfi:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFileSfi;->mSfiFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 602
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 603
    .local v1, sfi:I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 607
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 608
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getUsimRecordSize()I
    .locals 7

    .prologue
    .line 1566
    const/4 v3, 0x0

    .line 1567
    .local v3, usimNumbers:I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 1568
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 1569
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 1571
    .local v2, rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    const-string v0, ""

    .line 1572
    .local v0, email:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v0, v4, v5

    .line 1573
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1575
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 1568
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1578
    .end local v0           #email:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_3
    const-string v4, "RIL_UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY getUsimRecordSize ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    return v3
.end method

.method public getadnlist(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "recnumber"
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
    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->adnlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getanrlist(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "recnumber"
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
    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getemaillist(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "recnumber"
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
    .line 300
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->emaillist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getiaplist(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "recnumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getpbrNumbers()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 1185
    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->what:I

    packed-switch v14, :pswitch_data_0

    .line 1360
    :goto_0
    :pswitch_0
    return-void

    .line 1188
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1189
    .local v6, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    .line 1191
    .local v7, efId:I
    const-string v14, "UsimPhoneBookManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "got EVENT_GET_EF_FILE_RECORD_SIZE_DONE efId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ",ar.exception = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    iget-object v14, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_0

    .line 1195
    :try_start_0
    iget-object v14, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, [I

    move-object v0, v14

    check-cast v0, [I

    move-object v13, v0

    .line 1196
    .local v13, recordSize:[I
    const-string v14, "UsimPhoneBookManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "got EVENT_GET_EF_FILE_RECORD_SIZE_DONE,recordSize[0]="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, v13, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    const-string v14, "UsimPhoneBookManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "got EVENT_GET_EF_FILE_RECORD_SIZE_DONE,recordSize[1]="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget v16, v13, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    const-string v14, "UsimPhoneBookManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "got EVENT_GET_EF_FILE_RECORD_SIZE_DONE,recordSize[2]="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    aget v16, v13, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRecordSize:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1208
    .end local v13           #recordSize:[I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 1209
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->notify()V

    .line 1210
    monitor-exit v15

    goto/16 :goto_0

    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v14

    .line 1200
    :catch_0
    move-exception v10

    .line 1201
    .local v10, ex:Ljava/lang/Exception;
    const-string v14, "RIL_UsimPhoneBookManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "EVENT_GET_EF_FILE_RECORD_SIZE_DONE Exception  = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1206
    .end local v10           #ex:Ljava/lang/Exception;
    :cond_0
    const-string v14, "RIL_UsimPhoneBookManager"

    const-string v15, "wzf-20131220-EVENT_GET_EF_FILE_RECORD_SIZE_DONE-exception"

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1214
    .end local v6           #ar:Landroid/os/AsyncResult;
    .end local v7           #efId:I
    :pswitch_2
    const-string v14, "RIL_UsimPhoneBookManager"

    const-string v15, "wzf-Loading PBR done-EVENT_PBR_LOAD_DONE"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1216
    .restart local v6       #ar:Landroid/os/AsyncResult;
    iget-object v14, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_1

    .line 1217
    iget-object v14, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    .line 1218
    iget-object v14, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->createPbrFileSfi(Ljava/util/ArrayList;)V

    .line 1224
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 1225
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->notify()V

    .line 1226
    monitor-exit v15

    goto/16 :goto_0

    :catchall_1
    move-exception v14

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v14

    .line 1222
    :cond_1
    const-string v14, "RIL_UsimPhoneBookManager"

    const-string v15, "wzf-20131220-Loading PBR done"

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 1230
    .end local v6           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1231
    .restart local v6       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 1232
    .local v12, recNum:I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "EVENT_USIM_ADN_LOAD_DONE recNum = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1233
    iget-object v14, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_2

    .line 1235
    :try_start_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    aget-object v14, v14, v12

    iget-object v15, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->adnlist:Ljava/util/ArrayList;

    iget-object v14, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1244
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 1245
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->notify()V

    .line 1246
    monitor-exit v15

    goto/16 :goto_0

    :catchall_2
    move-exception v14

    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v14

    .line 1236
    :catch_1
    move-exception v10

    .line 1237
    .restart local v10       #ex:Ljava/lang/Exception;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "EVENT_USIM_ADN_LOAD_DONE Exception  = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1242
    .end local v10           #ex:Ljava/lang/Exception;
    :cond_2
    const-string v14, "RIL_UsimPhoneBookManager"

    const-string v15, "wzf-20131220-EVENT_USIM_ADN_LOAD_DONE-exception"

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 1249
    .end local v6           #ar:Landroid/os/AsyncResult;
    .end local v12           #recNum:I
    :pswitch_4
    const-string v14, "Loading USIM IAP records done"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1250
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1251
    .restart local v6       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 1252
    .restart local v12       #recNum:I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "EVENT_IAP_LOAD_DONE recNum = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1253
    iget-object v14, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_3

    .line 1254
    iget-object v14, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 1256
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    aget-object v15, v14, v12

    iget-object v14, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    iput-object v14, v15, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1265
    :goto_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 1266
    :try_start_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->notify()V

    .line 1267
    monitor-exit v15

    goto/16 :goto_0

    :catchall_3
    move-exception v14

    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v14

    .line 1257
    :catch_2
    move-exception v10

    .line 1258
    .restart local v10       #ex:Ljava/lang/Exception;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "EVENT_IAP_LOAD_DONE Exception ex = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 1263
    .end local v10           #ex:Ljava/lang/Exception;
    :cond_3
    const-string v14, "RIL_UsimPhoneBookManager"

    const-string v15, "wzf-20131220-EVENT_IAP_LOAD_DONE-exception"

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 1270
    .end local v6           #ar:Landroid/os/AsyncResult;
    .end local v12           #recNum:I
    :pswitch_5
    const-string v14, "wzf-Loading USIM Email records done"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1271
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1272
    .restart local v6       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    .line 1273
    .restart local v12       #recNum:I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "wzf-EVENT_EMAIL_LOAD_DONE recNum = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1274
    iget-object v14, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_8

    .line 1275
    iget-object v14, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 1276
    const/4 v9, 0x0

    .line 1277
    .local v9, emailRec:[B
    const/16 v4, 0xff

    .line 1281
    .local v4, adnEmailRecNum:I
    :try_start_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1282
    .local v8, emailFileRecordSize:I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "wzf-EVENT_EMAIL_LOAD_DONE-emailFileRecordSize = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1283
    const/4 v11, 0x0

    .local v11, i:I
    :goto_5
    if-ge v11, v8, :cond_7

    .line 1285
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, [B

    move-object v9, v0

    .line 1286
    if-eqz v9, :cond_4

    .line 1288
    invoke-static {}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1290
    array-length v14, v9

    add-int/lit8 v14, v14, -0x1

    aget-byte v4, v9, v14

    .line 1291
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "wzf-EVENT_EMAIL_LOAD_DONE-isEMAILTYP2-adnNumofEmailRec: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1300
    :cond_4
    :goto_6
    const/4 v14, -0x1

    if-ne v4, v14, :cond_5

    const/16 v4, 0xff

    .line 1301
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    aget-object v14, v14, v12

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->valForEmailId:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    add-int/lit8 v16, v11, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1302
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "wzf-EVENT_EMAIL_LOAD_DONE-pbrNum = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " adnRecNum = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "EmailRecNum = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    add-int/lit8 v15, v11, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1303
    const/4 v14, 0x1

    new-array v2, v14, [Ljava/lang/String;

    .line 1304
    .local v2, RecEmail:[Ljava/lang/String;
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>([Ljava/lang/String;)V

    .line 1305
    .local v1, Emaildata:Lcom/android/internal/telephony/uicc/AdnRecord;
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v2, v14

    .line 1306
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->Emaildatas:Ljava/util/ArrayList;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1307
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    aget-object v14, v14, v12

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->emaillist:Ljava/util/ArrayList;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1283
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_5

    .line 1293
    .end local v1           #Emaildata:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v2           #RecEmail:[Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEMAILTYP1()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1295
    add-int/lit8 v4, v11, 0x1

    .line 1296
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "wzf-EVENT_EMAIL_LOAD_DONE-isEMAILTYP1-adnEmailRecNum: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_6

    .line 1313
    .end local v8           #emailFileRecordSize:I
    .end local v11           #i:I
    :catch_3
    move-exception v10

    .line 1315
    .restart local v10       #ex:Ljava/lang/Exception;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "EVENT_IAP_LOAD_DONE Exception ex = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1323
    .end local v4           #adnEmailRecNum:I
    .end local v9           #emailRec:[B
    .end local v10           #ex:Ljava/lang/Exception;
    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 1324
    :try_start_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->notify()V

    .line 1325
    monitor-exit v15

    goto/16 :goto_0

    :catchall_4
    move-exception v14

    monitor-exit v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v14

    .line 1320
    :cond_8
    const-string v14, "RIL_UsimPhoneBookManager"

    const-string v15, "wzf-20131220-EVENT_EMAIL_LOAD_DONE-exception"

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 1329
    .end local v6           #ar:Landroid/os/AsyncResult;
    .end local v12           #recNum:I
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .line 1330
    .restart local v6       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg2:I

    .line 1331
    .restart local v12       #recNum:I
    const/16 v3, 0xff

    .line 1332
    .local v3, adnAnrRecNum:I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "EVENT_ANR_ALL_LOAD_DONE recNum = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1333
    iget-object v14, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v14, :cond_c

    .line 1335
    :try_start_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    aget-object v14, v14, v12

    iget-object v15, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    iget-object v14, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1336
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    aget-object v14, v14, v12

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v11, v14, :cond_b

    .line 1337
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    aget-object v14, v14, v12

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 1338
    .local v5, anrAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isANRTYP2()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1339
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrIndex()I

    move-result v3

    .line 1343
    :goto_9
    const/4 v14, -0x1

    if-ne v3, v14, :cond_9

    const/16 v3, 0xff

    .line 1344
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    aget-object v14, v14, v12

    iget-object v14, v14, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;->valForAnrId:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    add-int/lit8 v16, v11, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 1336
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 1341
    :cond_a
    add-int/lit8 v3, v11, 0x1

    goto :goto_9

    .line 1346
    .end local v5           #anrAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v11           #i:I
    :catch_4
    move-exception v10

    .line 1347
    .restart local v10       #ex:Ljava/lang/Exception;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "EVENT_ANR_ALL_LOAD_DONE Exception ex = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1354
    .end local v10           #ex:Ljava/lang/Exception;
    :cond_b
    :goto_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 1355
    :try_start_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v14}, Ljava/lang/Object;->notify()V

    .line 1356
    monitor-exit v15

    goto/16 :goto_0

    :catchall_5
    move-exception v14

    monitor-exit v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v14

    .line 1352
    :cond_c
    const-string v14, "RIL_UsimPhoneBookManager"

    const-string v15, "wzf-20131220-EVENT_ANR_ALL_LOAD_DONE-exception"

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 1185
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 404
    return-void
.end method

.method public isANRTYP2()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrPresentInIap:Z

    return v0
.end method

.method public isSupportANR(I)Z
    .locals 4
    .parameter "pbrindex"

    .prologue
    const/4 v1, 0x0

    .line 249
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v1

    .line 250
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 251
    sget-object v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 252
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 255
    const/16 v2, 0xc4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSupportEmail(I)Z
    .locals 2
    .parameter "pbrindex"

    .prologue
    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, supportEmail:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEMAILTYP1()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 275
    :goto_0
    return v0

    .line 274
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadEfFilesFromUsim()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 310
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 311
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 312
    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    if-eqz v5, :cond_0

    .line 313
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 314
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->refreshCache()V

    .line 316
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v6

    .line 375
    :goto_0
    return-object v5

    .line 319
    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_2

    monitor-exit v6

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 323
    :cond_2
    :try_start_1
    sget-object v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v7, :cond_3

    .line 324
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readPbrFileAndWait()V

    .line 327
    :cond_3
    sget-object v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    if-nez v7, :cond_4

    monitor-exit v6

    goto :goto_0

    .line 329
    :cond_4
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->is3GPB:Z

    .line 331
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->getEfFileRecordSize()V

    .line 333
    sget-object v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 334
    .local v4, numRecs:I
    const-string v5, "RIL_UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wzf-20131220-loadEfFilesFromUsim-numRecs:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iput v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->pbrNumbers:I

    .line 338
    new-array v5, v4, [Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    .line 339
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_8

    .line 340
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->upb:[Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    new-instance v7, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;

    invoke-direct {v7, p0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$usimphonebook;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)V

    aput-object v7, v5, v3

    .line 341
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 343
    const/4 v2, 0x0

    .line 344
    .local v2, IAPisSupport:Z
    const/4 v1, 0x0

    .line 345
    .local v1, EmailisSupport:Z
    const/4 v0, 0x0

    .line 346
    .local v0, ANRisSupport:Z
    invoke-static {v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportIAP(I)Z

    move-result v2

    .line 347
    const-string v5, "RIL_UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wzf-20131220-loadEfFilesFromUsim-IAPisSupport:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportEmail(I)Z

    move-result v1

    .line 349
    const-string v5, "RIL_UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wzf-20131220-loadEfFilesFromUsim-EmailisSupport:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isSupportANR(I)Z

    move-result v0

    .line 351
    const-string v5, "RIL_UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wzf-20131220-loadEfFilesFromUsim-ANRisSupport:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    if-eqz v2, :cond_5

    .line 355
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapFileAndWait(I)V

    .line 357
    :cond_5
    if-eqz v1, :cond_6

    .line 359
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailFileAndWait(I)V

    .line 361
    :cond_6
    if-eqz v0, :cond_7

    .line 363
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrFileAndWait(I)V

    .line 339
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 370
    .end local v0           #ANRisSupport:Z
    .end local v1           #EmailisSupport:Z
    .end local v2           #IAPisSupport:Z
    :cond_8
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_9

    .line 371
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->updatePhoneRecord(I)V

    .line 370
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 374
    :cond_9
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public loadUsimRecord()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method parseType1Anr(III)V
    .locals 4
    .parameter "numRecs"
    .parameter "recNum"
    .parameter "oldNumAdnRec"

    .prologue
    .line 1012
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrForAdnRec:Ljava/util/Map;

    .line 1013
    if-lez p2, :cond_2

    .line 1014
    move v1, p3

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_5

    .line 1015
    sub-int v2, v1, p3

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrRecord(I)Ljava/lang/String;

    move-result-object v0

    .line 1016
    .local v0, anr:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1014
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1020
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrForAdnRec:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1023
    .end local v0           #anr:Ljava/lang/String;
    .end local v1           #i:I
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, p1, :cond_5

    .line 1024
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readAnrRecord(I)Ljava/lang/String;

    move-result-object v0

    .line 1025
    .restart local v0       #anr:Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1023
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1029
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mAnrForAdnRec:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1032
    .end local v0           #anr:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method parseType1EmailFile(II)V
    .locals 9
    .parameter "recordNum"
    .parameter "oldNumAdnRec"

    .prologue
    .line 1048
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    .line 1049
    const/4 v3, 0x0

    .line 1051
    .local v3, emailRec:[B
    const/4 v5, 0x0

    .line 1052
    .local v5, recIndex:I
    const/16 v0, 0xff

    .line 1053
    .local v0, adnRecNum:I
    if-lez p1, :cond_1

    .line 1054
    move v5, p2

    .line 1058
    :goto_0
    move v4, v5

    .local v4, i:I
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 1060
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #emailRec:[B
    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1065
    .restart local v3       #emailRec:[B
    invoke-static {}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1066
    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    aget-byte v0, v3, v7

    .line 1067
    const/16 v7, 0xff

    if-ne v0, v7, :cond_4

    .line 1058
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1056
    .end local v4           #i:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1061
    .end local v3           #emailRec:[B
    .restart local v4       #i:I
    :catch_0
    move-exception v1

    .line 1062
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "RIL_UsimPhoneBookManager"

    const-string v8, "Error: Improper ICC card: No email record for ADN, continuing"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    return-void

    .line 1069
    .restart local v3       #emailRec:[B
    :cond_3
    add-int/lit8 v0, v4, 0x1

    .line 1072
    :cond_4
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v2

    .line 1074
    .local v2, email:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1079
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v8, v0, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1080
    .local v6, val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v6, :cond_5

    .line 1081
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1083
    .restart local v6       #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1085
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v8, v0, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method parseType1IapFile(II)V
    .locals 4
    .parameter "recordNum"
    .parameter "oldNumAdnRec"

    .prologue
    .line 1090
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapForAdnRec:Ljava/util/Map;

    .line 1091
    if-lez p1, :cond_1

    .line 1092
    move v0, p2

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1093
    sub-int v2, v0, p2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapRecord(I)[B

    move-result-object v1

    .line 1094
    .local v1, iap:[B
    if-nez v1, :cond_0

    .line 1092
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1098
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapForAdnRec:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1101
    .end local v0           #i:I
    .end local v1           #iap:[B
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1102
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->readIapRecord(I)[B

    move-result-object v1

    .line 1103
    .restart local v1       #iap:[B
    if-nez v1, :cond_2

    .line 1101
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1107
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapForAdnRec:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1111
    .end local v1           #iap:[B
    :cond_3
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 214
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 215
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 216
    sput-object v1, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mPbrFile:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;

    .line 217
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 218
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->mRefreshCache:Z

    .line 219
    return-void
.end method
