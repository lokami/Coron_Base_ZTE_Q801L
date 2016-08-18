.class public Lcom/android/internal/policy/impl/keyguard/Utilities$EmailInfo;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmailInfo"
.end annotation


# static fields
.field public static final ID:I = 0x2

.field public static final PROJECT:[Ljava/lang/String; = null

.field public static final SELECTION:Ljava/lang/String; = "unreadCount > 0"

.field public static final SELECTIONARGS:[Ljava/lang/String;

.field public static final SORTORDER:Ljava/lang/String;

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 362
    const-string v0, "content://com.android.email.provider/mailbox/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/Utilities$EmailInfo;->URI:Landroid/net/Uri;

    .line 363
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "unreadCount"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/Utilities$EmailInfo;->PROJECT:[Ljava/lang/String;

    .line 365
    sput-object v3, Lcom/android/internal/policy/impl/keyguard/Utilities$EmailInfo;->SELECTIONARGS:[Ljava/lang/String;

    .line 366
    sput-object v3, Lcom/android/internal/policy/impl/keyguard/Utilities$EmailInfo;->SORTORDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
