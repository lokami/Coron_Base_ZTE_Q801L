.class Lcom/android/server/MountService$6;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$volumes:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1131
    iput-object p1, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    iput-object p2, p0, Lcom/android/server/MountService$6;->val$volumes:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1136
    :try_start_0
    const-string v4, "MountService"

    const-string v5, "Disabling UMS after cable disconnect"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    iget-object v4, p0, Lcom/android/server/MountService$6;->val$volumes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1138
    .local v2, path:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v4, v2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "shared"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1139
    iget-object v4, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    const-string v5, "ums"

    const/4 v6, 0x0

    #calls: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v4, v2, v5, v6}, Lcom/android/server/MountService;->access$200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1140
    iget-object v4, p0, Lcom/android/server/MountService$6;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->doMountVolume(Ljava/lang/String;)I
    invoke-static {v4, v2}, Lcom/android/server/MountService;->access$1900(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v3

    .line 1141
    .local v3, rc:I
    if-eqz v3, :cond_0

    .line 1142
    const-string v4, "MountService"

    const-string v5, "Failed to remount {%s} on UMS enabled-disconnect (%d)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1148
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #path:Ljava/lang/String;
    .end local v3           #rc:I
    :catch_0
    move-exception v0

    .line 1149
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "MountService"

    const-string v5, "Failed to mount media on UMS enabled-disconnect"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1151
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_1
    return-void
.end method
