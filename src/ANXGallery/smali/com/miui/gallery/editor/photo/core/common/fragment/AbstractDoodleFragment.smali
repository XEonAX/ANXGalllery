.class public abstract Lcom/miui/gallery/editor/photo/core/common/fragment/AbstractDoodleFragment;
.super Lcom/miui/gallery/editor/photo/core/RenderFragment;
.source "AbstractDoodleFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/RenderFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract canRevert()Z
.end method

.method public abstract canRevoke()Z
.end method

.method public abstract doRevert()V
.end method

.method public abstract doRevoke()V
.end method

.method public abstract setColor(I)V
.end method

.method public abstract setDoodleData(Lcom/miui/gallery/editor/photo/core/common/model/DoodleData;)V
.end method

.method public abstract setOperationUpdateListener(Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;)V
.end method

.method public abstract setPaintSize(F)V
.end method
