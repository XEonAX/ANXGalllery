.class public Lcom/xiaomi/push/providers/TrafficDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "TrafficDatabaseHelper.java"


# static fields
.field private static DATABASE_VERSION:I = 0x1

.field public static final DataBaseLock:Ljava/lang/Object;

.field private static final TRAFFIC_Columns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/xiaomi/push/providers/TrafficDatabaseHelper;->DataBaseLock:Ljava/lang/Object;

    const-string v1, "package_name"

    const-string v2, "TEXT"

    const-string v3, "message_ts"

    const-string v4, " LONG DEFAULT 0 "

    const-string v5, "bytes"

    const-string v6, " LONG DEFAULT 0 "

    const-string v7, "network_type"

    const-string v8, " INT DEFAULT -1 "

    const-string v9, "rcv"

    const-string v10, " INT DEFAULT -1 "

    const-string v11, "imsi"

    const-string v12, "TEXT"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/push/providers/TrafficDatabaseHelper;->TRAFFIC_Columns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "traffic.db"

    sget v1, Lcom/xiaomi/push/providers/TrafficDatabaseHelper;->DATABASE_VERSION:I

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private createTrafficTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE traffic(_id INTEGER  PRIMARY KEY ,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/xiaomi/push/providers/TrafficDatabaseHelper;->TRAFFIC_Columns:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    sget-object v2, Lcom/xiaomi/push/providers/TrafficDatabaseHelper;->TRAFFIC_Columns:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaomi/push/providers/TrafficDatabaseHelper;->TRAFFIC_Columns:[Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_1
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    sget-object v0, Lcom/xiaomi/push/providers/TrafficDatabaseHelper;->DataBaseLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/xiaomi/push/providers/TrafficDatabaseHelper;->createTrafficTable(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/xiaomi/channel/commonutils/logger/MyLog;->e(Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
