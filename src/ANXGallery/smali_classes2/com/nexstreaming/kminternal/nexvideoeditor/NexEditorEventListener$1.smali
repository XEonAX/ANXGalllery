.class Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$1;
.super Ljava/lang/Object;
.source "NexEditorEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->callbackCapture(III[B)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:[B

.field final synthetic e:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;III[B)V
    .locals 0

    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$1;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    iput p2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$1;->a:I

    iput p3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$1;->b:I

    iput p4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$1;->c:I

    iput-object p5, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$1;->d:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$1;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$1;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v1

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$1;->a:I

    iget v3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$1;->b:I

    iget v4, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$1;->c:I

    iget-object v5, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$1;->d:[B

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->a(III[BZ)V

    :cond_0
    return-void
.end method
