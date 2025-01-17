.class public Lcom/miui/gallery/util/gifdecoder/NSGif;
.super Ljava/lang/Object;
.source "NSGif.java"


# instance fields
.field private final mFrameCount:I

.field private final mHeight:I

.field private mInstance:J

.field private final mWidth:I


# direct methods
.method private constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/miui/gallery/util/gifdecoder/NSGif;->mInstance:J

    invoke-static {p1, p2}, Lcom/miui/gallery/util/gifdecoder/NSGif;->nativeGetWidth(J)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGif;->mWidth:I

    invoke-static {p1, p2}, Lcom/miui/gallery/util/gifdecoder/NSGif;->nativeGetHeight(J)I

    move-result v0

    iput v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGif;->mHeight:I

    invoke-static {p1, p2}, Lcom/miui/gallery/util/gifdecoder/NSGif;->nativeGetFrameCount(J)I

    move-result p1

    iput p1, p0, Lcom/miui/gallery/util/gifdecoder/NSGif;->mFrameCount:I

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/miui/gallery/util/gifdecoder/NSGif;
    .locals 4

    invoke-static {p0}, Lcom/miui/gallery/util/gifdecoder/NSGif;->nativeCreate(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    new-instance p0, Lcom/miui/gallery/util/gifdecoder/NSGif;

    invoke-direct {p0, v0, v1}, Lcom/miui/gallery/util/gifdecoder/NSGif;-><init>(J)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static create([BII)Lcom/miui/gallery/util/gifdecoder/NSGif;
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/miui/gallery/util/gifdecoder/NSGif;->nativeCreate([BII)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-eqz p2, :cond_0

    new-instance p2, Lcom/miui/gallery/util/gifdecoder/NSGif;

    invoke-direct {p2, p0, p1}, Lcom/miui/gallery/util/gifdecoder/NSGif;-><init>(J)V

    return-object p2

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static native nativeCreate(Ljava/lang/String;)J
.end method

.method private static native nativeCreate([BII)J
.end method

.method private static native nativeDecodeFrame(JI)Z
.end method

.method private static native nativeDestroy(J)I
.end method

.method private static native nativeGetFrameCount(J)I
.end method

.method private static native nativeGetFrameDelay(JI)I
.end method

.method private static native nativeGetHeight(J)I
.end method

.method private static native nativeGetWidth(J)I
.end method

.method private static native nativeWriteTo(JLandroid/graphics/Bitmap;)Z
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-wide v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGif;->mInstance:J

    invoke-static {v0, v1}, Lcom/miui/gallery/util/gifdecoder/NSGif;->nativeDestroy(J)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGif;->mInstance:J

    return-void
.end method

.method public decodeFrame(I)Z
    .locals 2

    iget-wide v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGif;->mInstance:J

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/gifdecoder/NSGif;->nativeDecodeFrame(JI)Z

    move-result p1

    return p1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/miui/gallery/util/gifdecoder/NSGif;->close()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getFrameCount()I
    .locals 1

    iget v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGif;->mFrameCount:I

    return v0
.end method

.method public getFrameDelay(I)I
    .locals 2

    iget-wide v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGif;->mInstance:J

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/gifdecoder/NSGif;->nativeGetFrameDelay(JI)I

    move-result p1

    if-gtz p1, :cond_0

    const/16 p1, 0x64

    return p1

    :cond_0
    mul-int/lit8 p1, p1, 0xa

    return p1
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGif;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGif;->mWidth:I

    return v0
.end method

.method public writeTo(Landroid/graphics/Bitmap;)Z
    .locals 2

    iget-wide v0, p0, Lcom/miui/gallery/util/gifdecoder/NSGif;->mInstance:J

    invoke-static {v0, v1, p1}, Lcom/miui/gallery/util/gifdecoder/NSGif;->nativeWriteTo(JLandroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method
