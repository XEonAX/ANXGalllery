.class public Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$ErrorHandler;
.super Ljava/lang/Object;
.source "SyncPeopleFaceFromServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorHandler"
.end annotation


# direct methods
.method private static cleanPeopleFaceTables()V
    .locals 11

    invoke-static {}, Lcom/miui/gallery/provider/GalleryDBHelper;->getPeopleFaceTables()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    sget-object v5, Lcom/miui/gallery/cloud/GalleryCloudUtils;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v5}, Lcom/miui/gallery/util/GalleryUtils;->safeDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    invoke-static {}, Lcom/miui/gallery/util/Log2File;->getInstance()Lcom/miui/gallery/util/Log2File;

    move-result-object v7

    const-string v8, "syncface"

    const-string v9, "clean %s finished, deleted rows=%d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v4, v10, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v10, v6

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v8, v4, v5}, Lcom/miui/gallery/util/Log2File;->flushLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static simpleCheckWhetherNeedCleanTables(Lorg/json/JSONObject;Landroid/accounts/Account;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "code"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {}, Lcom/miui/gallery/util/Log2File;->getInstance()Lcom/miui/gallery/util/Log2File;

    move-result-object p0

    const-string p1, "syncface"

    const-string v1, "don\'t have json_tag_code"

    invoke-virtual {p0, p1, v1, v2}, Lcom/miui/gallery/util/Log2File;->flushLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0

    :cond_1
    const-string v1, "code"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {}, Lcom/miui/gallery/util/Log2File;->getInstance()Lcom/miui/gallery/util/Log2File;

    move-result-object v1

    const-string v3, "syncface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSON_TAG_CODE is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Lcom/miui/gallery/util/Log2File;->flushLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const v1, 0xcb20

    if-ne p0, v1, :cond_2

    invoke-static {}, Lcom/miui/gallery/cloud/peopleface/SyncPeopleFaceFromServer$ErrorHandler;->cleanPeopleFaceTables()V

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->setFaceSyncWatermark(Landroid/accounts/Account;J)V

    const-string p0, ""

    invoke-static {p1, p0}, Lcom/miui/gallery/cloud/GalleryCloudSyncTagUtils;->setFaceSyncToken(Landroid/accounts/Account;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method
