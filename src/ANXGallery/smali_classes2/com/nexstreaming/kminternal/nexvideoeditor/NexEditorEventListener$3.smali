.class Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$3;
.super Ljava/lang/Object;
.source "NexEditorEventListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->notifyEvent(IIIII)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$3;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$3;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$3;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$3;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$3;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    invoke-static {v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->d(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    move-result-object v1

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->IDLE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    invoke-static {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$3;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->c(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;)Lcom/nexstreaming/kminternal/nexvideoeditor/c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$3;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->c(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;)Lcom/nexstreaming/kminternal/nexvideoeditor/c;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NONE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-interface {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/c;->b(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V

    :cond_1
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$3;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$3;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    invoke-static {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;

    move-result-object v0

    sget-object v1, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;->NONE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor;->d(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$ErrorCode;)V

    :cond_2
    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$3;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener$3;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;

    invoke-static {v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->d(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;)Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    move-result-object v1

    sget-object v2, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;->IDLE:Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;

    invoke-static {v0, v1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditorEventListener;Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;Lcom/nexstreaming/kminternal/nexvideoeditor/NexEditor$PlayState;)V

    return-void
.end method
