.class public Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;
.super Ljava/lang/Object;
.source "nexTranscode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexTranscode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Option"
.end annotation


# instance fields
.field private labelResource:I

.field outputBitRate:I

.field outputFile:Ljava/io/File;

.field outputFitMode:I

.field outputHeight:I

.field outputRotate:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

.field outputRotateMeta:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

.field outputSamplingRate:I

.field outputWidth:I


# direct methods
.method public constructor <init>(Ljava/io/File;IIIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputFile:Ljava/io/File;

    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputWidth:I

    iput p3, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputHeight:I

    iput p4, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputBitRate:I

    iput p5, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputSamplingRate:I

    invoke-static {p2, p3}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->getLabelResource(II)I

    move-result p1

    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->labelResource:I

    if-eqz p6, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputFitMode:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputFitMode:I

    :goto_0
    sget-object p1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;->BYPASS:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputRotateMeta:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;IIIIZLcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputFile:Ljava/io/File;

    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputWidth:I

    iput p3, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputHeight:I

    iput p4, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputBitRate:I

    iput p5, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputSamplingRate:I

    invoke-static {p2, p3}, Lcom/nexstreaming/kminternal/kinemaster/config/NexExportProfile;->getLabelResource(II)I

    move-result p1

    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->labelResource:I

    if-eqz p6, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputFitMode:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputFitMode:I

    :goto_0
    iput-object p7, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputRotateMeta:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    iput-object p8, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputRotate:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    return-void
.end method

.method static synthetic access$600(Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;)I
    .locals 0

    iget p0, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->labelResource:I

    return p0
.end method


# virtual methods
.method public setOutputRotate(Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;)V
    .locals 1

    sget-object v0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;->BYPASS:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;->CW_0:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputRotate:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputRotate:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    :goto_0
    return-void
.end method

.method public setOutputRotateMeta(Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;)V
    .locals 0

    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexTranscode$Option;->outputRotateMeta:Lcom/nexstreaming/nexeditorsdk/nexTranscode$Rotate;

    return-void
.end method
