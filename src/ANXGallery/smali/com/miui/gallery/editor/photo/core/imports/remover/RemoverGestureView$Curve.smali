.class public abstract Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;
.super Ljava/lang/Object;
.source "RemoverGestureView.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Curve"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve$Builder;
    }
.end annotation


# instance fields
.field protected mPaint:Landroid/graphics/Paint;

.field private mStrokeWidth:F


# direct methods
.method constructor <init>(Landroid/graphics/Paint;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p1

    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;->mStrokeWidth:F

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;->mStrokeWidth:F

    invoke-static {}, Lcom/miui/gallery/GalleryApp;->sGetAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView;->initCurvePaint(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;->mPaint:Landroid/graphics/Paint;

    iget-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;->mStrokeWidth:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method final computeBounds(Landroid/graphics/RectF;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;->onComputeBounds(Landroid/graphics/RectF;)V

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    neg-float v0, v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->inset(FF)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final draw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;->onDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method abstract isEmpty(Landroid/graphics/RectF;)Z
.end method

.method abstract onComputeBounds(Landroid/graphics/RectF;)V
.end method

.method abstract onDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/miui/gallery/editor/photo/core/imports/remover/RemoverGestureView$Curve;->mStrokeWidth:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
