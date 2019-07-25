.class public Lorg/jcodec/containers/mp4/MP4Util;
.super Ljava/lang/Object;
.source "MP4Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jcodec/containers/mp4/MP4Util$Atom;,
        Lorg/jcodec/containers/mp4/MP4Util$Movie;
    }
.end annotation


# direct methods
.method public static getRootAtoms(Lorg/jcodec/common/io/SeekableByteChannel;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jcodec/common/io/SeekableByteChannel;",
            ")",
            "Ljava/util/List<",
            "Lorg/jcodec/containers/mp4/MP4Util$Atom;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Lorg/jcodec/common/io/SeekableByteChannel;->setPosition(J)Lorg/jcodec/common/io/SeekableByteChannel;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Lorg/jcodec/common/io/SeekableByteChannel;->size()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    invoke-interface {p0, v0, v1}, Lorg/jcodec/common/io/SeekableByteChannel;->setPosition(J)Lorg/jcodec/common/io/SeekableByteChannel;

    const/16 v3, 0x10

    invoke-static {p0, v3}, Lorg/jcodec/common/io/NIOUtils;->fetchFromChannel(Ljava/nio/channels/ReadableByteChannel;I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Lorg/jcodec/containers/mp4/boxes/Header;->read(Ljava/nio/ByteBuffer;)Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Lorg/jcodec/containers/mp4/MP4Util$Atom;

    invoke-direct {v4, v3, v0, v1}, Lorg/jcodec/containers/mp4/MP4Util$Atom;-><init>(Lorg/jcodec/containers/mp4/boxes/Header;J)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lorg/jcodec/containers/mp4/boxes/Header;->getSize()J

    move-result-wide v3

    add-long/2addr v0, v3

    goto :goto_0

    :cond_1
    :goto_1
    return-object v2
.end method

.method public static parseFullMovie(Ljava/io/File;)Lorg/jcodec/containers/mp4/MP4Util$Movie;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0}, Lorg/jcodec/common/io/NIOUtils;->readableChannel(Ljava/io/File;)Lorg/jcodec/common/io/FileChannelWrapper;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p0}, Lorg/jcodec/containers/mp4/MP4Util;->parseFullMovieChannel(Lorg/jcodec/common/io/SeekableByteChannel;)Lorg/jcodec/containers/mp4/MP4Util$Movie;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/jcodec/common/io/SeekableByteChannel;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Lorg/jcodec/common/io/SeekableByteChannel;->close()V

    :cond_1
    throw v0
.end method

.method public static parseFullMovieChannel(Lorg/jcodec/common/io/SeekableByteChannel;)Lorg/jcodec/containers/mp4/MP4Util$Movie;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lorg/jcodec/containers/mp4/MP4Util;->getRootAtoms(Lorg/jcodec/common/io/SeekableByteChannel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jcodec/containers/mp4/MP4Util$Atom;

    const-string v4, "ftyp"

    invoke-virtual {v3}, Lorg/jcodec/containers/mp4/MP4Util$Atom;->getHeader()Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jcodec/containers/mp4/boxes/Header;->getFourcc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lorg/jcodec/containers/mp4/MP4Util$Atom;->getHeader()Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jcodec/containers/mp4/boxes/Header;->getBodySize()J

    move-result-wide v4

    const-wide/16 v6, 0x400

    cmp-long v2, v4, v6

    if-ltz v2, :cond_1

    const-string p0, "jcodec"

    const-string v0, "Ftyp body size %d is too large."

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    :cond_1
    invoke-virtual {v3, p0}, Lorg/jcodec/containers/mp4/MP4Util$Atom;->parseBox(Lorg/jcodec/common/io/SeekableByteChannel;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v2

    check-cast v2, Lorg/jcodec/containers/mp4/boxes/FileTypeBox;

    goto :goto_0

    :cond_2
    const-string v4, "moov"

    invoke-virtual {v3}, Lorg/jcodec/containers/mp4/MP4Util$Atom;->getHeader()Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jcodec/containers/mp4/boxes/Header;->getFourcc()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lorg/jcodec/containers/mp4/MP4Util$Atom;->getHeader()Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jcodec/containers/mp4/boxes/Header;->getBodySize()J

    move-result-wide v4

    const-wide/32 v6, 0x20000

    cmp-long v0, v4, v6

    if-ltz v0, :cond_3

    const-string p0, "jcodec"

    const-string v0, "Moov body size %d is too large."

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/miui/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    :cond_3
    new-instance v0, Lorg/jcodec/containers/mp4/MP4Util$Movie;

    invoke-virtual {v3, p0}, Lorg/jcodec/containers/mp4/MP4Util$Atom;->parseBox(Lorg/jcodec/common/io/SeekableByteChannel;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object p0

    check-cast p0, Lorg/jcodec/containers/mp4/boxes/MovieBox;

    invoke-direct {v0, v2, p0}, Lorg/jcodec/containers/mp4/MP4Util$Movie;-><init>(Lorg/jcodec/containers/mp4/boxes/FileTypeBox;Lorg/jcodec/containers/mp4/boxes/MovieBox;)V

    return-object v0

    :cond_4
    return-object v1
.end method
