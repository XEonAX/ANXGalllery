.class public Lcom/xiaomi/mipush/sdk/stat/db/HistoryDataDeleteJob;
.super Lcom/xiaomi/mipush/sdk/stat/db/MessageDeleteJob;
.source "HistoryDataDeleteJob.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaomi/mipush/sdk/stat/db/MessageDeleteJob;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static deleteHistoryJob(Landroid/content/Context;Ljava/lang/String;I)Lcom/xiaomi/mipush/sdk/stat/db/HistoryDataDeleteJob;
    .locals 3

    const-string v0, "delete  messages when db size is too bigger"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->i(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/xiaomi/mipush/sdk/stat/db/base/DbManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/stat/db/base/DbManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/xiaomi/mipush/sdk/stat/db/base/DbManager;->getTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rowDataId in (select "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rowDataId from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " order by createTimeStamp asc"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " limit ?)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p0, v1

    new-instance p2, Lcom/xiaomi/mipush/sdk/stat/db/HistoryDataDeleteJob;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "a job build to delete history message"

    invoke-direct {p2, p1, v0, p0, v1}, Lcom/xiaomi/mipush/sdk/stat/db/HistoryDataDeleteJob;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private setLimit(J)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/stat/db/HistoryDataDeleteJob;->mWhereValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/stat/db/HistoryDataDeleteJob;->mWhereValues:[Ljava/lang/String;

    array-length v0, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/stat/db/HistoryDataDeleteJob;->mWhereValues:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    return-void

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public input(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 10

    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/stat/db/HistoryDataDeleteJob;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/mipush/sdk/stat/util/FileUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v2

    sget-wide v4, Lcom/xiaomi/mipush/sdk/stat/db/DataBaseConfig;->MAX_DB_SIZE:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    sub-long v6, v2, v4

    long-to-double v6, v6

    const-wide v8, 0x3ff3333333333333L    # 1.2

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v8

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v4

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v0

    double-to-long v0, v6

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/mipush/sdk/stat/db/HistoryDataDeleteJob;->setLimit(J)V

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/stat/PushStatClientManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/stat/PushStatClientManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "begin delete "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "noUpload messages , because db size is "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "B"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/xiaomi/mipush/sdk/stat/PushStatClientManager;->record(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/xiaomi/mipush/sdk/stat/db/MessageDeleteJob;->input(Landroid/content/Context;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "db size is suitable"

    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->i(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
