.class Lcom/miui/gallery/movie/ui/view/BaseMovieView$1;
.super Landroid/os/Handler;
.source "BaseMovieView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/movie/ui/view/BaseMovieView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/movie/ui/view/BaseMovieView;


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/ui/view/BaseMovieView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$1;->this$0:Lcom/miui/gallery/movie/ui/view/BaseMovieView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/movie/ui/view/BaseMovieView$1;->this$0:Lcom/miui/gallery/movie/ui/view/BaseMovieView;

    invoke-static {v0}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->access$000(Lcom/miui/gallery/movie/ui/view/BaseMovieView;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/miui/gallery/movie/ui/view/BaseMovieView;->showView(Landroid/view/View;Z)V

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
