.class Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$4;
.super Ljava/lang/Object;
.source "VideoNavFragment.java"

# interfaces
.implements Lcom/miui/gallery/ui/SimpleRecyclerView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$4;->this$0:Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnItemClick(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;I)Z
    .locals 0

    iget-object p1, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$4;->this$0:Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;

    invoke-static {p1}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->access$000(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;)Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;->isLoadSuccess()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$4;->this$0:Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;

    invoke-static {p1}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->access$100(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gallery/video/editor/model/MenuFragmentData;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$4;->this$0:Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;

    invoke-static {p2}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->access$200(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;)Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/miui/gallery/video/editor/interfaces/IVideoEditorListener$IVideoEditorFragmentCallback;->changeEditMenu(Lcom/miui/gallery/video/editor/model/MenuFragmentData;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object p1, p0, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment$4;->this$0:Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;

    invoke-static {p1}, Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;->access$300(Lcom/miui/gallery/video/editor/fragment/VideoNavFragment;)Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f100777

    invoke-static {p1, p2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;I)V

    const/4 p1, 0x0

    return p1
.end method
