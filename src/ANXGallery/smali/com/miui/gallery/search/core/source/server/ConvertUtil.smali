.class Lcom/miui/gallery/search/core/source/server/ConvertUtil;
.super Ljava/lang/Object;
.source "ConvertUtil.java"


# direct methods
.method public static createRankInfo(Lcom/miui/gallery/search/core/source/server/ItemRankInfo;)Lcom/miui/gallery/search/core/suggestion/RankInfo;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "ASC"

    iget-object v2, p0, Lcom/miui/gallery/search/core/source/server/ItemRankInfo;->order:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "ASC"

    goto :goto_0

    :cond_1
    const-string v1, "DESC"

    iget-object v2, p0, Lcom/miui/gallery/search/core/source/server/ItemRankInfo;->order:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "DESC"

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/miui/gallery/search/core/source/server/ItemRankInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/miui/gallery/search/core/source/server/ItemRankInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/gallery/search/SearchConstants;->getDefaultOrder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/miui/gallery/search/core/suggestion/RankInfo;

    iget-object v2, p0, Lcom/miui/gallery/search/core/source/server/ItemRankInfo;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/gallery/search/core/source/server/ItemRankInfo;->name:Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/gallery/search/core/source/server/ItemRankInfo;->style:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p0, v0}, Lcom/miui/gallery/search/core/suggestion/RankInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static createRankInfos(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/gallery/search/core/source/server/ItemRankInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/miui/gallery/search/core/suggestion/RankInfo;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/search/core/source/server/ItemRankInfo;

    invoke-static {v1}, Lcom/miui/gallery/search/core/source/server/ConvertUtil;->createRankInfo(Lcom/miui/gallery/search/core/source/server/ItemRankInfo;)Lcom/miui/gallery/search/core/suggestion/RankInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createSuggestion(Lcom/miui/gallery/search/core/source/server/ItemSuggestion;Lcom/miui/gallery/search/core/source/Source;)Lcom/miui/gallery/search/core/suggestion/Suggestion;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/miui/gallery/search/core/source/server/ConvertUtil;->createSuggestion(Lcom/miui/gallery/search/core/source/server/ItemSuggestion;Ljava/util/Map;Lcom/miui/gallery/search/core/source/Source;)Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object p0

    return-object p0
.end method

.method public static createSuggestion(Lcom/miui/gallery/search/core/source/server/ItemSuggestion;Ljava/util/Map;Lcom/miui/gallery/search/core/source/Source;)Lcom/miui/gallery/search/core/suggestion/Suggestion;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/search/core/source/server/ItemSuggestion;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/gallery/search/core/source/Source;",
            ")",
            "Lcom/miui/gallery/search/core/suggestion/Suggestion;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {p1, p2}, Lcom/miui/gallery/search/core/source/server/ConvertUtil;->createSuggestion(Ljava/util/Map;Lcom/miui/gallery/search/core/source/Source;)Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/search/core/source/server/ItemSuggestion;->extraInfo:Ljava/util/Map;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/gallery/search/core/source/server/ItemSuggestion;->extraInfo:Ljava/util/Map;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/miui/gallery/search/core/source/server/ItemSuggestion;->extraInfo:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    move-object p1, v0

    :goto_0
    new-instance v7, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;

    iget-object v1, p0, Lcom/miui/gallery/search/core/source/server/ItemSuggestion;->title:Ljava/lang/String;

    iget v0, p0, Lcom/miui/gallery/search/core/source/server/ItemSuggestion;->resultCount:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/miui/gallery/search/core/source/server/ItemSuggestion;->resultCount:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v2, v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    iget-object v3, p0, Lcom/miui/gallery/search/core/source/server/ItemSuggestion;->icon:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/gallery/search/core/source/server/ItemSuggestion;->intentActionURI:Ljava/lang/String;

    invoke-static {p1}, Lcom/miui/gallery/search/core/source/server/ConvertUtil;->createSuggestionExtras(Ljava/util/Map;)Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    move-result-object v5

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;Lcom/miui/gallery/search/core/source/Source;)V

    return-object v7
.end method

