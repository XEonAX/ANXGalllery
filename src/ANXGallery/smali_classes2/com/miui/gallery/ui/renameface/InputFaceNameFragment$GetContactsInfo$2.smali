.class Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$2;
.super Ljava/lang/Object;
.source "InputFaceNameFragment.java"

# interfaces
.implements Lcom/miui/gallery/threadpool/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;->getContactCursor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/miui/gallery/threadpool/FutureListener<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;


# direct methods
.method constructor <init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$2;->this$1:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFutureDone(Lcom/miui/gallery/threadpool/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/gallery/threadpool/Future<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/miui/gallery/threadpool/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/database/Cursor;

    iget-object v0, p0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$2;->this$1:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;

    iget-object v0, v0, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo;->this$0:Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;

    invoke-static {v0}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;->access$1600(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$2$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$2$1;-><init>(Lcom/miui/gallery/ui/renameface/InputFaceNameFragment$GetContactsInfo$2;Landroid/database/Cursor;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
