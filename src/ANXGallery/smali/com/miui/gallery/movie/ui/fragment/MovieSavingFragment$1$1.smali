.class Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$1$1;
.super Lcom/miui/gallery/threadpool/FutureHandler;
.source "MovieSavingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$1;->onEncodeEnd(ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/gallery/threadpool/FutureHandler<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$1;

.field final synthetic val$isCancel:Z

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$1;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$1$1;->this$1:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$1;

    iput-boolean p2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$1$1;->val$success:Z

    iput-boolean p3, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$1$1;->val$isCancel:Z

    invoke-direct {p0}, Lcom/miui/gallery/threadpool/FutureHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute(Lcom/miui/gallery/threadpool/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/Future<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$1$1;->this$1:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$1;

    iget-object v0, v0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$1;->this$0:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;

    invoke-virtual {v0}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment;->dismissSafely()V

    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$1$1;->this$1:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$1;

    iget-object v0, v0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$1;->val$onSavingFinishListener:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$OnSavingFinishListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$1$1;->this$1:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$1;

    iget-object v0, v0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$1;->val$onSavingFinishListener:Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$OnSavingFinishListener;

    iget-boolean v1, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$1$1;->val$success:Z

    iget-boolean v2, p0, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$1$1;->val$isCancel:Z

    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/miui/gallery/movie/ui/fragment/MovieSavingFragment$OnSavingFinishListener;->onFinish(ZZLjava/lang/String;)V

    :cond_0
    return-void
.end method
