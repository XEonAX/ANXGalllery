.class public Lorg/jcodec/movtool/MetadataEditor;
.super Ljava/lang/Object;
.source "MetadataEditor.java"


# instance fields
.field private keyedMeta:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jcodec/containers/mp4/boxes/MetaValue;",
            ">;"
        }
    .end annotation
.end field

.field private source:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jcodec/containers/mp4/boxes/MetaValue;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jcodec/movtool/MetadataEditor;->source:Ljava/io/File;

    iput-object p2, p0, Lorg/jcodec/movtool/MetadataEditor;->keyedMeta:Ljava/util/Map;

    return-void
.end method

.method public static createFrom(Ljava/io/File;)Lorg/jcodec/movtool/MetadataEditor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/jcodec/containers/mp4/MP4Util;->parseFullMovie(Ljava/io/File;)Lorg/jcodec/containers/mp4/MP4Util$Movie;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jcodec/containers/mp4/MP4Util$Movie;->getMoov()Lorg/jcodec/containers/mp4/boxes/MovieBox;

    move-result-object v0

    const-class v1, Lorg/jcodec/containers/mp4/boxes/MetaBox;

    invoke-static {}, Lorg/jcodec/containers/mp4/boxes/MetaBox;->fourcc()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findFirst(Lorg/jcodec/containers/mp4/boxes/NodeBox;Ljava/lang/Class;Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v0

    check-cast v0, Lorg/jcodec/containers/mp4/boxes/MetaBox;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lorg/jcodec/movtool/MetadataEditor;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lorg/jcodec/containers/mp4/boxes/MetaBox;->getKeyedMeta()Ljava/util/Map;

    move-result-object v0

    :goto_1
    invoke-direct {v1, p0, v0}, Lorg/jcodec/movtool/MetadataEditor;-><init>(Ljava/io/File;Ljava/util/Map;)V

    return-object v1
.end method


# virtual methods
.method public getKeyedMeta()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jcodec/containers/mp4/boxes/MetaValue;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jcodec/movtool/MetadataEditor;->keyedMeta:Ljava/util/Map;

    return-object v0
.end method
