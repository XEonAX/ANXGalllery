.class Lcom/miui/gallery/cleaner/SimilarScanner$2;
.super Ljava/lang/Object;
.source "SimilarScanner.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/cleaner/SimilarScanner;->getSimilarGroups()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/cleaner/SimilarScanner;


# direct methods
.method constructor <init>(Lcom/miui/gallery/cleaner/SimilarScanner;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/cleaner/SimilarScanner$2;->this$0:Lcom/miui/gallery/cleaner/SimilarScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;)I
    .locals 4

    invoke-virtual {p1}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;->getBestImage()Lcom/miui/gallery/assistant/model/TinyImageFeature;

    move-result-object p1

    invoke-virtual {p2}, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;->getBestImage()Lcom/miui/gallery/assistant/model/TinyImageFeature;

    move-result-object p2

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getImageDateTime()J

    move-result-wide v2

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/miui/gallery/assistant/model/TinyImageFeature;->getImageDateTime()J

    move-result-wide v0

    :goto_1
    cmp-long p1, v2, v0

    if-lez p1, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    cmp-long p1, v2, v0

    if-gez p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;

    check-cast p2, Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/cleaner/SimilarScanner$2;->compare(Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;Lcom/miui/gallery/assistant/cache/ImageFeatureCacheManager$GroupBestImage;)I

    move-result p1

    return p1
.end method