.method public static createSuggestion(Ljava/util/Map;Lcom/miui/gallery/search/core/source/Source;)Lcom/miui/gallery/search/core/suggestion/Suggestion;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/gallery/search/core/source/Source;",
            ")",
            "Lcom/miui/gallery/search/core/suggestion/Suggestion;"
        }
    .end annotation

    invoke-static {p0}, Lcom/miui/gallery/search/core/source/server/ConvertUtil;->createSuggestionExtras(Ljava/util/Map;)Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;

    invoke-direct {v0}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;-><init>()V

    invoke-virtual {v0, p0}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->setSuggestionExtras(Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;)V

    invoke-virtual {v0, p1}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestion;->setSuggestionSource(Lcom/miui/gallery/search/core/source/Source;)V

    return-object v0
.end method

.method public static createSuggestionCursor(Ljava/util/List;Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/gallery/search/core/suggestion/Suggestion;",
            ">;",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            ")",
            "Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;"
        }
    .end annotation

    new-instance v0, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;

    invoke-direct {v0, p1, p0}, Lcom/miui/gallery/search/core/suggestion/ListSuggestionCursor;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/util/List;)V

    return-object v0
.end method

.method public static createSuggestionCursor(Ljava/util/List;Lcom/miui/gallery/search/core/source/Source;Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/gallery/search/core/source/server/ItemSuggestion;",
            ">;",
            "Lcom/miui/gallery/search/core/source/Source;",
            "Lcom/miui/gallery/search/core/QueryInfo;",
            ")",
            "Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/search/core/source/server/ItemSuggestion;

    invoke-static {v1, p1}, Lcom/miui/gallery/search/core/source/server/ConvertUtil;->createSuggestion(Lcom/miui/gallery/search/core/source/server/ItemSuggestion;Lcom/miui/gallery/search/core/source/Source;)Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0, p2}, Lcom/miui/gallery/search/core/source/server/ConvertUtil;->createSuggestionCursor(Ljava/util/List;Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createSuggestionExtras(Ljava/util/Map;)Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/miui/gallery/search/core/suggestion/SuggestionExtras;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;

    invoke-direct {v0, p0}, Lcom/miui/gallery/search/core/suggestion/MapBackedSuggestionExtras;-><init>(Ljava/util/Map;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createSuggestionSection(Lcom/miui/gallery/search/core/QueryInfo;Lcom/miui/gallery/search/core/source/server/SectionedSuggestion;Lcom/miui/gallery/search/core/source/Source;)Lcom/miui/gallery/search/core/suggestion/SuggestionSection;
    .locals 11

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p1, Lcom/miui/gallery/search/core/source/server/SectionedSuggestion;->sectionType:Ljava/lang/String;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "recommand"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/miui/gallery/search/SearchConstants$SectionType;->SECTION_TYPE_RECOMMEND:Lcom/miui/gallery/search/SearchConstants$SectionType;

    invoke-virtual {v0}, Lcom/miui/gallery/search/SearchConstants$SectionType;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v3, v0

    new-instance v0, Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;

    iget-object v1, p1, Lcom/miui/gallery/search/core/source/server/SectionedSuggestion;->items:Ljava/util/List;

    invoke-static {v1, p2, p0}, Lcom/miui/gallery/search/core/source/server/ConvertUtil;->createSuggestionCursor(Ljava/util/List;Lcom/miui/gallery/search/core/source/Source;Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;

    move-result-object v4

    iget-object v5, p1, Lcom/miui/gallery/search/core/source/server/SectionedSuggestion;->dataUrl:Ljava/lang/String;

    iget-object v6, p1, Lcom/miui/gallery/search/core/source/server/SectionedSuggestion;->title:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v1, p1, Lcom/miui/gallery/search/core/source/server/SectionedSuggestion;->moreItem:Lcom/miui/gallery/search/core/source/server/ItemSuggestion;

    invoke-static {v1, p2}, Lcom/miui/gallery/search/core/source/server/ConvertUtil;->createSuggestion(Lcom/miui/gallery/search/core/source/server/ItemSuggestion;Lcom/miui/gallery/search/core/source/Source;)Lcom/miui/gallery/search/core/suggestion/Suggestion;

    move-result-object v8

    iget-object p1, p1, Lcom/miui/gallery/search/core/source/server/SectionedSuggestion;->rankInfos:Ljava/util/List;

    invoke-static {p1}, Lcom/miui/gallery/search/core/source/server/ConvertUtil;->createRankInfos(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v10}, Lcom/miui/gallery/search/core/suggestion/BaseSuggestionSection;-><init>(Lcom/miui/gallery/search/core/QueryInfo;Ljava/lang/String;Lcom/miui/gallery/search/core/suggestion/SuggestionCursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/search/core/suggestion/Suggestion;Ljava/util/List;Landroid/os/Bundle;)V

    return-object v0
.end method
