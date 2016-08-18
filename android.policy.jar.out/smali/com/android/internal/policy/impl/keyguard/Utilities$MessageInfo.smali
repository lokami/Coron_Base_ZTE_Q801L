.class public Lcom/android/internal/policy/impl/keyguard/Utilities$MessageInfo;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageInfo"
.end annotation


# static fields
.field public static final ID:I = 0x1

.field public static final PROJECT:[Ljava/lang/String; = null

.field public static final SELECTION:Ljava/lang/String; = "(type = 1 AND read = 0)"

.field public static final SELECTIONARGS:[Ljava/lang/String;

.field public static final SORTORDER:Ljava/lang/String;

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 353
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/Utilities$MessageInfo;->URI:Landroid/net/Uri;

    .line 354
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "body"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/Utilities$MessageInfo;->PROJECT:[Ljava/lang/String;

    .line 357
    sput-object v3, Lcom/android/internal/policy/impl/keyguard/Utilities$MessageInfo;->SELECTIONARGS:[Ljava/lang/String;

    .line 358
    sput-object v3, Lcom/android/internal/policy/impl/keyguard/Utilities$MessageInfo;->SORTORDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
