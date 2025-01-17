.class public Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLMosaicTriangleShader;
.super Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;
.source "GLMosaicTriangleShader.java"


# instance fields
.field private mGLAttrLength:I

.field private mLength:F


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const-string v0, "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\n// len \u662f\u516d\u8fb9\u5f62\u7684\u8fb9\u957f\nuniform highp float len;\n\nuniform int textureWidth;\nuniform int textureHeight;\n\nvoid main (void){\n    const highp float TR = 0.866025;  // .5*(3)^.5\n    const highp float PI = 3.1415927; // PI/6\n\n    highp vec2 texSize = vec2(float(textureWidth), float(textureHeight));\n\n    highp vec2 xy = vec2(textureCoordinate.x * texSize.x, textureCoordinate.y * texSize.y);\n\n    highp float rectWidth = 1.5*len;\n    highp float rectHeight = 0.5*len*sqrt(3.0);\n\n    int xStep = int(xy.x/rectWidth);\n    int yStep = int(xy.y/rectHeight);\n\n    highp float xStepF = float(xStep);\n    highp float yStepF = float(yStep);\n\n    highp vec2 v1, v2, vn;\n    if(xStep/2 * 2 == xStep) {\n        if(yStep/2 * 2 == yStep) {\n            v1 = vec2(rectWidth*xStepF, rectHeight*yStepF);\n            v2 = vec2(rectWidth*(xStepF+1.0), rectHeight*(yStepF+1.0));\n        } else {\n            v1 = vec2(rectWidth*xStepF, rectHeight*(yStepF+1.0));\n            v2 = vec2(rectWidth*(xStepF+1.0), rectHeight*yStepF);\n        }\n    } else {\n        if(yStep/2 * 2 == yStep) {\n            v1 = vec2(rectWidth*xStepF, rectHeight*(yStepF+1.0));\n            v2 = vec2(rectWidth*(xStepF+1.0), rectHeight*yStepF);\n        } else {\n            v1 = vec2(rectWidth*xStepF, rectHeight*yStepF);\n            v2 = vec2(rectWidth*(xStepF+1.0), rectHeight*(yStepF+1.0));\n        }\n    }\n    highp float s1 = sqrt( pow(v1.x-xy.x, 2.0) + pow(v1.y-xy.y, 2.0) );\n    highp float s2 = sqrt( pow(v2.x-xy.x, 2.0) + pow(v2.y-xy.y, 2.0) );\n\n    if(s1 < s2)\n        vn = v1;\n    else\n        vn = v2;\n\n    highp float a = atan((xy.y-vn.y), (xy.x-vn.x));//\u5939\u89d2\n    highp vec2 area1 = vec2(vn.x, vn.y-rectHeight/2.0);\n    highp vec2 area2 = vec2(vn.x-len/2.0, vn.y-rectHeight/2.0);\n    highp vec2 area3 = vec2(vn.x-len/2.0, vn.y+rectHeight/2.0);\n    highp vec2 area4 = vec2(vn.x, vn.y+rectHeight/2.0);\n    highp vec2 area5 = vec2(vn.x+len/2.0, vn.y+rectHeight/2.0);\n    highp vec2 area6 = vec2(vn.x+len/2.0, vn.y-rectHeight/2.0);\n\n    if(a>=PI/3.0 && a<PI/1.5)\n        vn = area1;\n    else if(a>=PI/1.5 && a<PI)\n        vn = area2;\n    else if(a>=-PI&&a<-PI/1.5)\n        vn = area3;\n    else if(a>=-PI/1.5&&a<-PI/3.0)\n        vn = area4;\n    else if(a>=-PI/3.0 && a<0.0)\n        vn = area5;\n    else if(a>=0.0 && a<PI/3.0)\n        vn = area6;\n\n    vn.x = vn.x/float(textureWidth);\n    vn.y = vn.y/float(textureHeight);\n    gl_FragColor = texture2D(inputImageTexture, vn);\n}"

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;-><init>(Ljava/lang/String;II)V

    invoke-direct {p0, p1}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLMosaicTriangleShader;->calMosaicSize(I)V

    return-void
.end method

.method private calMosaicSize(I)V
    .locals 2

    invoke-static {}, Lcom/miui/gallery/util/ScreenUtils;->getScreenWidth()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/high16 v0, 0x428c0000    # 70.0f

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLMosaicTriangleShader;->mLength:F

    :cond_0
    int-to-float p1, p1

    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    iput v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLMosaicTriangleShader;->mLength:F

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLMosaicTriangleShader;->mLength:F

    :goto_0
    return-void
.end method


# virtual methods
.method protected init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;->init(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLMosaicTriangleShader;->getProgram()I

    move-result p1

    const-string p2, "len"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLMosaicTriangleShader;->mGLAttrLength:I

    return-void
.end method

.method protected onPreDraw()V
    .locals 3

    invoke-super {p0}, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLTextureSizeShader;->onPreDraw()V

    iget v0, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLMosaicTriangleShader;->mGLAttrLength:I

    iget v1, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLMosaicTriangleShader;->mLength:F

    iget v2, p0, Lcom/miui/gallery/editor/photo/core/imports/mosaic/shader/GLMosaicTriangleShader;->mScale:F

    mul-float v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method
