.class Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager$1;
.super Ljava/lang/Object;
.source "ZTEWaveScrollerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 73
    const-string v0, "ZTEWaveScrollerManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUnlockAppPromptDraw="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->mUnlockAppPromptDraw:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->access$000(Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager$1;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;

    #getter for: Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->mUnlockAppPromptDraw:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;->access$000(Lcom/android/internal/policy/impl/keyguard/ZTEWaveScrollerManager;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 75
    return-void
.end method
