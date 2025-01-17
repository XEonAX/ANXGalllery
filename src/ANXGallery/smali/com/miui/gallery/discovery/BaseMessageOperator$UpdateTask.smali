.class public Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;
.super Lcom/miui/gallery/discovery/BaseMessageOperator$CRUDTask;
.source "BaseMessageOperator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/discovery/BaseMessageOperator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "UpdateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/discovery/BaseMessageOperator$CRUDTask<",
        "Landroid/content/ContentValues;",
        ">;"
    }
.end annotation


# instance fields
.field mContentValues:Landroid/content/ContentValues;

.field mMessage:Lcom/miui/gallery/model/DiscoveryMessage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/gallery/model/DiscoveryMessage;Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gallery/discovery/BaseMessageOperator$CRUDTask;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    iput-object p3, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method protected execute(Landroid/content/ContentValues;)Z
    .locals 4

    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/gallery/discovery/BaseMessageOperator;->sDiscoveryMessageUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->getWhereClause()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->getWhereArgs()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected bridge synthetic execute(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->execute(Landroid/content/ContentValues;)Z

    move-result p1

    return p1
.end method

.method protected getWhereArgs()[Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    invoke-virtual {v2}, Lcom/miui/gallery/model/DiscoveryMessage;->getMessageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_0
    return-object v0
.end method

.method protected getWhereClause()Ljava/lang/String;
    .locals 1

    const-string v0, "_id = ?"

    return-object v0
.end method

.method protected prepareData()Landroid/content/ContentValues;
    .locals 4

    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "type"

    iget-object v2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    invoke-virtual {v2}, Lcom/miui/gallery/model/DiscoveryMessage;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "receiveTime"

    iget-object v2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    invoke-virtual {v2}, Lcom/miui/gallery/model/DiscoveryMessage;->getReceiveTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "updateTime"

    iget-object v2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    invoke-virtual {v2}, Lcom/miui/gallery/model/DiscoveryMessage;->getUpdateTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "extraData"

    iget-object v2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    invoke-virtual {v2}, Lcom/miui/gallery/model/DiscoveryMessage;->getMessageDetail()Lcom/miui/gallery/model/DiscoveryMessage$BaseMessageDetail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/gallery/model/DiscoveryMessage$BaseMessageDetail;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "triggerTime"

    iget-object v2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    invoke-virtual {v2}, Lcom/miui/gallery/model/DiscoveryMessage;->getTriggerTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "isConsumed"

    iget-object v2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    invoke-virtual {v2}, Lcom/miui/gallery/model/DiscoveryMessage;->isConsumed()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "expireTime"

    iget-object v2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    invoke-virtual {v2}, Lcom/miui/gallery/model/DiscoveryMessage;->getExpireTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "actionUri"

    iget-object v2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    invoke-virtual {v2}, Lcom/miui/gallery/model/DiscoveryMessage;->getActionUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "messageSource"

    iget-object v2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    invoke-virtual {v2}, Lcom/miui/gallery/model/DiscoveryMessage;->getMessageSource()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "priority"

    iget-object v2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    invoke-virtual {v2}, Lcom/miui/gallery/model/DiscoveryMessage;->getPriority()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "subTitle"

    iget-object v2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    invoke-virtual {v2}, Lcom/miui/gallery/model/DiscoveryMessage;->getSubTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "title"

    iget-object v2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    invoke-virtual {v2}, Lcom/miui/gallery/model/DiscoveryMessage;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    const-string v1, "message"

    iget-object v2, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mMessage:Lcom/miui/gallery/model/DiscoveryMessage;

    invoke-virtual {v2}, Lcom/miui/gallery/model/DiscoveryMessage;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->mContentValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method protected bridge synthetic prepareData()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/gallery/discovery/BaseMessageOperator$UpdateTask;->prepareData()Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method
