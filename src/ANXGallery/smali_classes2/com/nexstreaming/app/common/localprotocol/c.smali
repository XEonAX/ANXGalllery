.class public Lcom/nexstreaming/app/common/localprotocol/c;
.super Ljava/lang/Object;
.source "nexProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nexstreaming/app/common/localprotocol/c$a;,
        Lcom/nexstreaming/app/common/localprotocol/c$b;
    }
.end annotation


# direct methods
.method public static a(Ljava/nio/ByteBuffer;IZ)Lcom/nexstreaming/app/common/localprotocol/c$b;
    .locals 4

    new-instance v0, Lcom/nexstreaming/app/common/localprotocol/c$b;

    invoke-direct {v0}, Lcom/nexstreaming/app/common/localprotocol/c$b;-><init>()V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    const v2, 0x4e657850    # 9.6246682E8f

    if-eq v1, v2, :cond_0

    sget-object p0, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->InvalidHDR:Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    invoke-virtual {p0}, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->getValue()I

    move-result p0

    iput p0, v0, Lcom/nexstreaming/app/common/localprotocol/c$b;->f:I

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v1

    const/16 v2, 0x51

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    iput-boolean v3, v0, Lcom/nexstreaming/app/common/localprotocol/c$b;->c:Z

    if-nez p2, :cond_2

    sget-object p0, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->InvalidRQ:Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    invoke-virtual {p0}, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->getValue()I

    move-result p0

    iput p0, v0, Lcom/nexstreaming/app/common/localprotocol/c$b;->f:I

    return-object v0

    :cond_1
    const/16 v2, 0x53

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nexstreaming/app/common/localprotocol/c$b;->c:Z

    if-eqz p2, :cond_2

    sget-object p0, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->InvalidRS:Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    invoke-virtual {p0}, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->getValue()I

    move-result p0

    iput p0, v0, Lcom/nexstreaming/app/common/localprotocol/c$b;->f:I

    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput v1, v0, Lcom/nexstreaming/app/common/localprotocol/c$b;->d:I

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/nexstreaming/app/common/localprotocol/c$b;->e:I

    if-eqz p2, :cond_4

    iget p2, v0, Lcom/nexstreaming/app/common/localprotocol/c$b;->e:I

    if-eq p2, p1, :cond_4

    sget-object p0, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->InvalidSSID:Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;

    invoke-virtual {p0}, Lcom/nexstreaming/app/common/localprotocol/nexProtoErrorCode;->getValue()I

    move-result p0

    iput p0, v0, Lcom/nexstreaming/app/common/localprotocol/c$b;->f:I

    return-object v0

    :cond_3
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p1

    iput p1, v0, Lcom/nexstreaming/app/common/localprotocol/c$b;->f:I

    :cond_4
    iput-boolean v3, v0, Lcom/nexstreaming/app/common/localprotocol/c$b;->b:Z

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    iput p0, v0, Lcom/nexstreaming/app/common/localprotocol/c$b;->g:I

    return-object v0
.end method

.method public static a(Landroid/net/LocalSocket;[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    if-eq v0, p2, :cond_1

    sub-int v1, p2, v0

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ltz v1, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "I/O failure while receiving SDK controller data from socket."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public static a(SII)[B
    .locals 2

    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const v1, 0x4e657850    # 9.6246682E8f

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/16 v1, 0x51

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method
