.class Lcom/miui/gallery/search/navigationpage/NavigationFragment$1;
.super Ljava/lang/Object;
.source "NavigationFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/navigationpage/NavigationFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/navigationpage/NavigationFragment;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/navigationpage/NavigationFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment$1;->this$0:Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment$1;->this$0:Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    invoke-virtual {p1}, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->getCallback()Lcom/miui/gallery/search/SearchFragmentCallback;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/gallery/search/navigationpage/NavigationFragment$1;->this$0:Lcom/miui/gallery/search/navigationpage/NavigationFragment;

    invoke-virtual {p1}, Lcom/miui/gallery/search/navigationpage/NavigationFragment;->getCallback()Lcom/miui/gallery/search/SearchFragmentCallback;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/miui/gallery/search/SearchFragmentCallback;->requestIME(Z)V

    :cond_0
    return p2
.end method
