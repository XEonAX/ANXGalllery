.class public Lcom/miui/gallery3d/exif/ExifTag;
.super Ljava/lang/Object;
.source "ExifTag.java"


# static fields
.field private static final TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final TYPE_TO_SIZE_MAP:[I

.field private static US_ASCII:Ljava/nio/charset/Charset;


# instance fields
.field private mComponentCountActual:I

.field private final mDataType:S

.field private mHasDefinedDefaultComponentCount:Z

.field private mIfd:I

.field private mOffset:I

.field private final mTagId:S

.field private mValue:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/miui/gallery3d/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    const/16 v0, 0xb

    new-array v0, v0, [I

    sput-object v0, Lcom/miui/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    sget-object v0, Lcom/miui/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v1, 0x1

    aput v1, v0, v1

    sget-object v0, Lcom/miui/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget-object v0, Lcom/miui/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v3, 0x3

    aput v2, v0, v3

    sget-object v0, Lcom/miui/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v2, 0x4

    aput v2, v0, v2

    sget-object v0, Lcom/miui/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/16 v3, 0x8

    const/4 v4, 0x5

    aput v3, v0, v4

    sget-object v0, Lcom/miui/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/4 v4, 0x7

    aput v1, v0, v4

    sget-object v0, Lcom/miui/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/16 v1, 0x9

    aput v2, v0, v1

    sget-object v0, Lcom/miui/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    const/16 v1, 0xa

    aput v3, v0, v1

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy:MM:dd kk:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/gallery3d/exif/ExifTag;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>(SSIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mTagId:S

    iput-short p2, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    iput p3, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    iput-boolean p5, p0, Lcom/miui/gallery3d/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    iput p4, p0, Lcom/miui/gallery3d/exif/ExifTag;->mIfd:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    return-void
.end method

.method private checkBadComponentCount(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private checkOverflowForRational([Lcom/miui/gallery3d/exif/Rational;)Z
    .locals 9

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/miui/gallery3d/exif/Rational;->getNumerator()J

    move-result-wide v4

    const-wide/32 v6, -0x80000000

    cmp-long v8, v4, v6

    if-ltz v8, :cond_1

    invoke-virtual {v3}, Lcom/miui/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v8, v4, v6

    if-ltz v8, :cond_1

    invoke-virtual {v3}, Lcom/miui/gallery3d/exif/Rational;->getNumerator()J

    move-result-wide v4

    const-wide/32 v6, 0x7fffffff

    cmp-long v8, v4, v6

    if-gtz v8, :cond_1

    invoke-virtual {v3}, Lcom/miui/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v3

    cmp-long v5, v3, v6

    if-lez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private checkOverflowForUnsignedLong([I)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    if-gez v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private checkOverflowForUnsignedLong([J)Z
    .locals 8

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-wide v3, p1, v2

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_1

    const-wide v5, 0xffffffffL

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private checkOverflowForUnsignedRational([Lcom/miui/gallery3d/exif/Rational;)Z
    .locals 9

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/miui/gallery3d/exif/Rational;->getNumerator()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_1

    invoke-virtual {v3}, Lcom/miui/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v4

    cmp-long v8, v4, v6

    if-ltz v8, :cond_1

    invoke-virtual {v3}, Lcom/miui/gallery3d/exif/Rational;->getNumerator()J

    move-result-wide v4

    const-wide v6, 0xffffffffL

    cmp-long v8, v4, v6

    if-gtz v8, :cond_1

    invoke-virtual {v3}, Lcom/miui/gallery3d/exif/Rational;->getDenominator()J

    move-result-wide v3

    cmp-long v5, v3, v6

    if-lez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private checkOverflowForUnsignedShort([I)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget v3, p1, v2

    const v4, 0xffff

    if-gt v3, v4, :cond_1

    if-gez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private static convertTypeToString(S)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, ""

    return-object p0

    :pswitch_1
    const-string p0, "RATIONAL"

    return-object p0

    :pswitch_2
    const-string p0, "LONG"

    return-object p0

    :pswitch_3
    const-string p0, "UNDEFINED"

    return-object p0

    :pswitch_4
    const-string p0, "UNSIGNED_RATIONAL"

    return-object p0

    :pswitch_5
    const-string p0, "UNSIGNED_LONG"

    return-object p0

    :pswitch_6
    const-string p0, "UNSIGNED_SHORT"

    return-object p0

    :pswitch_7
    const-string p0, "ASCII"

    return-object p0

    :pswitch_8
    const-string p0, "UNSIGNED_BYTE"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static getElementSize(S)I
    .locals 1

    sget-object v0, Lcom/miui/gallery3d/exif/ExifTag;->TYPE_TO_SIZE_MAP:[I

    aget p0, v0, p0

    return p0
.end method

.method public static isValidIfd(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isValidType(S)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/16 v1, 0xa

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/gallery3d/exif/ExifTag;

    if-eqz v1, :cond_c

    check-cast p1, Lcom/miui/gallery3d/exif/ExifTag;

    iget-short v1, p1, Lcom/miui/gallery3d/exif/ExifTag;->mTagId:S

    iget-short v2, p0, Lcom/miui/gallery3d/exif/ExifTag;->mTagId:S

    if-ne v1, v2, :cond_b

    iget v1, p1, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    iget v2, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    if-ne v1, v2, :cond_b

    iget-short v1, p1, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    iget-short v2, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v1, :cond_9

    iget-object v1, p1, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    iget-object p1, p1, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast p1, [J

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    return p1

    :cond_4
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [Lcom/miui/gallery3d/exif/Rational;

    if-eqz v1, :cond_6

    iget-object v1, p1, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [Lcom/miui/gallery3d/exif/Rational;

    if-nez v1, :cond_5

    return v0

    :cond_5
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Lcom/miui/gallery3d/exif/Rational;

    iget-object p1, p1, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast p1, [Lcom/miui/gallery3d/exif/Rational;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_6
    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-nez v1, :cond_7

    return v0

    :cond_7
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    iget-object p1, p1, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_8
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    iget-object p1, p1, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_9
    iget-object p1, p1, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez p1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0

    :cond_b
    :goto_0
    return v0

    :cond_c
    return v0
.end method

.method public forceGetValueAsString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_2

    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    sget-object v2, Lcom/miui/gallery3d/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [J

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    array-length v0, v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    aget-wide v1, v0, v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [Ljava/lang/Object;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v0, v0

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v0, v0, v1

    if-nez v0, :cond_5

    const-string v0, ""

    return-object v0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected forceSetComponentCount(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    return-void
.end method

.method protected getBytes([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/miui/gallery3d/exif/ExifTag;->getBytes([BII)V

    return-void
.end method

.method protected getBytes([BII)V
    .locals 3

    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot get BYTE value from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short p3, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    invoke-static {p3}, Lcom/miui/gallery3d/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    if-le p3, v2, :cond_2

    iget p3, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    :cond_2
    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getComponentCount()I
    .locals 1

    iget v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    return v0
.end method

.method public getDataSize()I
    .locals 2

    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifTag;->getComponentCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifTag;->getDataType()S

    move-result v1

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifTag;->getElementSize(S)I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method

.method public getDataType()S
    .locals 1

    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    return v0
.end method

.method public getIfd()I
    .locals 1

    iget v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mIfd:I

    return v0
.end method

.method protected getOffset()I
    .locals 1

    iget v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mOffset:I

    return v0
.end method

.method protected getRational(I)Lcom/miui/gallery3d/exif/Rational;
    .locals 2

    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get RATIONAL value from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [Lcom/miui/gallery3d/exif/Rational;

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected getStringByte()[B
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0
.end method

.method public getTagId()S
    .locals 1

    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mTagId:S

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getValueAsBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getValueAsInts()[I
    .locals 5

    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    array-length v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-wide v3, v0, v2

    long-to-int v3, v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    return-object v1
.end method

.method public getValueAsString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v1, [B

    sget-object v2, Lcom/miui/gallery3d/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_2
    return-object v1
.end method

.method protected getValueAt(I)J
    .locals 3

    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [J

    aget-wide v1, v0, p1

    return-wide v1

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    aget-byte p1, v0, p1

    int-to-long v0, p1

    return-wide v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get integer value from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected hasDefinedCount()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    return v0
.end method

.method public hasValue()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected setHasDefinedCount(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mHasDefinedDefaultComponentCount:Z

    return-void
.end method

.method protected setIfd(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mIfd:I

    return-void
.end method

.method protected setOffset(I)V
    .locals 0

    iput p1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mOffset:I

    return-void
.end method

.method public setValue(B)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([B)Z

    move-result p1

    return p1
.end method

.method public setValue(I)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([I)Z

    move-result p1

    return p1
.end method

.method public setValue(J)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([J)Z

    move-result p1

    return p1
.end method

.method public setValue(Lcom/miui/gallery3d/exif/Rational;)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/miui/gallery3d/exif/Rational;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([Lcom/miui/gallery3d/exif/Rational;)Z

    move-result p1

    return p1
.end method

.method public setValue(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/lang/Short;

    const v2, 0xffff

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    and-int/2addr p1, v2

    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(I)Z

    move-result p1

    return p1

    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    instance-of v1, p1, [I

    if-eqz v1, :cond_3

    check-cast p1, [I

    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([I)Z

    move-result p1

    return p1

    :cond_3
    instance-of v1, p1, [J

    if-eqz v1, :cond_4

    check-cast p1, [J

    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([J)Z

    move-result p1

    return p1

    :cond_4
    instance-of v1, p1, Lcom/miui/gallery3d/exif/Rational;

    if-eqz v1, :cond_5

    check-cast p1, Lcom/miui/gallery3d/exif/Rational;

    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(Lcom/miui/gallery3d/exif/Rational;)Z

    move-result p1

    return p1

    :cond_5
    instance-of v1, p1, [Lcom/miui/gallery3d/exif/Rational;

    if-eqz v1, :cond_6

    check-cast p1, [Lcom/miui/gallery3d/exif/Rational;

    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([Lcom/miui/gallery3d/exif/Rational;)Z

    move-result p1

    return p1

    :cond_6
    instance-of v1, p1, [B

    if-eqz v1, :cond_7

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([B)Z

    move-result p1

    return p1

    :cond_7
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_8

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(I)Z

    move-result p1

    return p1

    :cond_8
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_9

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(J)Z

    move-result p1

    return p1

    :cond_9
    instance-of v1, p1, Ljava/lang/Byte;

    if-eqz v1, :cond_a

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/gallery3d/exif/ExifTag;->setValue(B)Z

    move-result p1

    return p1

    :cond_a
    instance-of v1, p1, [Ljava/lang/Short;

    if-eqz v1, :cond_d

    check-cast p1, [Ljava/lang/Short;

    array-length v1, p1

    new-array v1, v1, [I

    const/4 v3, 0x0

    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_c

    aget-object v4, p1, v3

    if-nez v4, :cond_b

    const/4 v4, 0x0

    goto :goto_1

    :cond_b
    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    and-int/2addr v4, v2

    :goto_1
    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_c
    invoke-virtual {p0, v1}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([I)Z

    move-result p1

    return p1

    :cond_d
    instance-of v1, p1, [Ljava/lang/Integer;

    if-eqz v1, :cond_10

    check-cast p1, [Ljava/lang/Integer;

    array-length v1, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_f

    aget-object v3, p1, v2

    if-nez v3, :cond_e

    const/4 v3, 0x0

    goto :goto_3

    :cond_e
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_3
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_f
    invoke-virtual {p0, v1}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([I)Z

    move-result p1

    return p1

    :cond_10
    instance-of v1, p1, [Ljava/lang/Long;

    if-eqz v1, :cond_13

    check-cast p1, [Ljava/lang/Long;

    array-length v1, p1

    new-array v1, v1, [J

    :goto_4
    array-length v2, p1

    if-ge v0, v2, :cond_12

    aget-object v2, p1, v0

    if-nez v2, :cond_11

    const-wide/16 v2, 0x0

    goto :goto_5

    :cond_11
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_5
    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_12
    invoke-virtual {p0, v1}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([J)Z

    move-result p1

    return p1

    :cond_13
    instance-of v1, p1, [Ljava/lang/Byte;

    if-eqz v1, :cond_16

    check-cast p1, [Ljava/lang/Byte;

    array-length v1, p1

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_6
    array-length v3, p1

    if-ge v2, v3, :cond_15

    aget-object v3, p1, v2

    if-nez v3, :cond_14

    const/4 v3, 0x0

    goto :goto_7

    :cond_14
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    :goto_7
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_15
    invoke-virtual {p0, v1}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([B)Z

    move-result p1

    return p1

    :cond_16
    return v0
.end method

.method public setValue(Ljava/lang/String;)Z
    .locals 5

    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v1, 0x2

    const/4 v2, 0x7

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    if-eq v0, v2, :cond_0

    return v3

    :cond_0
    sget-object v0, Lcom/miui/gallery3d/exif/ExifTag;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    array-length v0, p1

    const/4 v4, 0x1

    if-lez v0, :cond_4

    array-length v0, p1

    sub-int/2addr v0, v4

    aget-byte v0, p1, v0

    if-eqz v0, :cond_2

    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    array-length v0, p1

    add-int/2addr v0, v4

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    move-object v0, p1

    :goto_1
    array-length v1, p1

    sub-int/2addr v1, v4

    aget-byte p1, p1, v1

    if-eqz p1, :cond_3

    iget-short p1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    if-eq p1, v2, :cond_3

    iget p1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    :cond_3
    move-object p1, v0

    goto :goto_2

    :cond_4
    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v0, v1, :cond_5

    iget v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    if-ne v0, v4, :cond_5

    new-array p1, v4, [B

    aput-byte v3, p1, v3

    :cond_5
    :goto_2
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v1

    if-eqz v1, :cond_6

    return v3

    :cond_6
    iput v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    iput-object p1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    return v4
.end method

.method public setValue([B)Z
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/miui/gallery3d/exif/ExifTag;->setValue([BII)Z

    move-result p1

    return p1
.end method

.method public setValue([BII)Z
    .locals 4

    invoke-direct {p0, p3}, Lcom/miui/gallery3d/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v3, 0x7

    if-eq v0, v3, :cond_1

    return v1

    :cond_1
    new-array v0, p3, [B

    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    iget-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    return v2
.end method

.method public setValue([I)Z
    .locals 5

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    const/16 v4, 0x9

    if-eq v0, v4, :cond_1

    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v0, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/gallery3d/exif/ExifTag;->checkOverflowForUnsignedShort([I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v0, v2, :cond_3

    invoke-direct {p0, p1}, Lcom/miui/gallery3d/exif/ExifTag;->checkOverflowForUnsignedLong([I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    array-length v0, p1

    new-array v0, v0, [J

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    aget v2, p1, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iput-object v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    array-length p1, p1

    iput p1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    const/4 p1, 0x1

    return p1
.end method

.method public setValue([J)Z
    .locals 3

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/gallery3d/exif/ExifTag;->checkOverflowForUnsignedLong([J)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iput-object p1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    array-length p1, p1

    iput p1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public setValue([Lcom/miui/gallery3d/exif/Rational;)Z
    .locals 4

    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/miui/gallery3d/exif/ExifTag;->checkBadComponentCount(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    const/16 v2, 0xa

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v0, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/miui/gallery3d/exif/ExifTag;->checkOverflowForUnsignedRational([Lcom/miui/gallery3d/exif/Rational;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    iget-short v0, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    if-ne v0, v2, :cond_3

    invoke-direct {p0, p1}, Lcom/miui/gallery3d/exif/ExifTag;->checkOverflowForRational([Lcom/miui/gallery3d/exif/Rational;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iput-object p1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mValue:Ljava/lang/Object;

    array-length p1, p1

    iput p1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "tag id: %04X\n"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-short v4, p0, Lcom/miui/gallery3d/exif/ExifTag;->mTagId:S

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ifd id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mIfd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\ntype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mDataType:S

    invoke-static {v1}, Lcom/miui/gallery3d/exif/ExifTag;->convertTypeToString(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\ncount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mComponentCountActual:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\noffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/gallery3d/exif/ExifTag;->mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nvalue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/miui/gallery3d/exif/ExifTag;->forceGetValueAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
