.class Lcom/miui/gallery/util/ShareComponentSorter$Tag;
.super Ljava/lang/Object;
.source "ShareComponentSorter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/ShareComponentSorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Tag"
.end annotation


# instance fields
.field private mClass:Ljava/lang/String;

.field private mPackage:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/gallery/util/ShareComponentSorter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/gallery/util/ShareComponentSorter$Tag;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->mPackage:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->mClass:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/gallery/util/ShareComponentSorter$Tag;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->mPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/miui/gallery/util/ShareComponentSorter$Tag;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->mPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/gallery/util/ShareComponentSorter$Tag;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->mClass:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/miui/gallery/util/ShareComponentSorter$Tag;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->mClass:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/miui/gallery/util/ShareComponentSorter$Tag;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/miui/gallery/util/ShareComponentSorter$Tag;

    iget-object v1, p0, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->mPackage:Ljava/lang/String;

    iget-object v3, p1, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->mClass:Ljava/lang/String;

    iget-object p1, p1, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->mClass:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->mPackage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/miui/gallery/util/ShareComponentSorter$Tag;->mClass:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
