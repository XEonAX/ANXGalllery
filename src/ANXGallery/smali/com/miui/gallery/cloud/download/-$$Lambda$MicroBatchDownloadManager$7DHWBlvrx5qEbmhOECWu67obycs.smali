.class public final synthetic Lcom/miui/gallery/cloud/download/-$$Lambda$MicroBatchDownloadManager$7DHWBlvrx5qEbmhOECWu67obycs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/miui/gallery/cloud/download/-$$Lambda$MicroBatchDownloadManager$7DHWBlvrx5qEbmhOECWu67obycs;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/gallery/cloud/download/-$$Lambda$MicroBatchDownloadManager$7DHWBlvrx5qEbmhOECWu67obycs;

    invoke-direct {v0}, Lcom/miui/gallery/cloud/download/-$$Lambda$MicroBatchDownloadManager$7DHWBlvrx5qEbmhOECWu67obycs;-><init>()V

    sput-object v0, Lcom/miui/gallery/cloud/download/-$$Lambda$MicroBatchDownloadManager$7DHWBlvrx5qEbmhOECWu67obycs;->INSTANCE:Lcom/miui/gallery/cloud/download/-$$Lambda$MicroBatchDownloadManager$7DHWBlvrx5qEbmhOECWu67obycs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Lcom/miui/gallery/cloud/download/MicroBatchDownloadManager;->lambda$ensureSubscribed$40(Ljava/util/List;)Z

    move-result p1

    return p1
.end method
