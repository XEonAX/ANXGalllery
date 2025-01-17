.class public Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;
.super Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;
.source "MosaicGLView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$MosaicEntry;
    }
.end annotation


# instance fields
.field private mCaptureListener:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager$CaptureListener;

.field private mCurrentEntity:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

.field private mCustomRender:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

.field private mFeatureGesListener:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$FeatureGesListener;

.field private mGLPosition:[F

.field private mGLPositionReverse:[F

.field private mInit:Z

.field private mMarkPosition:[F

.field private mMarkRect:Landroid/graphics/RectF;

.field private mMosaicUndoManager:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;

.field private mOperationUpdateListener:Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;

.field private mPaintSize:F

.field private mPaintSizeScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mGLPosition:[F

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mGLPositionReverse:[F

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mMarkPosition:[F

    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mMarkRect:Landroid/graphics/RectF;

    const/high16 p1, 0x43480000    # 200.0f

    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mPaintSize:F

    iget p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mPaintSize:F

    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mPaintSizeScale:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mInit:Z

    new-instance p1, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$1;

    invoke-direct {p1, p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$1;-><init>(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;)V

    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mFeatureGesListener:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$FeatureGesListener;

    new-instance p1, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$2;

    invoke-direct {p1, p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$2;-><init>(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;)V

    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mCaptureListener:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager$CaptureListener;

    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;)Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;
    .locals 0

    iget-object p0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;)F
    .locals 0

    iget p0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mPaintSizeScale:F

    return p0
.end method

.method static synthetic access$1000(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;)Landroid/graphics/RectF;
    .locals 0

    iget-object p0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mMarkRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;F)F
    .locals 0

    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mPaintSizeScale:F

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;)[F
    .locals 0

    iget-object p0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mMarkPosition:[F

    return-object p0
.end method

.method static synthetic access$1200(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mOriginBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mOriginBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;)Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mOperationUpdateListener:Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;)F
    .locals 0

    iget p0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mPaintSize:F

    return p0
.end method

.method static synthetic access$300(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mOriginBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;)Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;
    .locals 0

    iget-object p0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;)Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;
    .locals 0

    iget-object p0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;)Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;
    .locals 0

    iget-object p0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;)Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;
    .locals 0

    iget-object p0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mCurrentEntity:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;)Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;
    .locals 0

    iget-object p0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mMosaicUndoManager:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;)Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;
    .locals 0

    iget-object p0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mCustomRender:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    return-object p0
.end method

.method private init()V
    .locals 0

    return-void
.end method

.method private refreshGLPosition()V
    .locals 4

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mBitmapGestureParamsHolder:Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;

    iget-object v0, v0, Lcom/miui/gallery/editor/photo/widgets/imageview/BitmapGestureParamsHolder;->mBitmapDisplayRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mGLPosition:[F

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->generateVertexPosition(Landroid/graphics/RectF;[F)V

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mGLPositionReverse:[F

    invoke-virtual {p0, v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->generateVertexPositionReverse(Landroid/graphics/RectF;[F)V

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mGLPositionReverse:[F

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mCustomRender:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    iget-object v1, v1, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->mGLPosition:[F

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mGLPositionReverse:[F

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public canRevert()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mMosaicUndoManager:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->canRevert()Z

    move-result v0

    return v0
.end method

.method public canRevoke()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mMosaicUndoManager:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->canRevoke()Z

    move-result v0

    return v0
.end method

.method public doRevert()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mMosaicUndoManager:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->doRevert()Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mCustomRender:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->enableCapture(Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;)V

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->requestRender()V

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mOperationUpdateListener:Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mOperationUpdateListener:Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;->onOperationUpdate()V

    :cond_0
    return-void
.end method

.method public doRevoke()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mMosaicUndoManager:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->doRevoke()Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mCustomRender:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    invoke-virtual {v1, v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->enableCapture(Lcom/miui/gallery/editor/photo/widgets/glview/GLFBOManager;)V

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->requestRender()V

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mOperationUpdateListener:Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mOperationUpdateListener:Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;

    invoke-interface {v0}, Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;->onOperationUpdate()V

    :cond_0
    return-void
.end method

.method public export()Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$MosaicEntry;
    .locals 4

    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$MosaicEntry;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mMosaicUndoManager:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;

    invoke-virtual {v1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->exportRecord()Ljava/util/LinkedList;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mOriginBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mOriginBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView$MosaicEntry;-><init>(Ljava/util/LinkedList;II)V

    return-object v0
.end method

.method public generateSample()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mMosaicUndoManager:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mMosaicUndoManager:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->generateSample()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mMosaicUndoManager:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mMosaicUndoManager:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onBitmapMatrixChange()V
    .locals 5

    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mInit:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mOriginBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mOriginBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->getHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;-><init>(IIII)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mMosaicUndoManager:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mMosaicUndoManager:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mCaptureListener:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager$CaptureListener;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->setCaptureListener(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager$CaptureListener;)V

    new-instance v0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mOriginBitmap:Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    sget-object v3, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->ASSETS:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    sget-object v4, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicProvider;->PEN_MASK_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mCustomRender:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mCustomRender:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mFeatureGesListener:Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$FeatureGesListener;

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->setFeatureGestureListener(Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView$FeatureGesListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->setRenderMode(I)V

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mCustomRender:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mCurrentEntity:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->init(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;)V

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mCustomRender:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    iget-object v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mMosaicUndoManager:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;

    invoke-virtual {v0, v1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->capture(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mInit:Z

    :cond_0
    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->refreshGLPosition()V

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->requestRender()V

    return-void
.end method

.method protected onCanvasMatrixChange()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->refreshGLPosition()V

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->requestRender()V

    return-void
.end method

.method public onClear()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mMosaicUndoManager:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mMosaicUndoManager:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;

    invoke-virtual {v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicUndoManager;->clearBuffer()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mInit:Z

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lcom/miui/gallery/editor/photo/widgets/glview/BitmapGestureGLView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setCurrentEntity(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;)V
    .locals 1

    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mCurrentEntity:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    iget-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mCustomRender:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mCustomRender:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;

    iget-object v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mCurrentEntity:Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;

    invoke-virtual {p1, v0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicRender;->enableEntity(Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLEntity;)V

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->requestRender()V

    :cond_0
    return-void
.end method

.method public setMosaicPaintSize(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mPaintSize:F

    return-void
.end method

.method public setOperationUpdateListener(Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/MosaicGLView;->mOperationUpdateListener:Lcom/miui/gallery/editor/photo/app/OperationUpdateListener;

    return-void
.end method
