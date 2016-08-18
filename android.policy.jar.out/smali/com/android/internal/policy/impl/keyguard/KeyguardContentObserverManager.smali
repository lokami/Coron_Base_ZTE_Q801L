.class public Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;
.super Ljava/lang/Object;
.source "KeyguardContentObserverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$updateImageLockCallback;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$InfoRefreshCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MSG_QUERY_CALENDER:I = 0xcc

.field private static final MSG_QUERY_CALLS:I = 0xcb

.field private static final MSG_QUERY_EMAIL:I = 0xca

.field private static final MSG_QUERY_MMS:I = 0xc9

.field private static final MSG_UPDATE_ICON:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "KeyguardContentObserverManager"

.field private static mUniqueInstance:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

.field private static sInstance:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;


# instance fields
.field private isRegisterContentObserver:Z

.field private isRegisterUpdateIconReceiver:Z

.field private isUnRegisterContentObserver:Z

.field private isUnRegisterUpdateIconReceiver:Z

.field private mCalendarObserver:Landroid/database/ContentObserver;

.field private mCalendarRespondingOnChange:Z

.field private mCallsRespondingOnChange:Z

.field private mContext:Landroid/content/Context;

.field private mEmailObserver:Landroid/database/ContentObserver;

.field private mEmailRespondingOnChange:Z

.field private mHandler:Landroid/os/Handler;

.field private mInfoCalendarCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$InfoRefreshCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoCallCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$InfoRefreshCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoEmailCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$InfoRefreshCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoMessageCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$InfoRefreshCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageRespondingOnChange:Z

.field private mMessagesObserver:Landroid/database/ContentObserver;

.field private mMissedCallsObserver:Landroid/database/ContentObserver;

.field mUpdateIconReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdateImageLockCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$updateImageLockCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mUtilities:Lcom/android/internal/policy/impl/keyguard/Utilities;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoCallCallbacks:Ljava/util/ArrayList;

    .line 40
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoMessageCallbacks:Ljava/util/ArrayList;

    .line 41
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoEmailCallbacks:Ljava/util/ArrayList;

    .line 42
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoCalendarCallbacks:Ljava/util/ArrayList;

    .line 43
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mUpdateImageLockCallbacks:Ljava/util/ArrayList;

    .line 51
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->isRegisterUpdateIconReceiver:Z

    .line 52
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->isUnRegisterUpdateIconReceiver:Z

    .line 53
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->isRegisterContentObserver:Z

    .line 54
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->isUnRegisterContentObserver:Z

    .line 94
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mUpdateIconReceiver:Landroid/content/BroadcastReceiver;

    .line 174
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mCallsRespondingOnChange:Z

    .line 175
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$3;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mMissedCallsObserver:Landroid/database/ContentObserver;

    .line 197
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mMessageRespondingOnChange:Z

    .line 198
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$4;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$4;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mMessagesObserver:Landroid/database/ContentObserver;

    .line 219
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mEmailRespondingOnChange:Z

    .line 220
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$5;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$5;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mEmailObserver:Landroid/database/ContentObserver;

    .line 242
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mCalendarRespondingOnChange:Z

    .line 243
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$6;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$6;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mCalendarObserver:Landroid/database/ContentObserver;

    .line 57
    const-string v1, "KeyguardContentObserverManager"

    const-string v2, "KeyguardContentObserverManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/Utilities;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/Utilities;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mUtilities:Lcom/android/internal/policy/impl/keyguard/Utilities;

    .line 60
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->isRegisterContentObserver:Z

    if-nez v1, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->registerContentObserver()V

    .line 62
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->isRegisterContentObserver:Z

    .line 64
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 65
    .local v0, mUpdateIconFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->isRegisterUpdateIconReceiver:Z

    if-nez v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mUpdateIconReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->isRegisterUpdateIconReceiver:Z

    .line 70
    :cond_1
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mHandler:Landroid/os/Handler;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->handleQueryMMS()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->handleQueryEmail()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->handleQueryCalls()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->handleQueryCalendar()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mCallsRespondingOnChange:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mCallsRespondingOnChange:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mMessageRespondingOnChange:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mMessageRespondingOnChange:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mEmailRespondingOnChange:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mEmailRespondingOnChange:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mCalendarRespondingOnChange:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mCalendarRespondingOnChange:Z

    return p1
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 110
    const-class v1, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->sInstance:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->sInstance:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    .line 113
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->sInstance:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleQueryCalendar()V
    .locals 2

    .prologue
    .line 261
    const-string v0, "KeyguardContentObserverManager"

    const-string v1, " handleQueryCalendar"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mUtilities:Lcom/android/internal/policy/impl/keyguard/Utilities;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/Utilities;->startQuery(I)V

    .line 263
    return-void
.end method

.method private handleQueryCalls()V
    .locals 2

    .prologue
    .line 194
    const-string v0, "KeyguardContentObserverManager"

    const-string v1, " handleQueryCalls"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mUtilities:Lcom/android/internal/policy/impl/keyguard/Utilities;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/Utilities;->startQuery(I)V

    .line 196
    return-void
.end method

.method private handleQueryEmail()V
    .locals 2

    .prologue
    .line 238
    const-string v0, "KeyguardContentObserverManager"

    const-string v1, " handleQueryEmail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mUtilities:Lcom/android/internal/policy/impl/keyguard/Utilities;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/Utilities;->startQuery(I)V

    .line 241
    return-void
.end method

.method private handleQueryMMS()V
    .locals 2

    .prologue
    .line 216
    const-string v0, "KeyguardContentObserverManager"

    const-string v1, " handleQueryMMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mUtilities:Lcom/android/internal/policy/impl/keyguard/Utilities;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/Utilities;->startQuery(I)V

    .line 218
    return-void
