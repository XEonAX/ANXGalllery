.class public Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;
.super Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$h;
.source "KMIntentBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$h<",
        "Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$h;-><init>(Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a;)V

    return-void
.end method


# virtual methods
.method public a(FFFFFFFF)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;
    .locals 1

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->a:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;

    iput p1, v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;->cropStartLeft:F

    iget-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->a:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;

    iput p2, p1, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;->cropStartTop:F

    iget-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->a:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;

    iput p3, p1, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;->cropStartRight:F

    iget-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->a:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;

    iput p4, p1, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;->cropStartBottom:F

    iget-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->a:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;

    iput p5, p1, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;->cropEndLeft:F

    iget-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->a:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;

    iput p6, p1, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;->cropEndTop:F

    iget-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->a:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;

    iput p7, p1, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;->cropEndRight:F

    iget-object p1, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->a:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;

    iput p8, p1, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;->cropEndBottom:F

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;
    .locals 1

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->a:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;

    iput-object p1, v0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/KMIntentData$VisualClip;->path:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a;
    .locals 1

    iget-object v0, p0, Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a$b;->b:Lcom/nexstreaming/kminternal/kinemaster/editorwrapper/a;

    return-object v0
.end method
