.class Lcom/google/gson_nex/internal/bind/ReflectiveTypeAdapterFactory$1;
.super Lcom/google/gson_nex/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson_nex/internal/bind/ReflectiveTypeAdapterFactory;->createBoundField(Lcom/google/gson_nex/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/gson_nex/reflect/TypeToken;ZZ)Lcom/google/gson_nex/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gson_nex/internal/bind/ReflectiveTypeAdapterFactory;

.field final typeAdapter:Lcom/google/gson_nex/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson_nex/TypeAdapter<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic val$context:Lcom/google/gson_nex/Gson;

.field final synthetic val$field:Ljava/lang/reflect/Field;

.field final synthetic val$fieldType:Lcom/google/gson_nex/reflect/TypeToken;

.field final synthetic val$isPrimitive:Z


# direct methods
.method constructor <init>(Lcom/google/gson_nex/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLcom/google/gson_nex/Gson;Lcom/google/gson_nex/reflect/TypeToken;Ljava/lang/reflect/Field;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/gson_nex/internal/bind/ReflectiveTypeAdapterFactory$1;->this$0:Lcom/google/gson_nex/internal/bind/ReflectiveTypeAdapterFactory;

    iput-object p5, p0, Lcom/google/gson_nex/internal/bind/ReflectiveTypeAdapterFactory$1;->val$context:Lcom/google/gson_nex/Gson;

    iput-object p6, p0, Lcom/google/gson_nex/internal/bind/ReflectiveTypeAdapterFactory$1;->val$fieldType:Lcom/google/gson_nex/reflect/TypeToken;

    iput-object p7, p0, Lcom/google/gson_nex/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    iput-boolean p8, p0, Lcom/google/gson_nex/internal/bind/ReflectiveTypeAdapterFactory$1;->val$isPrimitive:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/google/gson_nex/internal/bind/ReflectiveTypeAdapterFactory$BoundField;-><init>(Ljava/lang/String;ZZ)V

    iget-object p1, p0, Lcom/google/gson_nex/internal/bind/ReflectiveTypeAdapterFactory$1;->val$context:Lcom/google/gson_nex/Gson;

    iget-object p2, p0, Lcom/google/gson_nex/internal/bind/ReflectiveTypeAdapterFactory$1;->val$fieldType:Lcom/google/gson_nex/reflect/TypeToken;

    invoke-virtual {p1, p2}, Lcom/google/gson_nex/Gson;->getAdapter(Lcom/google/gson_nex/reflect/TypeToken;)Lcom/google/gson_nex/TypeAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson_nex/internal/bind/ReflectiveTypeAdapterFactory$1;->typeAdapter:Lcom/google/gson_nex/TypeAdapter;

    return-void
.end method


# virtual methods
.method read(Lcom/google/gson_nex/stream/JsonReader;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson_nex/internal/bind/ReflectiveTypeAdapterFactory$1;->typeAdapter:Lcom/google/gson_nex/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/google/gson_nex/TypeAdapter;->read(Lcom/google/gson_nex/stream/JsonReader;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/google/gson_nex/internal/bind/ReflectiveTypeAdapterFactory$1;->val$isPrimitive:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/gson_nex/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method write(Lcom/google/gson_nex/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson_nex/internal/bind/ReflectiveTypeAdapterFactory$1;->val$field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    new-instance v0, Lcom/google/gson_nex/internal/bind/TypeAdapterRuntimeTypeWrapper;

    iget-object v1, p0, Lcom/google/gson_nex/internal/bind/ReflectiveTypeAdapterFactory$1;->val$context:Lcom/google/gson_nex/Gson;

    iget-object v2, p0, Lcom/google/gson_nex/internal/bind/ReflectiveTypeAdapterFactory$1;->typeAdapter:Lcom/google/gson_nex/TypeAdapter;

    iget-object v3, p0, Lcom/google/gson_nex/internal/bind/ReflectiveTypeAdapterFactory$1;->val$fieldType:Lcom/google/gson_nex/reflect/TypeToken;

    invoke-virtual {v3}, Lcom/google/gson_nex/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gson_nex/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/google/gson_nex/Gson;Lcom/google/gson_nex/TypeAdapter;Ljava/lang/reflect/Type;)V

    invoke-virtual {v0, p1, p2}, Lcom/google/gson_nex/TypeAdapter;->write(Lcom/google/gson_nex/stream/JsonWriter;Ljava/lang/Object;)V

    return-void
.end method
