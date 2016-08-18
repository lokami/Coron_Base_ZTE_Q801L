.class Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ZTEWeather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/ZTEWeather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/ZTEWeather;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEWeather;

    .line 143
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 144
    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEWeather;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->query()V

    .line 177
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, i:I
    const-string v1, "ZTEWeather"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    monitor-enter p0

    .line 150
    if-eqz p3, :cond_2

    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 151
    :cond_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEWeather;

    #getter for: Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->mWeatherIsdefultIndex:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->access$000(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 153
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEWeather;

    #getter for: Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weaterCp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->access$100(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEWeather;

    #getter for: Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->weaterCp:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->access$100(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "accu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEWeather;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEWeather;

    #calls: Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->saveWeatherInfo(Landroid/database/Cursor;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
    invoke-static {v2, p3}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->access$300(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;Landroid/database/Cursor;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-result-object v2

    #setter for: Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->access$202(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;Lcom/android/internal/policy/impl/keyguard/WeatherInfo;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    .line 159
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEWeather;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEWeather;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEWeather;

    #getter for: Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->access$200(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-result-object v3

    #calls: Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->saveOriginalInfo(Lcom/android/internal/policy/impl/keyguard/WeatherInfo;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->access$600(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;Lcom/android/internal/policy/impl/keyguard/WeatherInfo;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-result-object v2

    #setter for: Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->originalInfo:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->access$502(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;Lcom/android/internal/policy/impl/keyguard/WeatherInfo;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    .line 164
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEWeather;

    #calls: Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->updateWidgetView()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->access$700(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;)V

    .line 165
    if-eqz p3, :cond_3

    .line 166
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_3
    monitor-exit p0

    .line 169
    return-void

    .line 157
    :cond_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEWeather;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEWeather;

    #calls: Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->saveHFWeatherInfo(Landroid/database/Cursor;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
    invoke-static {v2, p3}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->access$400(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;Landroid/database/Cursor;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    move-result-object v2

    #setter for: Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->info:Lcom/android/internal/policy/impl/keyguard/WeatherInfo;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->access$202(Lcom/android/internal/policy/impl/keyguard/ZTEWeather;Lcom/android/internal/policy/impl/keyguard/WeatherInfo;)Lcom/android/internal/policy/impl/keyguard/WeatherInfo;

    goto :goto_0

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ZTEWeather$QueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/ZTEWeather;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ZTEWeather;->query()V

    .line 173
    return-void
.end method
