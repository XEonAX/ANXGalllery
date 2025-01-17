.class public Lcom/miui/gallery/util/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# static fields
.field private static sIsLastCancelable:Z

.field private static sLastToast:Landroid/widget/Toast;

.field private static sSyncObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/gallery/util/ToastUtils;->sSyncObj:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/miui/gallery/util/ToastUtils;->sSyncObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Landroid/widget/Toast;
    .locals 1

    sget-object v0, Lcom/miui/gallery/util/ToastUtils;->sLastToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    sput-object p0, Lcom/miui/gallery/util/ToastUtils;->sLastToast:Landroid/widget/Toast;

    return-object p0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/miui/gallery/util/ToastUtils;->sIsLastCancelable:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/miui/gallery/util/ToastUtils;->sIsLastCancelable:Z

    return p0
.end method

.method public static makeText(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;IIZ)V

    return-void
.end method

.method public static makeText(Landroid/content/Context;II)V
    .locals 1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;IZ)V

    return-void
.end method

.method public static makeText(Landroid/content/Context;IIZ)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;IZ)V

    return-void
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;IZ)V

    return-void
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;IZ)V
    .locals 2

    invoke-static {}, Lcom/miui/gallery/threadpool/ThreadManager;->getMainHandler()Lcom/android/internal/CompatHandler;

    move-result-object v0

    new-instance v1, Lcom/miui/gallery/util/ToastUtils$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/gallery/util/ToastUtils$1;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/internal/CompatHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;IZ)V

    return-void
.end method

.method public static makeTextLong(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0, v0}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;IIZ)V

    return-void
.end method

.method public static makeTextLong(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/miui/gallery/util/ToastUtils;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;Z)V

    return-void
.end method
