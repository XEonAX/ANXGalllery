.class Lcom/miui/gallery/cloudcontrol/CloudControlManager$SingletonHolder;
.super Ljava/lang/Object;
.source "CloudControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gallery/cloudcontrol/CloudControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/miui/gallery/cloudcontrol/CloudControlManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/gallery/cloudcontrol/CloudControlManager;-><init>(Lcom/miui/gallery/cloudcontrol/CloudControlManager$1;)V

    sput-object v0, Lcom/miui/gallery/cloudcontrol/CloudControlManager$SingletonHolder;->INSTANCE:Lcom/miui/gallery/cloudcontrol/CloudControlManager;

    return-void
.end method
