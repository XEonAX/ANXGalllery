.class public final enum Lcom/xiaomi/push/service/awake/module/HelpType;
.super Ljava/lang/Enum;
.source "HelpType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/push/service/awake/module/HelpType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/push/service/awake/module/HelpType;

.field public static final enum ACTIVITY:Lcom/xiaomi/push/service/awake/module/HelpType;

.field public static final enum PROVIDER:Lcom/xiaomi/push/service/awake/module/HelpType;

.field public static final enum SERVICE_ACTION:Lcom/xiaomi/push/service/awake/module/HelpType;

.field public static final enum SERVICE_COMPONENT:Lcom/xiaomi/push/service/awake/module/HelpType;


# instance fields
.field public typeValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/xiaomi/push/service/awake/module/HelpType;

    const-string v1, "ACTIVITY"

    const-string v2, "activity"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaomi/push/service/awake/module/HelpType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/service/awake/module/HelpType;->ACTIVITY:Lcom/xiaomi/push/service/awake/module/HelpType;

    new-instance v0, Lcom/xiaomi/push/service/awake/module/HelpType;

    const-string v1, "SERVICE_ACTION"

    const-string v2, "service_action"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/push/service/awake/module/HelpType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/service/awake/module/HelpType;->SERVICE_ACTION:Lcom/xiaomi/push/service/awake/module/HelpType;

    new-instance v0, Lcom/xiaomi/push/service/awake/module/HelpType;

    const-string v1, "SERVICE_COMPONENT"

    const-string v2, "service_component"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/push/service/awake/module/HelpType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/service/awake/module/HelpType;->SERVICE_COMPONENT:Lcom/xiaomi/push/service/awake/module/HelpType;

    new-instance v0, Lcom/xiaomi/push/service/awake/module/HelpType;

    const-string v1, "PROVIDER"

    const-string v2, "provider"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/xiaomi/push/service/awake/module/HelpType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaomi/push/service/awake/module/HelpType;->PROVIDER:Lcom/xiaomi/push/service/awake/module/HelpType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/xiaomi/push/service/awake/module/HelpType;

    sget-object v1, Lcom/xiaomi/push/service/awake/module/HelpType;->ACTIVITY:Lcom/xiaomi/push/service/awake/module/HelpType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/push/service/awake/module/HelpType;->SERVICE_ACTION:Lcom/xiaomi/push/service/awake/module/HelpType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/push/service/awake/module/HelpType;->SERVICE_COMPONENT:Lcom/xiaomi/push/service/awake/module/HelpType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaomi/push/service/awake/module/HelpType;->PROVIDER:Lcom/xiaomi/push/service/awake/module/HelpType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaomi/push/service/awake/module/HelpType;->$VALUES:[Lcom/xiaomi/push/service/awake/module/HelpType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/xiaomi/push/service/awake/module/HelpType;->typeValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/push/service/awake/module/HelpType;
    .locals 1

    const-class v0, Lcom/xiaomi/push/service/awake/module/HelpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/push/service/awake/module/HelpType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/push/service/awake/module/HelpType;
    .locals 1

    sget-object v0, Lcom/xiaomi/push/service/awake/module/HelpType;->$VALUES:[Lcom/xiaomi/push/service/awake/module/HelpType;

    invoke-virtual {v0}, [Lcom/xiaomi/push/service/awake/module/HelpType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/push/service/awake/module/HelpType;

    return-object v0
.end method
