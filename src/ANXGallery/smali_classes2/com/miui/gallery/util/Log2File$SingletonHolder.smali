.class Lcom/miui/gallery/util/Log2File$SingletonHolder;
.super Ljava/lang/Object;
.source "Log2File.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/util/Log2File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static instance:Lcom/miui/gallery/util/Log2File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/gallery/util/Log2File;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/util/Log2File;-><init>(Lcom/miui/gallery/util/Log2File$1;)V

    sput-object v0, Lcom/miui/gallery/util/Log2File$SingletonHolder;->instance:Lcom/miui/gallery/util/Log2File;

    return-void
.end method

.method static synthetic access$100()Lcom/miui/gallery/util/Log2File;
    .locals 1

    sget-object v0, Lcom/miui/gallery/util/Log2File$SingletonHolder;->instance:Lcom/miui/gallery/util/Log2File;

    return-object v0
.end method
