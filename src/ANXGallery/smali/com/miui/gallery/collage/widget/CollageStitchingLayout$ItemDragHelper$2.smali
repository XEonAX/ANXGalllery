.class Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper$2;
.super Ljava/lang/Object;
.source "CollageStitchingLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper$2;->this$1:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "property_name_alpha"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper$2;->this$1:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;

    iget-object v1, v1, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const-string v0, "property_name_matrix"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper$2;->this$1:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;

    iget-object v1, v1, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mMatrix:Landroid/graphics/Matrix;

    check-cast v0, Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :cond_0
    const-string v0, "property_name_rect"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper$2;->this$1:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;

    iget-object v0, v0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->mClipRect:Landroid/graphics/RectF;

    check-cast p1, Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_1
    iget-object p1, p0, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper$2;->this$1:Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;

    iget-object p1, p1, Lcom/miui/gallery/collage/widget/CollageStitchingLayout$ItemDragHelper;->this$0:Lcom/miui/gallery/collage/widget/CollageStitchingLayout;

    invoke-virtual {p1}, Lcom/miui/gallery/collage/widget/CollageStitchingLayout;->invalidate()V

    return-void
.end method
