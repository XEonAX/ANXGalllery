.class public final synthetic Lcom/miui/gallery/movie/utils/-$$Lambda$MovieDownloadManager$ZlthSabCRDUJGeKKRa9jztf6u9E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/gallery/movie/entity/MovieResource;

.field private final synthetic f$1:Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/gallery/movie/entity/MovieResource;Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gallery/movie/utils/-$$Lambda$MovieDownloadManager$ZlthSabCRDUJGeKKRa9jztf6u9E;->f$0:Lcom/miui/gallery/movie/entity/MovieResource;

    iput-object p2, p0, Lcom/miui/gallery/movie/utils/-$$Lambda$MovieDownloadManager$ZlthSabCRDUJGeKKRa9jztf6u9E;->f$1:Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/gallery/movie/utils/-$$Lambda$MovieDownloadManager$ZlthSabCRDUJGeKKRa9jztf6u9E;->f$0:Lcom/miui/gallery/movie/entity/MovieResource;

    iget-object v1, p0, Lcom/miui/gallery/movie/utils/-$$Lambda$MovieDownloadManager$ZlthSabCRDUJGeKKRa9jztf6u9E;->f$1:Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/movie/utils/MovieDownloadManager;->lambda$downloadResource$119(Lcom/miui/gallery/movie/entity/MovieResource;Lcom/miui/gallery/movie/ui/listener/MovieDownloadListener;Ljava/lang/Integer;)V

    return-void
.end method
