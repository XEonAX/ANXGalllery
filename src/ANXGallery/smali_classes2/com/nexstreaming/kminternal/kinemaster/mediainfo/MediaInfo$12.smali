.class Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$12;
.super Ljava/lang/Object;
.source "MediaInfo.java"

# interfaces
.implements Lcom/nexstreaming/app/common/task/ResultTask$OnResultAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->b()Lcom/nexstreaming/app/common/task/ResultTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nexstreaming/app/common/task/ResultTask$OnResultAvailableListener<",
        "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$12;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nexstreaming/app/common/task/ResultTask;Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nexstreaming/app/common/task/ResultTask<",
            "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;",
            ">;",
            "Lcom/nexstreaming/app/common/task/Task$Event;",
            "Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    iget-object p1, p3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;->d:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget p1, p3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;->a:I

    if-lez p1, :cond_0

    iget p1, p3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;->b:I

    if-lez p1, :cond_0

    iget-object p1, p3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;->c:[I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$12;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-static {p1}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->c(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    move-result-object p1

    new-instance p2, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;

    iget-object v0, p3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;->d:Landroid/graphics/Bitmap;

    iget v1, p3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;->a:I

    iget v2, p3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;->b:I

    iget-object p3, p3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;->c:[I

    invoke-direct {p2, v0, v1, v2, p3}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/i;-><init>(Landroid/graphics/Bitmap;II[I)V

    invoke-virtual {p1, p2}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;->sendResult(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->H()Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->F()Ljava/util/Deque;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Deque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->F()Ljava/util/Deque;

    move-result-object p2

    iget-object p3, p0, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$12;->a:Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;

    invoke-static {p3}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->c(Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;)Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$c;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo;->E()V

    :cond_2
    :goto_1
    return-void
.end method

.method public synthetic onResultAvailable(Lcom/nexstreaming/app/common/task/ResultTask;Lcom/nexstreaming/app/common/task/Task$Event;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;

    invoke-virtual {p0, p1, p2, p3}, Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$12;->a(Lcom/nexstreaming/app/common/task/ResultTask;Lcom/nexstreaming/app/common/task/Task$Event;Lcom/nexstreaming/kminternal/kinemaster/mediainfo/MediaInfo$a;)V

    return-void
.end method
