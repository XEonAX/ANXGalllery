.class Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$10;
.super Ljava/lang/Object;
.source "MediaInfo.java"

# interfaces
.implements Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->a(IIIIII[ILcom/nexstreaming/kminternal/kinemaster/mediainfo/c;)Lcom/nexstreaming/app/common/task/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/c;

.field final synthetic b:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;Lcom/nexstreaming/kminternal/kinemaster/mediainfo/c;)V
    .locals 0

    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$10;->b:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    iput-object p2, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$10;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIII[BII)V
    .locals 10

    move v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v1, "MediaInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDetailThumbnails::onThumbDone() not video. mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    mul-int v2, p3, p4

    div-int v2, p5, v2

    mul-int/lit8 v6, v2, 0x8

    add-int/lit8 v7, p7, -0x1

    move-object v1, p0

    :try_start_0
    iget-object v9, v1, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$10;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/c;

    move-object/from16 v2, p6

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v8, p8

    invoke-static/range {v2 .. v9}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/g;->a([BIIIIIILcom/nexstreaming/kminternal/kinemaster/mediainfo/c;)Lcom/nexstreaming/kminternal/kinemaster/mediainfo/ThumbnailError;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
