.class Lcom/miui/gallery/search/core/query/QueryLoader$2;
.super Landroid/database/ContentObserver;
.source "QueryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gallery/search/core/query/QueryLoader;->getResultContentObserver()Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/gallery/search/core/query/QueryLoader;


# direct methods
.method constructor <init>(Lcom/miui/gallery/search/core/query/QueryLoader;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/search/core/query/QueryLoader$2;->this$0:Lcom/miui/gallery/search/core/query/QueryLoader;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/miui/gallery/search/core/query/QueryLoader$2;->this$0:Lcom/miui/gallery/search/core/query/QueryLoader;

    invoke-virtual {p1}, Lcom/miui/gallery/search/core/query/QueryLoader;->onContentChanged()V

    return-void
.end method
