.class Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1$2;
.super Ljava/lang/Object;
.source "SearchFeedbackHelper.java"

# interfaces
.implements Lcom/miui/gallery/ui/ProcessTask$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;

.field final synthetic val$contribute:Z


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1$2;->this$0:Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;

    iput-boolean p2, p0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1$2;->val$contribute:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleteProcess(Ljava/lang/Object;)V
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_0
    iget-object v0, p0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1$2;->this$0:Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;

    iget-object v0, v0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1$2;->this$0:Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;

    iget-object v1, v1, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;->val$tagName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1$2;->this$0:Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;

    iget-object v2, v2, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;->val$feedbackType:Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;

    iget-boolean v3, p0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1$2;->val$contribute:Z

    invoke-static {v0, v1, v2, p1, v3}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper;->access$100(Landroid/content/Context;Ljava/lang/String;Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$FeedbackType;IZ)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1$2;->this$0:Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;

    iget-object v1, v1, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1$2;->this$0:Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;

    iget-object v0, v0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;->val$completeListener:Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$OnFeedbackCompleteListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1$2;->this$0:Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;

    iget-object v0, v0, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$1;->val$completeListener:Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$OnFeedbackCompleteListener;

    invoke-interface {v0, p1}, Lcom/miui/gallery/search/feedback/SearchFeedbackHelper$OnFeedbackCompleteListener;->onComplete(I)V

    :cond_1
    return-void
.end method
