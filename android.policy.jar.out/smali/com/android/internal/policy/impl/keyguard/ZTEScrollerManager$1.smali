.class Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager$1;
.super Ljava/lang/Object;
.source "ZTEScrollerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 86
    const-string v4, "ZTEScrollerManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAllStatus.getChildCount()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;
    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->access$000(Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;)Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->access$000(Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;)Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 89
    .local v1, count:I
    const/4 v3, 0x0

    .line 91
    .local v3, scollToScreen:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 92
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->access$000(Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;)Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_3

    .line 94
    instance-of v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardNewEventView;

    if-eqz v4, :cond_1

    .line 95
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/Utilities;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/Utilities;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/Utilities;->hasMissNum()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 96
    move v3, v2

    .line 112
    .end local v0           #child:Landroid/view/View;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->mAllStatus:Lcom/android/internal/policy/impl/keyguard/ZTEScroller;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;->access$000(Lcom/android/internal/policy/impl/keyguard/ZTEScrollerManager;)Lcom/android/internal/policy/impl/keyguard/ZTEScroller;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/policy/impl/keyguard/ZTEScroller;->snapToScreen(IZ)V

    .line 113
    return-void

    .line 101
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    instance-of v4, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;

    if-eqz v4, :cond_2

    .line 103
    add-int/lit8 v3, v2, -0x1

    .line 104
    goto :goto_1

    .line 106
    :cond_2
    add-int/lit8 v3, v2, -0x1

    .line 107
    goto :goto_1

    .line 91
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
