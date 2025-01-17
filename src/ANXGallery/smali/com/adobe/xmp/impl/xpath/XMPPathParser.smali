.class public final Lcom/adobe/xmp/impl/xpath/XMPPathParser;
.super Ljava/lang/Object;
.source "XMPPathParser.java"


# direct methods
.method public static expandXPath(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/xmp/impl/xpath/XMPPath;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPath;

    invoke-direct {v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;-><init>()V

    new-instance v1, Lcom/adobe/xmp/impl/xpath/PathPosition;

    invoke-direct {v1}, Lcom/adobe/xmp/impl/xpath/PathPosition;-><init>()V

    iput-object p1, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->parseRootNode(Ljava/lang/String;Lcom/adobe/xmp/impl/xpath/PathPosition;Lcom/adobe/xmp/impl/xpath/XMPPath;)V

    :goto_0
    iget p0, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p0, v2, :cond_8

    iget p0, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iput p0, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    invoke-static {p1, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->skipPathDelimiter(Ljava/lang/String;Lcom/adobe/xmp/impl/xpath/PathPosition;)V

    iget p0, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iput p0, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget p0, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v2, 0x5b

    if-eq p0, v2, :cond_0

    invoke-static {v1}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->parseStructSegment(Lcom/adobe/xmp/impl/xpath/PathPosition;)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-static {v1}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->parseIndexSegment(Lcom/adobe/xmp/impl/xpath/PathPosition;)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    move-result-object p0

    :goto_1
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getKind()I

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x66

    const/16 v5, 0x3f

    const/16 v6, 0x40

    const/4 v7, 0x1

    if-ne v2, v7, :cond_4

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "?"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setName(Ljava/lang/String;)V

    const-string v2, "?xml:lang"

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Only xml:lang allowed with \'@\'"

    invoke-direct {p0, p1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_3

    iget v2, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    add-int/2addr v2, v7

    iput v2, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    invoke-virtual {p0, v3}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setKind(I)V

    :cond_3
    iget-object v2, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v3, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    iget v4, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifyQualName(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getKind()I

    move-result v2

    const/4 v8, 0x6

    if-ne v2, v8, :cond_7

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[?"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setName(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[?xml:lang="

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Only xml:lang allowed with \'@\'"

    invoke-direct {p0, p1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_7

    iget v2, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    add-int/2addr v2, v7

    iput v2, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setKind(I)V

    iget-object v2, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v3, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    iget v4, v1, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifyQualName(Ljava/lang/String;)V

    :cond_7
    :goto_4
    invoke-virtual {v0, p0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    goto/16 :goto_0

    :cond_8
    return-object v0

    :cond_9
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const/4 p1, 0x4

    const-string v0, "Parameter must not be null"

    invoke-direct {p0, v0, p1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method private static parseIndexSegment(Lcom/adobe/xmp/impl/xpath/PathPosition;)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    const/4 v2, 0x0

    const/16 v3, 0x5d

    const/16 v4, 0x66

    if-gt v1, v0, :cond_1

    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v5, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x39

    if-gt v0, v5, :cond_1

    :goto_0
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v6, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_0

    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v6, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-gt v1, v0, :cond_0

    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v6, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-gt v0, v5, :cond_0

    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_1
    :goto_1
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_c

    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_4

    const-string v0, "[last()"

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v5, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iget v6, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    const/4 v1, 0x4

    invoke-direct {v0, v2, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_3
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v0, "Invalid non-numeric array index"

    invoke-direct {p0, v0, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_4
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x27

    if-eq v0, v1, :cond_6

    const/16 v1, 0x22

    if-ne v0, v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v0, "Invalid quote in array selector"

    invoke-direct {p0, v0, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_6
    :goto_2
    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    :goto_3
    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v5, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_9

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v5, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v0, :cond_8

    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v1, v1, 0x1

    iget-object v5, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_9

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v5, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v0, :cond_7

    goto :goto_4

    :cond_7
    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    :cond_8
    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    goto :goto_3

    :cond_9
    :goto_4
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_b

    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    const/4 v1, 0x6

    invoke-direct {v0, v2, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    :goto_5
    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v2, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_a

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v2, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_a

    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v2, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iget p0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setName(Ljava/lang/String;)V

    return-object v0

    :cond_a
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v0, "Missing \']\' for array index"

    invoke-direct {p0, v0, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_b
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v0, "No terminating quote for array selector"

    invoke-direct {p0, v0, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_c
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v0, "Missing \']\' or \'=\' for array index"

    invoke-direct {p0, v0, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method private static parseRootNode(Ljava/lang/String;Lcom/adobe/xmp/impl/xpath/PathPosition;Lcom/adobe/xmp/impl/xpath/XMPPath;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    :goto_0
    iget v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v1, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    const-string v0, "/[*"

    iget-object v1, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v3, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    iget v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/2addr v0, v2

    iput v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget v1, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    if-eq v0, v1, :cond_4

    iget-object v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v1, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iget p1, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifyXPathRoot(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/adobe/xmp/XMPSchemaRegistry;->findAlias(Ljava/lang/String;)Lcom/adobe/xmp/properties/XMPAliasInfo;

    move-result-object v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_1

    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    invoke-direct {v0, p0, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, v0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    new-instance p0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    invoke-direct {p0, p1, v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, p0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    goto :goto_1

    :cond_1
    new-instance p0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p2, p0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    new-instance p0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getPropName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifyXPathRoot(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setAlias(Z)V

    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adobe/xmp/options/AliasOptions;->getOptions()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setAliasForm(I)V

    invoke-virtual {p2, p0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/adobe/xmp/options/AliasOptions;->isArrayAltText()Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    const-string p1, "[?xml:lang=\'x-default\']"

    const/4 v1, 0x5

    invoke-direct {p0, p1, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setAlias(Z)V

    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adobe/xmp/options/AliasOptions;->getOptions()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setAliasForm(I)V

    invoke-virtual {p2, p0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/adobe/xmp/options/AliasOptions;->isArray()Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    const-string p1, "[1]"

    const/4 v1, 0x3

    invoke-direct {p0, p1, v1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setAlias(Z)V

    invoke-interface {v0}, Lcom/adobe/xmp/properties/XMPAliasInfo;->getAliasForm()Lcom/adobe/xmp/options/AliasOptions;

    move-result-object p1

    invoke-virtual {p1}, Lcom/adobe/xmp/options/AliasOptions;->getOptions()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;->setAliasForm(I)V

    invoke-virtual {p2, p0}, Lcom/adobe/xmp/impl/xpath/XMPPath;->add(Lcom/adobe/xmp/impl/xpath/XMPPathSegment;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const/16 p1, 0x66

    const-string p2, "Empty initial XMPPath step"

    invoke-direct {p0, p2, p1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method private static parseStructSegment(Lcom/adobe/xmp/impl/xpath/PathPosition;)Lcom/adobe/xmp/impl/xpath/XMPPathSegment;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameStart:I

    :goto_0
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    const-string v0, "/[*"

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v3, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iput v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->nameEnd:I

    iget v0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    iget v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    if-eq v0, v1, :cond_1

    new-instance v0, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;

    iget-object v1, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->path:Ljava/lang/String;

    iget v3, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iget p0, p0, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepEnd:I

    invoke-virtual {v1, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, v2}, Lcom/adobe/xmp/impl/xpath/XMPPathSegment;-><init>(Ljava/lang/String;I)V

    return-object v0

    :cond_1
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const/16 v0, 0x66

    const-string v1, "Empty XMPPath segment"

    invoke-direct {p0, v1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method private static skipPathDelimiter(Ljava/lang/String;Lcom/adobe/xmp/impl/xpath/PathPosition;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    iget v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x66

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iget v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Empty XMPPath segment"

    invoke-direct {p0, p1, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    :goto_0
    iget v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2a

    if-ne v0, v2, :cond_3

    iget v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    iget v0, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget p1, p1, Lcom/adobe/xmp/impl/xpath/PathPosition;->stepBegin:I

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x5b

    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Missing \'[\' after \'*\'"

    invoke-direct {p0, p1, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method

.method private static verifyQualName(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x66

    if-lez v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/adobe/xmp/impl/Utils;->isXMLNameNS(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/adobe/xmp/XMPSchemaRegistry;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v0, "Unknown namespace prefix for qualified name"

    invoke-direct {p0, v0, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string v0, "Ill-formed qualified name"

    invoke-direct {p0, v0, v1}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method private static verifySimpleXMLName(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    invoke-static {p0}, Lcom/adobe/xmp/impl/Utils;->isXMLName(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const/16 v0, 0x66

    const-string v1, "Bad XML name"

    invoke-direct {p0, v1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method private static verifyXPathRoot(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    const/16 v0, 0x65

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    const/16 v4, 0x66

    if-eq v2, v3, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_5

    const/16 v2, 0x2f

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_4

    const/16 v2, 0x5b

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_4

    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/adobe/xmp/XMPSchemaRegistry;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    invoke-static {p1}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifySimpleXMLName(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifySimpleXMLName(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adobe/xmp/impl/xpath/XMPPathParser;->verifySimpleXMLName(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/adobe/xmp/XMPSchemaRegistry;->getNamespacePrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object p1

    :cond_1
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Schema namespace URI and prefix mismatch"

    invoke-direct {p0, p1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_2
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Unknown schema namespace prefix"

    invoke-direct {p0, p1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_3
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Unregistered schema namespace URI"

    invoke-direct {p0, p1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_4
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Top level name must be simple"

    invoke-direct {p0, p1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_5
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Top level name must not be a qualifier"

    invoke-direct {p0, p1, v4}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_6
    new-instance p0, Lcom/adobe/xmp/XMPException;

    const-string p1, "Schema namespace URI is required"

    invoke-direct {p0, p1, v0}, Lcom/adobe/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
