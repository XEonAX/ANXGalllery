.class Lcom/nexstreaming/nexeditorsdk/nexProject$b;
.super Ljava/lang/Object;
.source "nexProject.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexProject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/nexeditorsdk/nexProject;


# direct methods
.method private constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexProject;)V
    .locals 0

    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexProject$b;->a:Lcom/nexstreaming/nexeditorsdk/nexProject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexProject;Lcom/nexstreaming/nexeditorsdk/nexProject$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nexstreaming/nexeditorsdk/nexProject$b;-><init>(Lcom/nexstreaming/nexeditorsdk/nexProject;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;)I
    .locals 2

    iget v0, p1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mStartTime:I

    iget v1, p2, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mStartTime:I

    if-le v0, v1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mStartTime:I

    iget p2, p2, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;->mStartTime:I

    if-ge p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    check-cast p2, Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;

    invoke-virtual {p0, p1, p2}, Lcom/nexstreaming/nexeditorsdk/nexProject$b;->a(Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;Lcom/nexstreaming/nexeditorsdk/nexOverlayItem;)I

    move-result p1

    return p1
.end method
