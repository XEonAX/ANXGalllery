.class Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;
.super Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$o;
.source "LayerRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:F

.field final synthetic d:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

.field private f:I


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V
    .locals 0

    iput-object p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;->d:Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;

    invoke-direct {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$o;-><init>(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;->f:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;->c:F

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;->a(Ljava/lang/String;)V

    const-string p1, "applyLUT"

    invoke-virtual {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;->b(Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;->c(Ljava/lang/String;)V

    const-string p1, "const highp float block_factor = 64.0;\nuniform sampler2D u_textureSampler_for_lut;\nuniform highp float u_strength_for_lut;\n\nhighp vec4 applyLUT(highp vec4 color) {\n   highp float block = (block_factor - 1.0) * color.b;\n   highp float low = floor(block);\n   highp float high = ceil(block);\n   highp float y0 = mod(low, 8.0);\n   highp float x0 = (low - y0) / 8.0;\n   highp float y1 = mod(high, 8.0);\n   highp float x1 = (high - y1) / 8.0;\n   x0 /= 8.0;\n   y0 /= 8.0;\n   x1 /= 8.0;\n   y1 /= 8.0;\n   highp vec2 rg_pos = (63.0 / 512.0) * color.rg + 0.5 / 512.0;\n   highp vec4 color0 = texture2D(u_textureSampler_for_lut, vec2(x0, y0) + rg_pos.yx).rgba;\n   highp vec4 color1 = texture2D(u_textureSampler_for_lut, vec2(x1, y1) + rg_pos.yx).rgba;\n   return vec4(mix(color.rgb, mix(color0, color1, fract(block)).rgb, u_strength_for_lut).rgb * color.a, color.a);\n}"

    invoke-virtual {p0, p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;->d(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$n;)V
    .locals 2

    invoke-virtual {p1}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$n;->a()I

    move-result p1

    const v0, 0x84c0

    add-int/2addr v0, p1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;->f:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;->a:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    iget p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;->b:I

    iget v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;->c:F

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    invoke-static {}, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer;->p()V

    return-void
.end method

.method public b(I)V
    .locals 1

    const-string v0, "u_textureSampler_for_lut"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;->a:I

    const-string v0, "u_strength_for_lut"

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;->b:I

    return-void
.end method

.method d_(I)V
    .locals 0

    iput p1, p0, Lcom/nexstreaming/kminternal/nexvideoeditor/LayerRenderer$f;->f:I

    return-void
.end method
