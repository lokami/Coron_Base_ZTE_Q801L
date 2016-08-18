.class public Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;
.super Landroid/gesture/GestureOverlayView;
.source "ZTEGestureOverlayView.java"

# interfaces
.implements Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView$UnLockRunnable;
    }
.end annotation


# static fields
.field private static final DELAY:J = 0x190L

.field private static final TAG:Ljava/lang/String; = "ZTEGestureOverlayView"


# instance fields
.field mGestureEnable:Z

.field private mGestureLib:Landroid/gesture/GestureLibrary;

.field private mHandler:Landroid/os/Handler;

.field mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

.field private mUnLockRunnable:Ljava/lang/Runnable;

.field startX:I

.field startY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1}, Landroid/gesture/GestureOverlayView;-><init>(Landroid/content/Context;)V

    .line 40
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->startX:I

    .line 41
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->startY:I

    .line 42
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->mGestureEnable:Z

    .line 44
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->mGestureLib:Landroid/gesture/GestureLibrary;

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->mHandler:Landroid/os/Handler;

    .line 47
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->mUnLockRunnable:Ljava/lang/Runnable;

    .line 51
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->init(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/gesture/GestureOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->startX:I

    .line 41
    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->startY:I

    .line 42
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->mGestureEnable:Z

    .line 44
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->mGestureLib:Landroid/gesture/GestureLibrary;

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->mHandler:Landroid/os/Handler;

    .line 47
    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->mUnLockRunnable:Ljava/lang/Runnable;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->init(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 60
    invoke-virtual {p0, p0}, Landroid/gesture/GestureOverlayView;->addOnGesturePerformedListener(Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;)V

    .line 62
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView$UnLockRunnable;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView$UnLockRunnable;-><init>(Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->mUnLockRunnable:Ljava/lang/Runnable;

    .line 64
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->mGestureLib:Landroid/gesture/GestureLibrary;

    .line 285
    return-void
.end method

.method public isGestureViewEnable()Z
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadGestureLib()Z
    .locals 11

    .prologue
    .line 136
    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/policy/impl/keyguard/SdCardUtils;->getInternalSD(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    const-string v8, "/ztegestures/customgetures"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    .local v6, storfile:Ljava/io/File;
    invoke-static {v6}, Landroid/gesture/GestureLibraries;->fromFile(Ljava/io/File;)Landroid/gesture/GestureLibrary;

    move-result-object v5

    .line 143
    .local v5, mGestureLibTemp:Landroid/gesture/GestureLibrary;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/gesture/GestureLibrary;->load()Z

    move-result v7

    if-nez v7, :cond_1

    .line 144
    :cond_0
    const-string v7, "ZTEGestureOverlayView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "test gesturelockscreen in overlayview loadGestureLib faild, storfile=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",mGestureLibTemp="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v7, 0x0

    .line 162
    :goto_0
    return v7

    .line 147
    :cond_1
    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->mGestureLib:Landroid/gesture/GestureLibrary;

    .line 148
    const-string v7, "ZTEGestureOverlayView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "test gesturelockscreen in overlayview loadGestureLib sucess, mGestureLib=="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->mGestureLib:Landroid/gesture/GestureLibrary;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->mGestureLib:Landroid/gesture/GestureLibrary;

    invoke-virtual {v7}, Landroid/gesture/GestureLibrary;->getGestureEntries()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 150
    .local v1, gestureName:Ljava/lang/String;
    const-string v7, "ZTEGestureOverlayView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "For gesturelockscreen in overlayview "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v2, 0x1

    .line 152
    .local v2, i:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->mGestureLib:Landroid/gesture/GestureLibrary;

    invoke-virtual {v7, v1}, Landroid/gesture/GestureLibrary;->getGestures(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gesture/Gesture;

    .line 153
    .local v0, gesture:Landroid/gesture/Gesture;
    const-string v7, "ZTEGestureOverlayView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "test gesturelockscreen in overlayview"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": ID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/gesture/Gesture;->getID()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v7, "ZTEGestureOverlayView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "test gesturelockscreen in overlayview"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Strokes count: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/gesture/Gesture;->getStrokesCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v7, "ZTEGestureOverlayView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "test gesturelockscreen in overlayview"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": Stroke length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/gesture/Gesture;->getLength()F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 162
    .end local v0           #gesture:Landroid/gesture/Gesture;
    .end local v1           #gestureName:Ljava/lang/String;
    .end local v2           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_3
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method public onGesturePerformed(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)V
    .locals 10
    .parameter "view"
    .parameter "gesture"

    .prologue
    const/4 v9, 0x1

    .line 168
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->mGestureLib:Landroid/gesture/GestureLibrary;

    if-nez v4, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->loadGestureLib()Z

    move-result v4

    if-nez v4, :cond_0

    .line 170
    const-string v4, "ZTEGestureOverlayView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "test gesturelockscreen in overlayview onGesturePerformed faild, mGestureLib=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->mGestureLib:Landroid/gesture/GestureLibrary;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->mGestureLib:Landroid/gesture/GestureLibrary;

    .line 172
    invoke-virtual {p0, v9}, Landroid/gesture/GestureOverlayView;->clear(Z)V

    .line 230
    :goto_0
    return-void

    .line 176
    :cond_0
    const/4 v3, 0x0

    .line 178
    .local v3, predictions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/Prediction;>;"
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->mGestureLib:Landroid/gesture/GestureLibrary;

    invoke-virtual {v4, p2}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 182
    :goto_1
    const-string v4, "ZTEGestureOverlayView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "test GestureRevealer in onGesturePerformed,predictions="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 185
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/gesture/Prediction;

    .line 186
    .local v2, prediction:Landroid/gesture/Prediction;
    iget-wide v4, v2, Landroid/gesture/Prediction;->score:D

    const-wide/high16 v6, 0x4000

    cmpl-double v4, v4, v6

    if-lez v4, :cond_3

    .line 192
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 193
    const-string v5, "ZTEGestureOverlayView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "test gesturelockscreen in overlayview prediction "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/gesture/Prediction;

    iget-object v4, v4, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " - score = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/gesture/Prediction;

    iget-wide v7, v4, Landroid/gesture/Prediction;->score:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 179
    .end local v1           #i:I
    .end local v2           #prediction:Landroid/gesture/Prediction;
    :catch_0
    move-exception v0

    .line 180
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "ZTEGestureOverlayView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "test GestureRevealer in onGesturePerformed,exception ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 197
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i:I
    .restart local v2       #prediction:Landroid/gesture/Prediction;
    :cond_1
    const-string v4, "ZTEGestureOverlayView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gesturelockscreen in overlayview 000 :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " match!!! Score="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v2, Landroid/gesture/Prediction;->score:D

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v4, "com.zte.gesture/com.zte.gesture.GotoUnlock"

    iget-object v5, v2, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 200
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    invoke-interface {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;->gotoUnlock()V

    .line 229
    .end local v1           #i:I
    .end local v2           #prediction:Landroid/gesture/Prediction;
    :goto_3
    invoke-virtual {p0, v9}, Landroid/gesture/GestureOverlayView;->clear(Z)V

    goto/16 :goto_0

    .line 202
    .restart local v1       #i:I
    .restart local v2       #prediction:Landroid/gesture/Prediction;
    :cond_2
    iget-object v4, v2, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->startActivitySafely(Ljava/lang/String;)Z

    goto :goto_3

    .line 222
    .end local v1           #i:I
    :cond_3
    const-string v4, "ZTEGestureOverlayView"

    const-string v5, "gesturelockscreen in overlayview No gestrue match 111  !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 227
    .end local v2           #prediction:Landroid/gesture/Prediction;
    :cond_4
    const-string v4, "ZTEGestureOverlayView"

    const-string v5, "gesturelockscreen in overlayview No gestrue match 222  !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public setGestureViewEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 77
    if-eqz p1, :cond_0

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardCallback;

    .line 74
    return-void
.end method

.method startActivitySafely(Ljava/lang/String;)Z
    .locals 6
    .parameter "componentNameString"

    .prologue
    .line 255
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 256
    .local v0, intent:Landroid/content/Intent;
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 257
    .local v1, mComponentName:Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 258
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 260
    :try_start_0
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 261
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->mUnLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 262
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->mUnLockRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    const/4 v2, 0x1

    .line 274
    :goto_0
    return v2

    .line 267
    :catch_0
    move-exception v2

    .line 274
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 264
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method startActivitySafely(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "packagename"
    .parameter "classname"

    .prologue
    .line 232
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 233
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .local v1, mComponentName:Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 235
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 237
    :try_start_0
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 238
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->mUnLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 239
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ZTEGestureOverlayView;->mUnLockRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    const/4 v2, 0x1

    .line 251
    :goto_0
    return v2

    .line 244
    :catch_0
    move-exception v2

    .line 251
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 241
    :catch_1
    move-exception v2

    goto :goto_1
.end method
