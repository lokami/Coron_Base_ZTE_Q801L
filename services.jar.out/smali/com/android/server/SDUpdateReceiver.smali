.class public Lcom/android/server/SDUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SDUpdateReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SDUpdateReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 33
    const-string v1, "SDUpdateReceiver"

    const-string v2, "!!! receive update intent !!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v0, Lcom/android/server/SDUpdateReceiver$1;

    const-string v1, "sdupdate"

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/android/server/SDUpdateReceiver$1;-><init>(Lcom/android/server/SDUpdateReceiver;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)V

    .line 48
    .local v0, thr:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 49
    return-void
.end method
