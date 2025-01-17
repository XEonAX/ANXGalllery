.class public Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;
.super Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;
.source "ServerUnModifyAlbumsStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;
    }
.end annotation


# instance fields
.field private mAlbums:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "albums"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gallery/cloudcontrol/strategies/BaseStrategy;-><init>()V

    return-void
.end method

.method public static createDefault()Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;
    .locals 6

    new-instance v0, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;

    invoke-direct {v0}, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;->mAlbums:Ljava/util/List;

    iget-object v1, v0, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;->mAlbums:Ljava/util/List;

    new-instance v2, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;

    const-string v3, "untitled"

    const-wide/16 v4, 0x1

    invoke-direct {v2, v4, v5, v3}, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;-><init>(JLjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;->mAlbums:Ljava/util/List;

    new-instance v2, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;

    const-string v3, "snapshot"

    const-wide/16 v4, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;-><init>(JLjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public containsName(Ljava/lang/String;)Z
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;->mAlbums:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;->mAlbums:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;

    invoke-virtual {v2}, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getAlbums()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;->mAlbums:Ljava/util/List;

    return-object v0
.end method

.method public getServerAlbumName(J)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;->mAlbums:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;->mAlbums:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;

    invoke-virtual {v1}, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;->getServerId()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy$ServerUnModifyAlbum;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ServerUnModifyAlbumsStrategy{mAlbums="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/gallery/cloudcontrol/strategies/ServerUnModifyAlbumsStrategy;->mAlbums:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
