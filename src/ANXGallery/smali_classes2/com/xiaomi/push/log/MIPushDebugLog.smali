.class public Lcom/xiaomi/push/log/MIPushDebugLog;
.super Ljava/lang/Object;
.source "MIPushDebugLog.java"

# interfaces
.implements Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;


# instance fields
.field private sPushLogFileInterface:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

.field private sUserLogInterface:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;


# direct methods
.method public constructor <init>(Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/log/MIPushDebugLog;->sUserLogInterface:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    iput-object v0, p0, Lcom/xiaomi/push/log/MIPushDebugLog;->sPushLogFileInterface:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    iput-object p1, p0, Lcom/xiaomi/push/log/MIPushDebugLog;->sUserLogInterface:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    iput-object p2, p0, Lcom/xiaomi/push/log/MIPushDebugLog;->sPushLogFileInterface:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/log/MIPushDebugLog;->sUserLogInterface:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/log/MIPushDebugLog;->sUserLogInterface:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    invoke-interface {v0, p1}, Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/log/MIPushDebugLog;->sPushLogFileInterface:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/log/MIPushDebugLog;->sPushLogFileInterface:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    invoke-interface {v0, p1}, Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;->log(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/log/MIPushDebugLog;->sUserLogInterface:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/push/log/MIPushDebugLog;->sUserLogInterface:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/push/log/MIPushDebugLog;->sPushLogFileInterface:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/push/log/MIPushDebugLog;->sPushLogFileInterface:Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/channel/commonutils/logger/LoggerInterface;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
