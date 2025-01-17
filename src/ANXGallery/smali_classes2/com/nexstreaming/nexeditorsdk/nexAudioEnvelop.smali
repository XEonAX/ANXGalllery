.class public final Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;
.super Ljava/lang/Object;
.source "nexAudioEnvelop.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final maxIndex:I = 0x10000


# instance fields
.field private m_cachedLevelList:[I

.field private m_cachedTimeList:[I

.field private m_modify:Z

.field private m_totalTime:I

.field private m_trimEndTime:I

.field private m_trimStartTime:I

.field private m_volumeEnvelopeLevel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m_volumeEnvelopeTime:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_modify:Z

    return-void
.end method

.method constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexClip;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_modify:Z

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_totalTime:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_trimStartTime:I

    invoke-virtual {p1}, Lcom/nexstreaming/nexeditorsdk/nexClip;->getTotalTime()I

    move-result p1

    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_trimEndTime:I

    return-void
.end method

.method constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEnvelopOf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_modify:Z

    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEnvelopOf;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEnvelopOf;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEnvelopOf;->m_totalTime:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_totalTime:I

    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEnvelopOf;->m_trimStartTime:I

    iput v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_trimStartTime:I

    iget p1, p1, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEnvelopOf;->m_trimEndTime:I

    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_trimEndTime:I

    return-void
.end method

.method protected static clone(Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;)Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_cachedTimeList:[I

    iput-object v0, v1, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_cachedTimeList:[I

    iget-object p0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_cachedLevelList:[I

    iput-object p0, v1, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_cachedLevelList:[I
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    :goto_1
    return-object v1
.end method

.method private findTime2Index(II)I
    .locals 5

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    const/16 v3, 0x64

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    iget p2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_totalTime:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_2

    const/high16 p1, 0x10000

    add-int v0, v2, p1

    iget-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    if-le v1, p1, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v0
.end method

.method private getProjectDuration()I
    .locals 2

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_trimEndTime:I

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_trimStartTime:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private getVolumeEnvelopeList(Z)[I
    .locals 11

    iget-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_modify:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_modify:Z

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    invoke-virtual {p0, v3}, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->getVolumeEnvelopeTimeAdj(I)I

    move-result v6

    invoke-virtual {p0, v3}, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->getVolumeEnvelopeLevel(I)I

    move-result v7

    invoke-direct {p0}, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->getProjectDuration()I

    move-result v8

    iget v9, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_totalTime:I

    iget v10, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_trimEndTime:I

    if-ne v9, v10, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    if-gt v6, v8, :cond_1

    if-lez v6, :cond_1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    if-gt v6, v8, :cond_2

    if-lez v7, :cond_2

    if-nez v6, :cond_2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    if-le v6, v8, :cond_3

    if-nez v9, :cond_3

    sub-int v0, v8, v4

    int-to-float v0, v0

    sub-int/2addr v6, v4

    int-to-float v3, v6

    div-float/2addr v0, v3

    sub-int/2addr v7, v5

    int-to-float v3, v7

    mul-float v0, v0, v3

    int-to-float v3, v5

    add-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    move v5, v7

    goto :goto_0

    :cond_4
    :goto_3
    invoke-static {v1}, Lcom/nexstreaming/app/common/util/f;->a(Ljava/util/Collection;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_cachedTimeList:[I

    invoke-static {v2}, Lcom/nexstreaming/app/common/util/f;->a(Ljava/util/Collection;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_cachedLevelList:[I

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_cachedTimeList:[I

    iput-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_cachedLevelList:[I

    :cond_6
    :goto_4
    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_cachedTimeList:[I

    return-object p1

    :cond_7
    iget-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_cachedLevelList:[I

    return-object p1
.end method


# virtual methods
.method public addVolumeEnvelope(II)I
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    const/16 v1, 0xc8

    if-gt p2, v1, :cond_1

    if-ltz p2, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->findTime2Index(II)I

    move-result v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_modify:Z

    const/high16 v1, 0x10000

    if-lt v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return v0

    :cond_1
    new-instance p1, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    invoke-direct {p1, v0, v1, p2}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(III)V

    throw p1

    :cond_2
    new-instance p2, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_totalTime:I

    invoke-direct {p2, v0, v1, p1}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(III)V

    throw p2
.end method

.method public changeVolumeLevelValue(II)V
    .locals 3

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-gt p1, v0, :cond_1

    const/16 v0, 0xc8

    if-gt p2, v0, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_modify:Z

    return-void

    :cond_0
    new-instance p1, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    invoke-direct {p1, v2, v0, p2}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(III)V

    throw p1

    :cond_1
    new-instance p2, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    invoke-direct {p2, v2, v0, p1}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(III)V

    throw p2
.end method

.method getSaveData()Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEnvelopOf;
    .locals 2

    new-instance v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEnvelopOf;

    invoke-direct {v0}, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEnvelopOf;-><init>()V

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEnvelopOf;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEnvelopOf;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_totalTime:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEnvelopOf;->m_totalTime:I

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_trimStartTime:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEnvelopOf;->m_trimStartTime:I

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_trimEndTime:I

    iput v1, v0, Lcom/nexstreaming/nexeditorsdk/nexSaveDataFormat$nexAudioEnvelopOf;->m_trimEndTime:I

    return-object v0
.end method

.method public getVolumeEnvelopeLength()I
    .locals 1

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getVolumeEnvelopeLevel(I)I
    .locals 3

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(III)V

    throw v0
.end method

.method public getVolumeEnvelopeLevelList()[I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->getVolumeEnvelopeList(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public getVolumeEnvelopeTime(I)I
    .locals 3

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(III)V

    throw v0
.end method

.method public getVolumeEnvelopeTimeAdj(I)I
    .locals 3

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_trimStartTime:I

    sub-int/2addr p1, v0

    return p1

    :cond_1
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(III)V

    throw v0
.end method

.method public getVolumeEnvelopeTimeList()[I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->getVolumeEnvelopeList(Z)[I

    move-result-object v0

    return-object v0
.end method

.method public removeVolumeEnvelop()V
    .locals 1

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_modify:Z

    return-void
.end method

.method public removeVolumeEnvelop(I)V
    .locals 4

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeTime:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_modify:Z

    return-void

    :cond_0
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_volumeEnvelopeLevel:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-direct {v0, v2, v3, p1}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(III)V

    throw v0
.end method

.method public updateTrimTime(II)V
    .locals 2

    if-le p2, p1, :cond_1

    if-ltz p1, :cond_0

    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_trimStartTime:I

    iput p2, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_trimEndTime:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_modify:Z

    return-void

    :cond_0
    new-instance p2, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    const/4 v0, 0x0

    iget v1, p0, Lcom/nexstreaming/nexeditorsdk/nexAudioEnvelop;->m_totalTime:I

    invoke-direct {p2, v0, v1, p1}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(III)V

    throw p2

    :cond_1
    new-instance v0, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;

    invoke-direct {v0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/exception/InvalidRangeException;-><init>(II)V

    throw v0
.end method
