.class Lcom/miui/gallery/collage/CollageActivity$4;
.super Ljava/lang/Object;
.source "CollageActivity.java"

# interfaces
.implements Lcom/miui/gallery/collage/BitmapManager$BitmapLoaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/collage/CollageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/collage/CollageActivity;


# direct methods
.method constructor <init>(Lcom/miui/gallery/collage/CollageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/collage/CollageActivity$4;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapLoad([Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/gallery/collage/CollageActivity$4;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {p1}, Lcom/miui/gallery/collage/CollageActivity;->access$300(Lcom/miui/gallery/collage/CollageActivity;)V

    return-void
.end method

.method public onBitmapReplace(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gallery/collage/CollageActivity$4;->this$0:Lcom/miui/gallery/collage/CollageActivity;

    invoke-static {v0, p1, p2}, Lcom/miui/gallery/collage/CollageActivity;->access$400(Lcom/miui/gallery/collage/CollageActivity;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method
