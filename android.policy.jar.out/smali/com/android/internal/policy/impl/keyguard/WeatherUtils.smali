.class Lcom/android/internal/policy/impl/keyguard/WeatherUtils;
.super Ljava/lang/Object;
.source "WeatherUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getObservationTime(Ljava/lang/String;)J
    .locals 8
    .parameter "dateStr"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 31
    if-nez p0, :cond_1

    .line 45
    :cond_0
    :goto_0
    return-wide v2

    .line 32
    :cond_1
    const-string v4, "/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 33
    .local v1, dateArray:[Ljava/lang/String;
    array-length v4, v1

    if-le v4, v6, :cond_0

    .line 34
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 35
    .local v0, ca:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 36
    aget-object v2, v1, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v7, v2}, Ljava/util/Calendar;->set(II)V

    .line 37
    aget-object v2, v1, v5

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 38
    const/4 v2, 0x5

    aget-object v3, v1, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 39
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 40
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 41
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 42
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 43
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    goto :goto_0
.end method

.method public static getStartTime(J)J
    .locals 3
    .parameter "time"

    .prologue
    const/4 v2, 0x0

    .line 21
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 22
    .local v0, ca:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 23
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 24
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 25
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 26
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 27
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 28
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method
