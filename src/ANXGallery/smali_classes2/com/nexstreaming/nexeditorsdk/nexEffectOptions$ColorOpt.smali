.class public Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$ColorOpt;
.super Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$Option;
.source "nexEffectOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorOpt"
.end annotation


# instance fields
.field protected argb_color:I

.field protected default_argb_color:I

.field final synthetic this$0:Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;


# direct methods
.method private constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;)V
    .locals 1

    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$ColorOpt;->this$0:Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$Option;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$1;)V

    return-void
.end method

.method protected constructor <init>(Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$ColorOpt;->this$0:Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;

    invoke-direct {p0, p1, p2, p3}, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$Option;-><init>(Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4}, Lcom/nexstreaming/app/common/util/c;->a(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$ColorOpt;->argb_color:I

    iget p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$ColorOpt;->argb_color:I

    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$ColorOpt;->default_argb_color:I

    return-void
.end method


# virtual methods
.method public getARGBformat()I
    .locals 1

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$ColorOpt;->argb_color:I

    return v0
.end method

.method public setARGBColor(I)V
    .locals 2

    iget v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$ColorOpt;->argb_color:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$ColorOpt;->this$0:Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;->access$102(Lcom/nexstreaming/nexeditorsdk/nexEffectOptions;Z)Z

    :cond_0
    iput p1, p0, Lcom/nexstreaming/nexeditorsdk/nexEffectOptions$ColorOpt;->argb_color:I

    return-void
.end method
