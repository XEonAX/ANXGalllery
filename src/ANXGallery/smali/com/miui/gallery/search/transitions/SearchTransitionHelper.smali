.class public abstract Lcom/miui/gallery/search/transitions/SearchTransitionHelper;
.super Ljava/lang/Object;
.source "SearchTransitionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/gallery/search/transitions/SearchTransitionHelper$SearchTransitionListener;
    }
.end annotation


# instance fields
.field protected mEnterTransitionListener:Lcom/miui/gallery/search/transitions/SearchTransitionHelper$SearchTransitionListener;

.field protected mFragment:Lmiui/app/Fragment;


# direct methods
.method public constructor <init>(Lmiui/app/Fragment;Lcom/miui/gallery/search/transitions/SearchTransitionHelper$SearchTransitionListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gallery/search/transitions/SearchTransitionHelper;->mFragment:Lmiui/app/Fragment;

    iput-object p2, p0, Lcom/miui/gallery/search/transitions/SearchTransitionHelper;->mEnterTransitionListener:Lcom/miui/gallery/search/transitions/SearchTransitionHelper$SearchTransitionListener;

    return-void
.end method


# virtual methods
.method public abstract configTransition()V
.end method

.method public abstract getSharedElementCallback()Lcom/miui/gallery/search/transitions/SearchSharedElementCallback;
.end method
