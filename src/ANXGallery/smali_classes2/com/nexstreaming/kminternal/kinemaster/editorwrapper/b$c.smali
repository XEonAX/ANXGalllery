.class public Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;
.super Ljava/lang/Object;
.source "LookUpTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z


# direct methods
.method private constructor <init>(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;ILjava/lang/String;JZ)V
    .locals 0

    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->a:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->b:I

    iput-object p3, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->c:Ljava/lang/String;

    const-string p1, "."

    invoke-virtual {p3, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->d:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->f:Z

    invoke-direct {p0}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->f()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;ILjava/lang/String;JZLcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;-><init>(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b;ILjava/lang/String;JZ)V

    return-void
.end method

.method static synthetic a(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;)I
    .locals 0

    iget p0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->b:I

    return p0
.end method

.method static synthetic c(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->c:Ljava/lang/String;

    return-object p0
.end method

.method private f()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LUT_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->d:Ljava/lang/String;

    const-string v1, "disney"

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LUT_DBRIGHT"

    iput-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->b:I

    return v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->f:Z

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/b$c;->c:Ljava/lang/String;

    return-object v0
.end method
