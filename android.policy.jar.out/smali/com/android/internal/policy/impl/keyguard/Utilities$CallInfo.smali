.class public Lcom/android/internal/policy/impl/keyguard/Utilities$CallInfo;
.super Ljava/lang/Object;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallInfo"
.end annotation


# static fields
.field public static final ID:I = 0x0

.field public static final PROJECT:[Ljava/lang/String; = null

.field public static final SELECTION:Ljava/lang/String; = "(type=3 AND new>0 )"

.field public static final SELECTIONARGS:[Ljava/lang/String;

.field public static final SORTORDER:Ljava/lang/String;

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 345
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/Utilities$CallInfo;->URI:Landroid/net/Uri;

    .line 346
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/Utilities$CallInfo;->PROJECT:[Ljava/lang/String;

    .line 348
    sput-object v3, Lcom/android/internal/policy/impl/keyguard/Utilities$CallInfo;->SELECTIONARGS:[Ljava/lang/String;

    .line 349
    sput-object v3, Lcom/android/internal/policy/impl/keyguard/Utilities$CallInfo;->SORTORDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
