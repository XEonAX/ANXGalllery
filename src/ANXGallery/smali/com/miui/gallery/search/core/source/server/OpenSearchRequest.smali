.class public Lcom/miui/gallery/search/core/source/server/OpenSearchRequest;
.super Ljava/lang/Object;
.source "OpenSearchRequest.java"


# direct methods
.method public static request()I
    .locals 3

    invoke-static {}, Lcom/miui/gallery/search/utils/SearchUtils;->getXiaomiId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/gallery/util/PrivacyAgreementUtils;->isCloudServiceAgreementEnable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x4

    return v0

    :cond_1
    invoke-static {}, Lcom/miui/gallery/cloud/NetworkUtils;->isNetworkConnected()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    new-instance v1, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    invoke-direct {v1}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;-><init>()V

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setMethod(I)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->getDefaultUserPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setUserPath(Ljava/lang/String;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setUserId(Ljava/lang/String;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v0

    const-string v1, "hint"

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setQueryAppendPath(Ljava/lang/String;)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->setUseCache(Z)Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest$Builder;->build()Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lcom/miui/gallery/search/core/source/server/ServerSearchRequest;->executeSync()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    const-string v0, "search"

    const-string v2, "request_open_search_succeeded"

    invoke-static {v0, v2}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const-string v1, "OpenSearchRequest"

    invoke-static {v1, v0}, Lcom/miui/gallery/search/utils/SearchLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    const-string v0, "search"

    const-string v1, "request_open_search_failed"

    invoke-static {v0, v1}, Lcom/miui/gallery/util/GallerySamplingStatHelper;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9

    return v0
.end method
