.class Lcom/android/internal/policy/impl/keyguard/Utilities$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "Utilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/Utilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/Utilities;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/Utilities;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/Utilities$QueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/Utilities;

    .line 378
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 379
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 427
    const-string v0, "Utilities"

    const-string v1, "onDeleteComplete: requery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 383
    const-string v2, "Utilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Query Complete:token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cookie="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " c="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    if-eqz p3, :cond_0

    .line 385
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/Utilities$QueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/Utilities;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/Utilities$QueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/Utilities;

    #getter for: Lcom/android/internal/policy/impl/keyguard/Utilities;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/Utilities;->access$100(Lcom/android/internal/policy/impl/keyguard/Utilities;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    move-result-object v3

    #setter for: Lcom/android/internal/policy/impl/keyguard/Utilities;->mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/Utilities;->access$002(Lcom/android/internal/policy/impl/keyguard/Utilities;Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    .line 386
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 387
    .local v1, number:I
    packed-switch p1, :pswitch_data_0

    .line 415
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/Utilities$QueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/Utilities;

    #getter for: Lcom/android/internal/policy/impl/keyguard/Utilities;->mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/Utilities;->access$000(Lcom/android/internal/policy/impl/keyguard/Utilities;)Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->handleUpdateImageLock()V

    .line 416
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 418
    .end local v1           #number:I
    :cond_0
    return-void

    .line 389
    .restart local v1       #number:I
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/Utilities$QueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/Utilities;

    iput v1, v2, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfMissdeCall:I

    .line 390
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/Utilities$QueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/Utilities;

    #getter for: Lcom/android/internal/policy/impl/keyguard/Utilities;->mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/Utilities;->access$000(Lcom/android/internal/policy/impl/keyguard/Utilities;)Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->handleCallRefresh(I)V

    goto :goto_0

    .line 393
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/Utilities$QueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/Utilities;

    iput v1, v2, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfUnreadMessage:I

    .line 394
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/Utilities$QueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/Utilities;

    #getter for: Lcom/android/internal/policy/impl/keyguard/Utilities;->mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/Utilities;->access$000(Lcom/android/internal/policy/impl/keyguard/Utilities;)Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->handleMessageRefresh(I)V

    goto :goto_0

    .line 397
    :pswitch_2
    const/4 v1, 0x0

    .line 399
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 400
    const-string v2, "displayName"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "INBOX"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 401
    const-string v2, "unreadCount"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 404
    :catch_0
    move-exception v0

    .line 405
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Utilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/Utilities$QueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/Utilities;

    iput v1, v2, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfUnreadEmail:I

    .line 408
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/Utilities$QueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/Utilities;

    #getter for: Lcom/android/internal/policy/impl/keyguard/Utilities;->mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/Utilities;->access$000(Lcom/android/internal/policy/impl/keyguard/Utilities;)Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->handleEmailRefresh(I)V

    goto :goto_0

    .line 411
    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/Utilities$QueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/Utilities;

    iput v1, v2, Lcom/android/internal/policy/impl/keyguard/Utilities;->mNumOfMissdeCalendar:I

    .line 412
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/Utilities$QueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/Utilities;

    #getter for: Lcom/android/internal/policy/impl/keyguard/Utilities;->mKeyguardContentObserverManager:Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/Utilities;->access$000(Lcom/android/internal/policy/impl/keyguard/Utilities;)Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardContentObserverManager;->handleCalendarRefresh(I)V

    goto/16 :goto_0

    .line 387
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 422
    const-string v0, "Utilities"

    const-string v1, "onUpdateComplete: requery"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void
.end method
