.class Lcom/miui/gallery/collage/widget/CollageImageView$MatrixListener;
.super Ljava/lang/Object;
.source "CollageImageView.java"

# interfaces
.implements Lcom/miui/gallery/editor/photo/widgets/imageview/MatrixTransition$MatrixUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/widget/CollageImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MatrixListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/widget/CollageImageView;


# direct methods
.method private constructor <init>(Lcom/miui/gallery/collage/widget/CollageImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/collage/widget/CollageImageView$MatrixListener;->this$0:Lcom/miui/gallery/collage/widget/CollageImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/collage/widget/CollageImageView;Lcom/miui/gallery/collage/widget/CollageImageView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/gallery/collage/widget/CollageImageView$MatrixListener;-><init>(Lcom/miui/gallery/collage/widget/CollageImageView;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView$MatrixListener;->this$0:Lcom/miui/gallery/collage/widget/CollageImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/gallery/collage/widget/CollageImageView;->access$202(Lcom/miui/gallery/collage/widget/CollageImageView;Z)Z

    return-void
.end method

.method public onAnimationStart()V
    .locals 0

    return-void
.end method

.method public onMatrixUpdate()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView$MatrixListener;->this$0:Lcom/miui/gallery/collage/widget/CollageImageView;

    invoke-virtual {v0}, Lcom/miui/gallery/collage/widget/CollageImageView;->invalidate()V

    iget-object v0, p0, Lcom/miui/gallery/collage/widget/CollageImageView$MatrixListener;->this$0:Lcom/miui/gallery/collage/widget/CollageImageView;

    invoke-static {v0}, Lcom/miui/gallery/collage/widget/CollageImageView;->access$100(Lcom/miui/gallery/collage/widget/CollageImageView;)V

    return-void
.end method
