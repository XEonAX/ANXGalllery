.class public abstract Lcom/miui/gallery/search/core/source/AbstractSource;
.super Ljava/lang/Object;
.source "AbstractSource.java"

# interfaces
.implements Lcom/miui/gallery/search/core/source/Source;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPriority(Lcom/miui/gallery/search/core/QueryInfo;)I
    .locals 0

    const/4 p1, 0x4

    return p1
.end method

.method public bridge synthetic getSuggestions(Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/result/SuggestionResult;
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/gallery/search/core/source/Source$-CC;->$default$getSuggestions(Lcom/miui/gallery/search/core/source/Source;Lcom/miui/gallery/search/core/QueryInfo;)Lcom/miui/gallery/search/core/result/SuggestionResult;

    move-result-object p1

    return-object p1
.end method

.method public abstract getSupportSearchTypes()[Lcom/miui/gallery/search/SearchConstants$SearchType;
.end method

.method public match(Lcom/miui/gallery/search/core/QueryInfo;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/miui/gallery/search/core/QueryInfo;->getSearchType()Lcom/miui/gallery/search/SearchConstants$SearchType;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/gallery/search/core/source/AbstractSource;->getSupportSearchTypes()[Lcom/miui/gallery/search/SearchConstants$SearchType;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v2, v1

    if-lez v2, :cond_2

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {p1}, Lcom/miui/gallery/search/core/QueryInfo;->getSearchType()Lcom/miui/gallery/search/SearchConstants$SearchType;

    move-result-object v5

    if-ne v4, v5, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v0
.end method
