.class Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$7;
.super Ljava/lang/Object;
.source "WaterMarkFragment.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->initEnterAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$7;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "WaterMarkFragment"

    const-string v0, "water mark popwinow appear animation cancel!"

    invoke-static {p1, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$7;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {p1}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1600(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$7;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {p1}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$2100(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$7;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1600(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$7;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {p1}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$2100(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment$7;->this$0:Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;

    invoke-static {v0}, Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;->access$1600(Lcom/miui/gallery/video/editor/ui/WaterMarkFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    const-string p1, "WaterMarkFragment"

    const-string v0, "water mark popwinow appear animation end!"

    invoke-static {p1, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "WaterMarkFragment"

    const-string v0, "water mark popwinow appear animation start!"

    invoke-static {p1, v0}, Lcom/miui/gallery/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
