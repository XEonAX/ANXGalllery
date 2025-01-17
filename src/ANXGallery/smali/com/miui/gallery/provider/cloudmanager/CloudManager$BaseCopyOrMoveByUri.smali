.class abstract Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;
.super Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;
.source "CloudManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/provider/cloudmanager/CloudManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseCopyOrMoveByUri"
.end annotation


# instance fields
.field protected mAlbumId:J

.field protected mTarPath:Ljava/lang/String;

.field protected mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/net/Uri;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/net/Uri;",
            "J)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CursorTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object p3, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;->mUri:Landroid/net/Uri;

    iput-wide p4, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;->mAlbumId:J

    return-void
.end method


# virtual methods
.method protected prepare(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 7

    const-string v0, "content"

    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;->mUri:Landroid/net/Uri;

    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri$1;

    invoke-direct {v6, p0}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri$1;-><init>(Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;)V

    invoke-static/range {v1 .. v6}, Lcom/miui/gallery/util/GalleryUtils;->safeQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/miui/gallery/util/GalleryUtils$QueryHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;->mTarPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "file"

    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;->mUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;->mUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;->mTarPath:Ljava/lang/String;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;->mTarPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;->mTarPath:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager;->queryCloudItemByFilePath(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected verify(Landroid/database/sqlite/SQLiteDatabase;)J
    .locals 4

    iget-object v0, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;->mTarPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x64

    return-wide v0

    :cond_0
    new-instance v0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;

    iget-object v1, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/gallery/provider/cloudmanager/CloudManager$BaseCopyOrMoveByUri;->mTarPath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/miui/gallery/provider/cloudmanager/CloudManager$CheckPostProcessing;->run(Landroid/database/sqlite/SQLiteDatabase;Lcom/miui/gallery/provider/cache/MediaManager;)J

    move-result-wide v0

    const-wide/16 v2, -0x6f

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2
.end method
