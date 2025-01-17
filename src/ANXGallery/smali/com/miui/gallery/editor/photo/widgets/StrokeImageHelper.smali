.class public Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;
.super Ljava/lang/Object;
.source "StrokeImageHelper.java"


# instance fields
.field private mContentBounds:Landroid/graphics/RectF;

.field private mStrokePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mContentBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mStrokePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06034b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0500fc

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mContentBounds:Landroid/graphics/RectF;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->fixContentBounds()V

    iget-object p2, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mContentBounds:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private fixContentBounds()V
    .locals 6

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mContentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mContentBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mContentBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v2

    iget-object v4, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mContentBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    iget-object v5, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mContentBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v2

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Matrix;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mContentBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1, p3}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mContentBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->fixContentBounds()V

    iget-object p2, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mContentBounds:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Matrix;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->mContentBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-direct {p0, p1, p3}, Lcom/miui/gallery/editor/photo/widgets/StrokeImageHelper;->draw(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    return-void
.end method
