.class Lcom/xiaomi/mistatistic/sdk/controller/s$1;
.super Landroid/os/Handler;
.source "UploadPolicyEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/mistatistic/sdk/controller/s;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaomi/mistatistic/sdk/controller/s;


# direct methods
.method constructor <init>(Lcom/xiaomi/mistatistic/sdk/controller/s;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/s$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/s;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/s$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/s;

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/s;->e(Lcom/xiaomi/mistatistic/sdk/controller/s;)V

    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/s$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/s;

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/s;->g(Lcom/xiaomi/mistatistic/sdk/controller/s;)V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/s$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/s;

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/s;->d(Lcom/xiaomi/mistatistic/sdk/controller/s;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/s$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/s;

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/s;->e(Lcom/xiaomi/mistatistic/sdk/controller/s;)V

    :cond_0
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/s$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/s;

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/s;->f(Lcom/xiaomi/mistatistic/sdk/controller/s;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/s$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/s;

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/s;->c(Lcom/xiaomi/mistatistic/sdk/controller/s;)V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/s$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/s;

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/s;->a(Lcom/xiaomi/mistatistic/sdk/controller/s;)V

    iget-object p1, p0, Lcom/xiaomi/mistatistic/sdk/controller/s$1;->a:Lcom/xiaomi/mistatistic/sdk/controller/s;

    invoke-static {p1}, Lcom/xiaomi/mistatistic/sdk/controller/s;->b(Lcom/xiaomi/mistatistic/sdk/controller/s;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