.end method

.method private registerContentObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 142
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 143
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mMessagesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 144
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mMissedCallsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 145
    const-string v1, "content://com.android.email.provider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mEmailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 146
    sget-object v1, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mCalendarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 147
    return-void
.end method

.method private removeCallback()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoCallCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoCallCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 158
    :cond_0
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoCallCallbacks:Ljava/util/ArrayList;

    .line 159
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoMessageCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoMessageCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 160
    :cond_1
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoMessageCallbacks:Ljava/util/ArrayList;

    .line 161
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoEmailCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoEmailCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 162
    :cond_2
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoEmailCallbacks:Ljava/util/ArrayList;

    .line 163
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoCalendarCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoCalendarCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    :cond_3
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoCalendarCallbacks:Ljava/util/ArrayList;

    .line 165
    return-void
.end method

.method private unRegisterContentObserver()V
    .locals 2

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 150
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mMissedCallsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 151
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mMessagesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 152
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mEmailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 153
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mCalendarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 155
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 127
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->isUnRegisterUpdateIconReceiver:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->isRegisterUpdateIconReceiver:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mUpdateIconReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->isUnRegisterUpdateIconReceiver:Z

    .line 131
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->isUnRegisterContentObserver:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->isRegisterContentObserver:Z

    if-eqz v0, :cond_1

    .line 132
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->unRegisterContentObserver()V

    .line 133
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->isUnRegisterContentObserver:Z

    .line 135
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->sInstance:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    .line 136
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->removeCallback()V

    .line 137
    return-void
.end method

.method public getUtilities()Lcom/android/internal/policy/impl/keyguard/Utilities;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mUtilities:Lcom/android/internal/policy/impl/keyguard/Utilities;

    return-object v0
.end method

.method public handleCalendarRefresh(I)V
    .locals 4
    .parameter "num"

    .prologue
    .line 315
    const-string v1, "KeyguardContentObserverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " handleCalendarRefresh"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    if-lez p1, :cond_0

    .line 317
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoCalendarCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoCalendarCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$InfoRefreshCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$InfoRefreshCallback;->onRefreshCalendarInfo(I)V

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 321
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public handleCallRefresh(I)V
    .locals 4
    .parameter "num"

    .prologue
    .line 291
    const-string v1, "KeyguardContentObserverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " handleCallRefresh"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    if-lez p1, :cond_0

    .line 293
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoCallCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoCallCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$InfoRefreshCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$InfoRefreshCallback;->onRefreshCallInfo(I)V

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 297
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public handleEmailRefresh(I)V
    .locals 4
    .parameter "num"

    .prologue
    .line 307
    const-string v1, "KeyguardContentObserverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " handleEmailRefresh"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    if-lez p1, :cond_0

    .line 309
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoEmailCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoEmailCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$InfoRefreshCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$InfoRefreshCallback;->onRefreshEmailInfo(I)V

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 313
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public handleMessageRefresh(I)V
    .locals 4
    .parameter "num"

    .prologue
    .line 299
    const-string v1, "KeyguardContentObserverManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " handleMessageRefresh"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    if-lez p1, :cond_0

    .line 301
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoMessageCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 302
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoMessageCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$InfoRefreshCallback;

    invoke-interface {v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$InfoRefreshCallback;->onRefreshMessageInfo(I)V

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method public handleUpdateImageLock()V
    .locals 3

    .prologue
    .line 323
    const-string v1, "KeyguardContentObserverManager"

    const-string v2, " handleQueryCalendar"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mUpdateImageLockCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mUpdateImageLockCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$updateImageLockCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$updateImageLockCallback;->onRefreshImageLock()V

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 116
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->isUnRegisterUpdateIconReceiver:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->isRegisterUpdateIconReceiver:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mUpdateIconReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 118
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->isUnRegisterUpdateIconReceiver:Z

    .line 120
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->isUnRegisterContentObserver:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->isRegisterContentObserver:Z

    if-eqz v0, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->unRegisterContentObserver()V

    .line 122
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->isUnRegisterContentObserver:Z

    .line 124
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->sInstance:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    .line 125
    return-void
.end method

.method public queryAndUpdateMissedNumber()V
    .locals 2

    .prologue
    .line 167
    const-string v0, "KeyguardContentObserverManager"

    const-string v1, "queryAndUpdateMissedNumber"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mUtilities:Lcom/android/internal/policy/impl/keyguard/Utilities;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/Utilities;->startQuery(I)V

    .line 169
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mUtilities:Lcom/android/internal/policy/impl/keyguard/Utilities;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/Utilities;->startQuery(I)V

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mUtilities:Lcom/android/internal/policy/impl/keyguard/Utilities;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/Utilities;->startQuery(I)V

    .line 171
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mUtilities:Lcom/android/internal/policy/impl/keyguard/Utilities;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/Utilities;->startQuery(I)V

    .line 173
    return-void
.end method

.method public registerInfoCalendarCallbacks(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$InfoRefreshCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 281
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoCalendarCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoCalendarCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    :cond_0
    return-void
.end method

.method public registerInfoCallCallbacks(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$InfoRefreshCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 266
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoCallCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoCallCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_0
    return-void
.end method

.method public registerInfoEmailCallbacks(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$InfoRefreshCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 276
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoEmailCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoEmailCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_0
    return-void
.end method

.method public registerInfoMessageCallbacks(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$InfoRefreshCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 271
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoMessageCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mInfoMessageCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_0
    return-void
.end method

.method public registerUpdateImageLockCallbacks(Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager$updateImageLockCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 286
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mUpdateImageLockCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->mUpdateImageLockCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_0
    return-void
.end method
