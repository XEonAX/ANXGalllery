.class Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask$2;
.super Ljava/lang/Object;
.source "CheckDownloadOriginHelper.java"

# interfaces
.implements Lcom/miui/gallery/util/SafeDBUtil$QueryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;->queryMediaItemByIds()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/util/SafeDBUtil$QueryHandler<",
        "Ljava/util/List<",
        "Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;


# direct methods
.method constructor <init>(Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask$2;->this$1:Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic handle(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/miui/gallery/util/CheckDownloadOriginHelper$CheckOriginTask$2;->handle(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public handle(Landroid/database/Cursor;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v0

    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    new-instance v2, Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;

    invoke-direct {v2, v0}, Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;-><init>(Lcom/miui/gallery/util/CheckDownloadOriginHelper$1;)V

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;->mId:J

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;->mSize:J

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/miui/gallery/util/CheckDownloadOriginHelper$MediaItem;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    :cond_2
    return-object v0
.end method
