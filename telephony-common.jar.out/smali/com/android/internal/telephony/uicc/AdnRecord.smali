.class public Lcom/android/internal/telephony/uicc/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DIALING_NUMBER_END:I = 0xb

.field static final ADN_DIALING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field static final ADN_TON_AND_NPI:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "RIL_AdnRecord"

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb


# instance fields
.field IapforAnr:I

.field IapforEmail:I

.field alphaTag:Ljava/lang/String;

.field anr:Ljava/lang/String;

.field anrExtRecord:I

.field anrInxRecord:I

.field anrRecordExt:Ljava/lang/String;

.field efid:I

.field emails:[Ljava/lang/String;

.field extRecord:I

.field iap:I

.field number:Ljava/lang/String;

.field recordNumber:I

.field srecid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/AdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/16 v1, 0xff

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->srecid:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:I

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 60
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrRecordExt:Ljava/lang/String;

    .line 62
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrInxRecord:I

    .line 199
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->efid:I

    .line 200
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->recordNumber:I

    .line 201
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 202
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    .line 204
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/16 v1, 0xff

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->srecid:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:I

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 60
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrRecordExt:Ljava/lang/String;

    .line 62
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrInxRecord:I

    .line 165
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->efid:I

    .line 166
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->recordNumber:I

    .line 167
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 168
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 169
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"

    .prologue
    const/16 v1, 0xff

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->srecid:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:I

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 60
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrRecordExt:Ljava/lang/String;

    .line 62
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrInxRecord:I

    .line 190
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->efid:I

    .line 191
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->recordNumber:I

    .line 192
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 193
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 194
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    .line 195
    iput-object p6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "record"

    .prologue
    const/16 v1, 0xff

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->srecid:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:I

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 60
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrRecordExt:Ljava/lang/String;

    .line 62
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrInxRecord:I

    .line 131
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->efid:I

    .line 132
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->recordNumber:I

    .line 133
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->parseRecord([B)V

    .line 134
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2
    .parameter "efid"
    .parameter "record"

    .prologue
    const/16 v1, 0xff

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->srecid:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:I

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 60
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrRecordExt:Ljava/lang/String;

    .line 62
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrInxRecord:I

    .line 137
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->efid:I

    .line 138
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->parseAnrRecord([B)V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .parameter "alphaTag"
    .parameter "number"
    .parameter "IapforEmail"
    .parameter "IapforAnr"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0xff

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->srecid:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:I

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 60
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrRecordExt:Ljava/lang/String;

    .line 62
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrInxRecord:I

    .line 175
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->efid:I

    .line 176
    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->recordNumber:I

    .line 177
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 178
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    .line 180
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 181
    iput p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->IapforEmail:I

    .line 182
    iput p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->IapforAnr:I

    .line 184
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "alphaTag"
    .parameter "number"
    .parameter "anr"
    .parameter "srecid"

    .prologue
    const/16 v1, 0xff

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->srecid:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:I

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 60
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrRecordExt:Ljava/lang/String;

    .line 62
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrInxRecord:I

    .line 154
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 155
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 156
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 157
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->srecid:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v1, 0x0

    .line 161
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"

    .prologue
    const/4 v1, 0x0

    .line 186
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"
    .parameter "srecid"

    .prologue
    const/16 v1, 0xff

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->srecid:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:I

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 60
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrRecordExt:Ljava/lang/String;

    .line 62
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrInxRecord:I

    .line 146
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 147
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 148
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    .line 149
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 150
    iput-object p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->srecid:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 122
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 2
    .parameter "emails"

    .prologue
    const/16 v1, 0xff

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->srecid:Ljava/lang/String;

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->iap:I

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 60
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrRecordExt:Ljava/lang/String;

    .line 62
    iput v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrInxRecord:I

    .line 127
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    .line 128
    return-void
.end method

.method private parseAnrRecord([B)V
    .locals 4
    .parameter "anrRecord"

    .prologue
    .line 760
    const/4 v2, 0x1

    :try_start_0
    aget-byte v2, p1, v2

    and-int/lit16 v0, v2, 0xff

    .line 761
    .local v0, anrLength:I
    const/4 v2, 0x2

    invoke-static {p1, v2, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 762
    array-length v2, p1

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    .line 764
    array-length v2, p1

    add-int/lit8 v2, v2, -0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 765
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrInxRecord:I

    .line 774
    .end local v0           #anrLength:I
    :goto_0
    return-void

    .line 767
    .restart local v0       #anrLength:I
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 771
    .end local v0           #anrLength:I
    :catch_0
    move-exception v1

    .line 772
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v2, "RIL_AdnRecord"

    const-string v3, "Error parsing anrRecord"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private parseRecord([B)V
    .locals 6
    .parameter "record"

    .prologue
    const/4 v5, 0x0

    .line 720
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0xe

    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 723
    array-length v3, p1

    add-int/lit8 v1, v3, -0xe

    .line 725
    .local v1, footerOffset:I
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .line 727
    .local v2, numberLength:I
    const/16 v3, 0xb

    if-le v2, v3, :cond_0

    .line 729
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 755
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :goto_0
    return-void

    .line 740
    .restart local v1       #footerOffset:I
    .restart local v2       #numberLength:I
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 744
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 746
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    .line 747
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 748
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :catch_0
    move-exception v0

    .line 749
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "RIL_AdnRecord"

    const-string v4, "Error parsing AdnRecord"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 750
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 751
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 752
    iput-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    .line 753
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    goto :goto_0
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 277
    if-ne p0, p1, :cond_0

    .line 278
    const/4 v0, 0x1

    .line 286
    :goto_0
    return v0

    .line 280
    :cond_0
    if-nez p0, :cond_1

    .line 281
    const-string p0, ""

    .line 283
    :cond_1
    if-nez p1, :cond_2

    .line 284
    const-string p1, ""

    .line 286
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public appendAnrExtRecord([B)V
    .locals 4
    .parameter "anrExtRecord"

    .prologue
    const/4 v3, 0x2

    .line 779
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 783
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 788
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 792
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 794
    const/4 v1, 0x2

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {p1, v1, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrRecordExt:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 796
    :catch_0
    move-exception v0

    .line 797
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "RIL_AdnRecord"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public appendExtRecord([B)V
    .locals 4
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    .line 688
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 697
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 707
    :catch_0
    move-exception v0

    .line 708
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "RIL_AdnRecord"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildAdnString(II)[B
    .locals 10
    .parameter "recordSize"
    .parameter "extRecId"

    .prologue
    .line 433
    add-int/lit8 v4, p1, -0xe

    .line 434
    .local v4, footerOffset:I
    const-string v7, "RIL_AdnRecord"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MY alphaTag is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", recordSize"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 437
    :cond_1
    const-string v7, "RIL_AdnRecord"

    const-string v8, "[buildAdnString] Empty alpha tag and number"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-array v0, p1, [B

    .line 439
    .local v0, adnString:[B
    const/16 p2, 0xff

    .line 440
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, p1, :cond_a

    .line 441
    const/4 v7, -0x1

    aput-byte v7, v0, v5

    .line 440
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 456
    .end local v0           #adnString:[B
    .end local v5           #i:I
    :cond_2
    new-array v0, p1, [B

    .line 457
    .restart local v0       #adnString:[B
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_1
    if-ge v5, p1, :cond_3

    .line 458
    const/4 v7, -0x1

    aput-byte v7, v0, v5

    .line 457
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 460
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 461
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 462
    .local v1, bcdNumber:[B
    array-length v7, v1

    const/16 v8, 0xb

    if-gt v7, v8, :cond_6

    .line 463
    const/4 v7, 0x0

    add-int/lit8 v8, v4, 0x1

    array-length v9, v1

    invoke-static {v1, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 466
    add-int/lit8 v7, v4, 0x0

    array-length v8, v1

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 468
    add-int/lit8 v7, v4, 0xc

    const/4 v8, -0x1

    aput-byte v8, v0, v7

    .line 470
    add-int/lit8 v7, v4, 0xd

    const/4 v8, -0x1

    aput-byte v8, v0, v7

    .line 486
    .end local v1           #bcdNumber:[B
    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v2

    .line 487
    .local v2, byteTag:[B
    const/4 v6, 0x0

    .line 488
    .local v6, spaceCount:I
    const/4 v5, 0x0

    :goto_3
    array-length v7, v2

    if-ge v5, v7, :cond_7

    aget-byte v7, v2, v5

    const/16 v8, 0x20

    if-ne v7, v8, :cond_5

    add-int/lit8 v6, v6, 0x1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 473
    .end local v2           #byteTag:[B
    .end local v6           #spaceCount:I
    .restart local v1       #bcdNumber:[B
    :cond_6
    const/4 v7, 0x0

    add-int/lit8 v8, v4, 0x1

    const/16 v9, 0xb

    invoke-static {v1, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 475
    add-int/lit8 v7, v4, 0x0

    const/16 v8, 0xb

    aput-byte v8, v0, v7

    .line 477
    add-int/lit8 v7, v4, 0xc

    const/4 v8, -0x1

    aput-byte v8, v0, v7

    .line 480
    add-int/lit8 v7, v4, 0xd

    int-to-byte v8, p2

    aput-byte v8, v0, v7

    .line 483
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MY number > 20 extRecId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 489
    .end local v1           #bcdNumber:[B
    .restart local v2       #byteTag:[B
    .restart local v6       #spaceCount:I
    :cond_7
    const/4 v5, 0x0

    :goto_4
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_9

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_8

    add-int/lit8 v6, v6, -0x1

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 490
    :cond_9
    if-eqz v6, :cond_c

    .line 492
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    const-string v8, "utf-16be"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 496
    :goto_5
    const/4 v7, 0x0

    const/16 v8, -0x80

    aput-byte v8, v0, v7

    .line 497
    array-length v7, v2

    if-ge v7, v4, :cond_b

    .line 498
    const/4 v7, 0x0

    const/4 v8, 0x1

    array-length v9, v2

    invoke-static {v2, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    .end local v2           #byteTag:[B
    .end local v6           #spaceCount:I
    :cond_a
    :goto_6
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 510
    return-object v0

    .line 493
    .restart local v2       #byteTag:[B
    .restart local v6       #spaceCount:I
    :catch_0
    move-exception v3

    .line 494
    .local v3, ex:Ljava/io/UnsupportedEncodingException;
    const-string v7, "RIL_AdnRecord"

    const-string v8, "alphaTag convert byte exception"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 500
    .end local v3           #ex:Ljava/io/UnsupportedEncodingException;
    :cond_b
    const/4 v7, 0x0

    const/4 v8, 0x1

    add-int/lit8 v9, v4, -0x1

    invoke-static {v2, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    .line 503
    :cond_c
    array-length v7, v2

    if-le v7, v4, :cond_d

    .line 504
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v7, v0, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    .line 506
    :cond_d
    const/4 v7, 0x0

    const/4 v8, 0x0

    array-length v9, v2

    invoke-static {v2, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6
.end method

.method public buildAnrEXT1String(I)[B
    .locals 12
    .parameter "recordSize"

    .prologue
    const/16 v11, 0xff

    const/16 v10, 0x14

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 649
    const/4 v2, 0x0

    .line 650
    .local v2, ext1AnrString:[B
    const/4 v1, 0x0

    .line 652
    .local v1, bcdLen:I
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 653
    :cond_0
    new-array v2, p1, [B

    .line 654
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p1, :cond_1

    .line 655
    aput-byte v7, v2, v4

    .line 654
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 657
    :cond_1
    iput v11, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 679
    :goto_1
    return-object v2

    .line 659
    .end local v4           #i:I
    :cond_2
    new-array v2, p1, [B

    .line 660
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_2
    if-ge v4, p1, :cond_3

    .line 661
    aput-byte v7, v2, v4

    .line 660
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 663
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v10, :cond_5

    .line 664
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 665
    .local v0, anrEXT1Number:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v3

    .line 667
    .local v3, ext1BcdNumber:[B
    const/4 v4, 0x0

    :goto_3
    array-length v5, v3

    if-ge v4, v5, :cond_4

    .line 668
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v8, v2, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 667
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 669
    :cond_4
    const/4 v5, 0x0

    aput-byte v9, v2, v5

    .line 671
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    aput-byte v5, v2, v8

    .line 673
    const/16 v5, 0xc

    aput-byte v7, v2, v5

    goto :goto_1

    .line 676
    .end local v0           #anrEXT1Number:Ljava/lang/String;
    .end local v3           #ext1BcdNumber:[B
    :cond_5
    iput v11, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    goto :goto_1
.end method

.method public buildAnrString(IIIII)[B
    .locals 10
    .parameter "recordSize"
    .parameter "recordNumber"
    .parameter "anrNumber"
    .parameter "sfi"
    .parameter "anrExtRecId"

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0xb

    const/4 v7, -0x1

    const/16 v6, 0xf

    const/4 v5, 0x0

    .line 569
    const/4 v2, 0x0

    .line 570
    .local v2, newAnr:[B
    const/4 v0, 0x0

    .line 571
    .local v0, bcdAnr:[B
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 572
    :cond_0
    new-array v2, p1, [B

    .line 573
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 574
    aput-byte v7, v2, v1

    .line 573
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 576
    :cond_1
    const/16 p5, 0xff

    .line 610
    :cond_2
    :goto_1
    iput p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 611
    return-object v2

    .line 578
    .end local v1           #j:I
    :cond_3
    new-array v2, p1, [B

    .line 579
    const/4 v1, 0x0

    .restart local v1       #j:I
    :goto_2
    if-ge v1, p1, :cond_4

    .line 580
    aput-byte v7, v2, v1

    .line 579
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 582
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 583
    array-length v3, v0

    if-gt v3, v8, :cond_5

    .line 584
    const/4 v3, 0x2

    array-length v4, v0

    invoke-static {v0, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 585
    aput-byte v5, v2, v5

    .line 586
    array-length v3, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v9

    .line 587
    const/16 v3, 0xe

    aput-byte v7, v2, v3

    .line 589
    if-le p1, v6, :cond_2

    .line 590
    int-to-byte v3, p4

    aput-byte v3, v2, v6

    .line 593
    const/16 v3, 0x10

    int-to-byte v4, p3

    aput-byte v4, v2, v3

    goto :goto_1

    .line 597
    :cond_5
    const/4 v3, 0x2

    invoke-static {v0, v5, v2, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 598
    aput-byte v5, v2, v5

    .line 599
    aput-byte v8, v2, v9

    .line 600
    const/16 v3, 0xe

    int-to-byte v4, p5

    aput-byte v4, v2, v3

    .line 602
    if-le p1, v6, :cond_2

    .line 603
    int-to-byte v3, p4

    aput-byte v3, v2, v6

    .line 605
    const/16 v3, 0x10

    int-to-byte v4, p3

    aput-byte v4, v2, v3

    goto :goto_1
.end method

.method public buildEXT1String(I)[B
    .locals 12
    .parameter "recordSize"

    .prologue
    const/16 v11, 0xff

    const/16 v10, 0x14

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 615
    const/4 v2, 0x0

    .line 616
    .local v2, ext1AdnString:[B
    const/4 v1, 0x0

    .line 618
    .local v1, bcdLen:I
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 619
    :cond_0
    new-array v2, p1, [B

    .line 620
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p1, :cond_1

    .line 621
    aput-byte v7, v2, v4

    .line 620
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 623
    :cond_1
    iput v11, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 644
    :goto_1
    return-object v2

    .line 625
    .end local v4           #i:I
    :cond_2
    new-array v2, p1, [B

    .line 626
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_2
    if-ge v4, p1, :cond_3

    .line 627
    aput-byte v7, v2, v4

    .line 626
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 629
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v10, :cond_4

    .line 630
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 631
    .local v0, EXT1Number:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v3

    .line 633
    .local v3, ext1BcdNumber:[B
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v8, v2, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 634
    const/4 v5, 0x0

    aput-byte v9, v2, v5

    .line 636
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    aput-byte v5, v2, v8

    .line 638
    const/16 v5, 0xc

    aput-byte v7, v2, v5

    goto :goto_1

    .line 641
    .end local v0           #EXT1Number:Ljava/lang/String;
    .end local v3           #ext1BcdNumber:[B
    :cond_4
    iput v11, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    goto :goto_1
.end method

.method public buildEmailString(IIII)[B
    .locals 7
    .parameter "recordSize"
    .parameter "recordNumber"
    .parameter "Emailadnnumber"
    .parameter "sfi"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 515
    const/4 v2, 0x0

    .line 516
    .local v2, newEmail:[B
    const/4 v0, 0x0

    .line 518
    .local v0, bcdEmail:[B
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v3, v3, v5

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v3, v3, v5

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 519
    :cond_0
    new-array v2, p1, [B

    .line 520
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v1, p1, :cond_3

    .line 521
    aput-byte v6, v2, v1

    .line 520
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    .end local v1           #j:I
    :cond_1
    new-array v2, p1, [B

    .line 525
    const/4 v1, 0x0

    .restart local v1       #j:I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 526
    aput-byte v6, v2, v1

    .line 525
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 528
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-static {v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .line 529
    invoke-static {}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v3

    if-nez v3, :cond_5

    .line 530
    array-length v3, v0

    if-ge v3, p1, :cond_4

    .line 531
    array-length v3, v0

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 543
    :cond_3
    :goto_2
    return-object v2

    .line 533
    :cond_4
    invoke-static {v0, v5, v2, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 535
    :cond_5
    array-length v3, v0

    add-int/lit8 v4, p1, -0x2

    if-ge v3, v4, :cond_6

    .line 536
    array-length v3, v0

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 539
    :goto_3
    add-int/lit8 v3, p1, -0x2

    int-to-byte v4, p4

    aput-byte v4, v2, v3

    .line 540
    add-int/lit8 v3, p1, -0x1

    int-to-byte v4, p3

    aput-byte v4, v2, v3

    goto :goto_2

    .line 538
    :cond_6
    add-int/lit8 v3, p1, -0x2

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3
.end method

.method public buildIapString(IIIII)[B
    .locals 5
    .parameter "recordSizeIap"
    .parameter "IapforEmail"
    .parameter "IapforAnr"
    .parameter "Emailiniap"
    .parameter "Anriniap"

    .prologue
    const/4 v3, -0x1

    .line 550
    const/4 v0, 0x0

    .line 551
    .local v0, Iap:[B
    new-array v0, p1, [B

    .line 552
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 553
    aput-byte v3, v0, v1

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 555
    :cond_0
    if-eq p4, v3, :cond_1

    int-to-byte v2, p2

    aput-byte v2, v0, p4

    .line 556
    :cond_1
    if-eq p5, v3, :cond_2

    int-to-byte v2, p3

    aput-byte v2, v0, p5

    .line 557
    :cond_2
    const-string v2, "RIL_AdnRecord"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildIapString Emailiniap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "IapforEmail= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Anriniap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "IapforAnr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x0

    return v0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getAnr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    return-object v0
.end method

.method public getAnrExtNumber()I
    .locals 1

    .prologue
    .line 302
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    return v0
.end method

.method public getAnrExtRec()Ljava/lang/String;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrRecordExt:Ljava/lang/String;

    return-object v0
.end method

.method public getAnrIndex()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrInxRecord:I

    return v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    return-object v0
.end method

.method public getExtNumber()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getRecid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->srecid:Ljava/lang/String;

    return-object v0
.end method

.method public hasAnrExtendedRecord()Z
    .locals 2

    .prologue
    .line 291
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    .line 272
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnrEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmailEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 4
    .parameter "adn"

    .prologue
    const/4 v3, 0x0

    .line 331
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 332
    const-string v0, ""

    .line 344
    .local v0, email1:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 345
    const-string v1, ""

    .line 357
    .local v1, email2:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 334
    .end local v0           #email1:Ljava/lang/String;
    .end local v1           #email2:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    .line 335
    const-string v0, ""

    .restart local v0       #email1:Ljava/lang/String;
    goto :goto_0

    .line 337
    .end local v0           #email1:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 338
    const-string v0, ""

    .restart local v0       #email1:Ljava/lang/String;
    goto :goto_0

    .line 340
    .end local v0           #email1:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v0, v2, v3

    .restart local v0       #email1:Ljava/lang/String;
    goto :goto_0

    .line 347
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    if-nez v2, :cond_4

    .line 348
    const-string v1, ""

    .restart local v1       #email2:Ljava/lang/String;
    goto :goto_1

    .line 350
    .end local v1           #email2:Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 351
    const-string v1, ""

    .restart local v1       #email2:Ljava/lang/String;
    goto :goto_1

    .line 353
    .end local v1           #email2:Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v3

    .restart local v1       #email2:Ljava/lang/String;
    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 265
    const-string v0, ""

    .line 266
    .local v0, tmpEmail:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 267
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFDNEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUsimEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 5
    .parameter "adn"

    .prologue
    const/4 v2, 0x0

    .line 364
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    if-nez v3, :cond_1

    .line 365
    const-string v0, ""

    .line 377
    .local v0, email1:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 378
    const-string v1, ""

    .line 395
    .local v1, email2:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 367
    .end local v0           #email1:Ljava/lang/String;
    .end local v1           #email2:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-nez v3, :cond_2

    .line 368
    const-string v0, ""

    .restart local v0       #email1:Ljava/lang/String;
    goto :goto_0

    .line 370
    .end local v0           #email1:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 371
    const-string v0, ""

    .restart local v0       #email1:Ljava/lang/String;
    goto :goto_0

    .line 373
    .end local v0           #email1:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    aget-object v0, v3, v2

    .restart local v0       #email1:Ljava/lang/String;
    goto :goto_0

    .line 380
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    if-nez v3, :cond_5

    .line 381
    const-string v1, ""

    .restart local v1       #email2:Ljava/lang/String;
    goto :goto_1

    .line 383
    .end local v1           #email2:Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 384
    const-string v1, ""

    .restart local v1       #email2:Ljava/lang/String;
    goto :goto_1

    .line 386
    .end local v1           #email2:Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, v2

    .restart local v1       #email2:Ljava/lang/String;
    goto :goto_1
.end method

.method public setAlphaTag(Ljava/lang/String;)V
    .locals 0
    .parameter "alphaTag"

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setAnr(Ljava/lang/String;)V
    .locals 0
    .parameter "anr"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setAnrExtNumber(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 299
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 300
    return-void
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 3
    .parameter "emails"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 244
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    .line 246
    if-eqz p1, :cond_0

    .line 247
    aget-object v0, p1, v1

    if-eqz v0, :cond_1

    .line 248
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    goto :goto_0
.end method

.method public setExtNumber(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 239
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->extRecord:I

    .line 240
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setRecid(Ljava/lang/String;)V
    .locals 0
    .parameter "srecid"

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->srecid:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 411
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->efid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->recordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 417
    return-void
.end method
