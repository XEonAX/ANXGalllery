.class Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;
.super Ljava/lang/Object;
.source "LayerRenderer.java"

# interfaces
.implements Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$r;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "s"
.end annotation


# instance fields
.field a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;

.field b:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$m;

.field c:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;

.field d:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;

.field e:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;

.field final synthetic f:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

.field private g:I


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V
    .locals 3

    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;

    invoke-direct {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;

    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;

    invoke-direct {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;

    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;

    invoke-direct {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;

    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$m;

    invoke-direct {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$m;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->b:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$m;

    new-instance v0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;

    invoke-direct {v0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V

    iput-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->c:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;

    new-instance v1, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$l;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$l;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$1;)V

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$o;)V

    iget-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;

    invoke-virtual {p1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$o;)V

    iget-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;

    invoke-virtual {p1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$o;)V

    iget-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->b:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$m;

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;

    invoke-virtual {p1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$m;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$o;)V

    iget-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->c:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->b:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$m;

    invoke-virtual {p1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;->a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$o;)V

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->c:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;

    invoke-virtual {v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;->j()Ljava/lang/String;

    move-result-object v0

    const v1, 0x8b31

    invoke-virtual {p0, v1, v0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->a(ILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->c:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;

    invoke-virtual {v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;->k()Ljava/lang/String;

    move-result-object v1

    const v2, 0x8b30

    invoke-virtual {p0, v2, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->a(ILjava/lang/String;)I

    move-result v1

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    iput v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->g:I

    iget v2, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->g:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->g:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->g:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->g:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->c:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;

    iget v1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->g:I

    invoke-virtual {v0, v1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;->a(I)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)I
    .locals 0

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    invoke-static {p1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    return p1
.end method

.method public a(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->a(FFF)V

    return-void
.end method

.method public a(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->a(FFFF)V

    return-void
.end method

.method public a(III)V
    .locals 1

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->e:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$d;->a(III)V

    return-void
.end method

.method public a(I[F[FFLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 1

    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->g:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->a()V

    :cond_0
    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->g:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;

    invoke-virtual {v0, p5}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->a(Ljava/nio/FloatBuffer;)V

    iget-object p5, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;

    invoke-virtual {p5, p6}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->b(Ljava/nio/FloatBuffer;)V

    iget-object p5, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;

    invoke-virtual {p5, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->a_(I)V

    iget-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;

    invoke-virtual {p1, p3}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$e;->a([F)V

    iget-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->a:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;

    invoke-virtual {p1, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$a;->a([F)V

    iget-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->c:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;

    invoke-virtual {p1, p4}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;->a(F)V

    iget-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->c:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;

    new-instance p2, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$n;

    iget-object p3, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->f:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

    invoke-direct {p2, p3}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$n;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V

    invoke-virtual {p1, p2}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$aa;->b(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$n;)V

    const/4 p1, 0x5

    const/4 p2, 0x0

    const/4 p3, 0x4

    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    return-void
.end method

.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;[F[FFLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 7

    iget v1, p1, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$h;->a:I

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$s;->a(I[F[FFLjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    return-void
.end method
