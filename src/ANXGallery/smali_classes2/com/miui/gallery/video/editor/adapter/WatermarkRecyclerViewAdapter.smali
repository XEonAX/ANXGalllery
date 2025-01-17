.class public Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;
.super Lcom/miui/gallery/video/editor/widget/SingleChoiceRecyclerView$SingleChoiceRecyclerViewAdapter;
.source "WatermarkRecyclerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/video/editor/widget/SingleChoiceRecyclerView$SingleChoiceRecyclerViewAdapter<",
        "Lcom/miui/gallery/video/editor/adapter/WaterMarkHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mTextStyles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/gallery/video/editor/TextStyle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/miui/gallery/video/editor/TextStyle;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/miui/gallery/video/editor/widget/SingleChoiceRecyclerView$SingleChoiceRecyclerViewAdapter;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->mTextStyles:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->mTextStyles:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->mTextStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getTextStyle(I)Lcom/miui/gallery/video/editor/TextStyle;
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->mTextStyles:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->mTextStyles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->mTextStyles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gallery/video/editor/TextStyle;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public onBindView(Lcom/miui/gallery/video/editor/adapter/WaterMarkHolder;I)V
    .locals 5

    iget-object v0, p0, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->mTextStyles:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/gallery/video/editor/TextStyle;

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->getSelectedItemPosition()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->isDownloaded()Z

    move-result v4

    invoke-virtual {p1, v1, v4}, Lcom/miui/gallery/video/editor/adapter/WaterMarkHolder;->updateSelected(ZZ)V

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->getIconResId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/gallery/video/editor/adapter/WaterMarkHolder;->setIcon(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/miui/gallery/video/editor/adapter/WaterMarkHolder;->setIcon(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, p2, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-virtual {p1, v2}, Lcom/miui/gallery/video/editor/adapter/WaterMarkHolder;->updateTextEditable(Z)V

    invoke-virtual {v0}, Lcom/miui/gallery/video/editor/TextStyle;->getDownloadState()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/gallery/video/editor/adapter/WaterMarkHolder;->setStateImage(I)V

    return-void
.end method

.method public bridge synthetic onBindView(Lcom/miui/gallery/video/editor/widget/SingleChoiceRecyclerView$SingleChoiceRecyclerViewAdapter$SingleChoiceViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/miui/gallery/video/editor/adapter/WaterMarkHolder;

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->onBindView(Lcom/miui/gallery/video/editor/adapter/WaterMarkHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0

    check-cast p1, Lcom/miui/gallery/video/editor/adapter/WaterMarkHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->onBindViewHolder(Lcom/miui/gallery/video/editor/adapter/WaterMarkHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/miui/gallery/video/editor/adapter/WaterMarkHolder;ILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/video/editor/adapter/WaterMarkHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->onBindViewHolder(Lcom/miui/gallery/video/editor/widget/SingleChoiceRecyclerView$SingleChoiceRecyclerViewAdapter$SingleChoiceViewHolder;I)V

    goto :goto_2

    :cond_0
    iget-object p3, p0, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->mTextStyles:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/miui/gallery/video/editor/TextStyle;

    invoke-virtual {p3}, Lcom/miui/gallery/video/editor/TextStyle;->isLocal()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/miui/gallery/video/editor/adapter/WaterMarkHolder;->updateTextEditable(Z)V

    invoke-virtual {p0}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p3}, Lcom/miui/gallery/video/editor/TextStyle;->isDownloaded()Z

    move-result p2

    invoke-virtual {p1, v1, p2}, Lcom/miui/gallery/video/editor/adapter/WaterMarkHolder;->updateSelected(ZZ)V

    invoke-virtual {p3}, Lcom/miui/gallery/video/editor/TextStyle;->getDownloadState()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/miui/gallery/video/editor/adapter/WaterMarkHolder;->setStateImage(I)V

    invoke-virtual {p3}, Lcom/miui/gallery/video/editor/TextStyle;->isDownloadSuccess()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x11

    invoke-virtual {p3, p1}, Lcom/miui/gallery/video/editor/TextStyle;->setDownloadState(I)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onCreateSingleChoiceViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/video/editor/adapter/WaterMarkHolder;
    .locals 2

    iget-object p2, p0, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0b0187

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/miui/gallery/video/editor/adapter/WaterMarkHolder;

    invoke-direct {p2, p1}, Lcom/miui/gallery/video/editor/adapter/WaterMarkHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic onCreateSingleChoiceViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/video/editor/widget/SingleChoiceRecyclerView$SingleChoiceRecyclerViewAdapter$SingleChoiceViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/miui/gallery/video/editor/adapter/WatermarkRecyclerViewAdapter;->onCreateSingleChoiceViewHolder(Landroid/view/ViewGroup;I)Lcom/miui/gallery/video/editor/adapter/WaterMarkHolder;

    move-result-object p1

    return-object p1
.end method
