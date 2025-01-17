.class public final Lcom/google/gson_nex/GsonBuilder;
.super Ljava/lang/Object;
.source "GsonBuilder.java"


# instance fields
.field private complexMapKeySerialization:Z

.field private datePattern:Ljava/lang/String;

.field private dateStyle:I

.field private escapeHtmlChars:Z

.field private excluder:Lcom/google/gson_nex/internal/Excluder;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson_nex/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private fieldNamingPolicy:Lcom/google/gson_nex/FieldNamingStrategy;

.field private generateNonExecutableJson:Z

.field private final hierarchyFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson_nex/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson_nex/InstanceCreator<",
            "*>;>;"
        }
    .end annotation
.end field

.field private longSerializationPolicy:Lcom/google/gson_nex/LongSerializationPolicy;

.field private prettyPrinting:Z

.field private serializeNulls:Z

.field private serializeSpecialFloatingPointValues:Z

.field private timeStyle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/gson_nex/internal/Excluder;->DEFAULT:Lcom/google/gson_nex/internal/Excluder;

    iput-object v0, p0, Lcom/google/gson_nex/GsonBuilder;->excluder:Lcom/google/gson_nex/internal/Excluder;

    sget-object v0, Lcom/google/gson_nex/LongSerializationPolicy;->DEFAULT:Lcom/google/gson_nex/LongSerializationPolicy;

    iput-object v0, p0, Lcom/google/gson_nex/GsonBuilder;->longSerializationPolicy:Lcom/google/gson_nex/LongSerializationPolicy;

    sget-object v0, Lcom/google/gson_nex/FieldNamingPolicy;->IDENTITY:Lcom/google/gson_nex/FieldNamingPolicy;

    iput-object v0, p0, Lcom/google/gson_nex/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson_nex/FieldNamingStrategy;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson_nex/GsonBuilder;->instanceCreators:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson_nex/GsonBuilder;->factories:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson_nex/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/gson_nex/GsonBuilder;->dateStyle:I

    iput v0, p0, Lcom/google/gson_nex/GsonBuilder;->timeStyle:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson_nex/GsonBuilder;->escapeHtmlChars:Z

    return-void
.end method

.method private addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/google/gson_nex/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p2, Lcom/google/gson_nex/DefaultDateTypeAdapter;

    invoke-direct {p2, p1}, Lcom/google/gson_nex/DefaultDateTypeAdapter;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    if-eq p3, p1, :cond_1

    new-instance p1, Lcom/google/gson_nex/DefaultDateTypeAdapter;

    invoke-direct {p1, p2, p3}, Lcom/google/gson_nex/DefaultDateTypeAdapter;-><init>(II)V

    :goto_0
    const-class p2, Ljava/util/Date;

    invoke-static {p2}, Lcom/google/gson_nex/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson_nex/reflect/TypeToken;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/gson_nex/TreeTypeAdapter;->newFactory(Lcom/google/gson_nex/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/gson_nex/TypeAdapterFactory;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p2, Ljava/sql/Timestamp;

    invoke-static {p2}, Lcom/google/gson_nex/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson_nex/reflect/TypeToken;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/gson_nex/TreeTypeAdapter;->newFactory(Lcom/google/gson_nex/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/gson_nex/TypeAdapterFactory;

    move-result-object p2

    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class p2, Ljava/sql/Date;

    invoke-static {p2}, Lcom/google/gson_nex/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson_nex/reflect/TypeToken;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/gson_nex/TreeTypeAdapter;->newFactory(Lcom/google/gson_nex/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/gson_nex/TypeAdapterFactory;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    return-void
.end method


# virtual methods
.method public addDeserializationExclusionStrategy(Lcom/google/gson_nex/ExclusionStrategy;)Lcom/google/gson_nex/GsonBuilder;
    .locals 3

    iget-object v0, p0, Lcom/google/gson_nex/GsonBuilder;->excluder:Lcom/google/gson_nex/internal/Excluder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/gson_nex/internal/Excluder;->withExclusionStrategy(Lcom/google/gson_nex/ExclusionStrategy;ZZ)Lcom/google/gson_nex/internal/Excluder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson_nex/GsonBuilder;->excluder:Lcom/google/gson_nex/internal/Excluder;

    return-object p0
.end method

.method public addSerializationExclusionStrategy(Lcom/google/gson_nex/ExclusionStrategy;)Lcom/google/gson_nex/GsonBuilder;
    .locals 3

    iget-object v0, p0, Lcom/google/gson_nex/GsonBuilder;->excluder:Lcom/google/gson_nex/internal/Excluder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/gson_nex/internal/Excluder;->withExclusionStrategy(Lcom/google/gson_nex/ExclusionStrategy;ZZ)Lcom/google/gson_nex/internal/Excluder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson_nex/GsonBuilder;->excluder:Lcom/google/gson_nex/internal/Excluder;

    return-object p0
.end method

.method public create()Lcom/google/gson_nex/Gson;
    .locals 13

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/gson_nex/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v11}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    iget-object v0, p0, Lcom/google/gson_nex/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/google/gson_nex/GsonBuilder;->datePattern:Ljava/lang/String;

    iget v1, p0, Lcom/google/gson_nex/GsonBuilder;->dateStyle:I

    iget v2, p0, Lcom/google/gson_nex/GsonBuilder;->timeStyle:I

    invoke-direct {p0, v0, v1, v2, v11}, Lcom/google/gson_nex/GsonBuilder;->addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V

    new-instance v12, Lcom/google/gson_nex/Gson;

    iget-object v1, p0, Lcom/google/gson_nex/GsonBuilder;->excluder:Lcom/google/gson_nex/internal/Excluder;

    iget-object v2, p0, Lcom/google/gson_nex/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson_nex/FieldNamingStrategy;

    iget-object v3, p0, Lcom/google/gson_nex/GsonBuilder;->instanceCreators:Ljava/util/Map;

    iget-boolean v4, p0, Lcom/google/gson_nex/GsonBuilder;->serializeNulls:Z

    iget-boolean v5, p0, Lcom/google/gson_nex/GsonBuilder;->complexMapKeySerialization:Z

    iget-boolean v6, p0, Lcom/google/gson_nex/GsonBuilder;->generateNonExecutableJson:Z

    iget-boolean v7, p0, Lcom/google/gson_nex/GsonBuilder;->escapeHtmlChars:Z

    iget-boolean v8, p0, Lcom/google/gson_nex/GsonBuilder;->prettyPrinting:Z

    iget-boolean v9, p0, Lcom/google/gson_nex/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    iget-object v10, p0, Lcom/google/gson_nex/GsonBuilder;->longSerializationPolicy:Lcom/google/gson_nex/LongSerializationPolicy;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/google/gson_nex/Gson;-><init>(Lcom/google/gson_nex/internal/Excluder;Lcom/google/gson_nex/FieldNamingStrategy;Ljava/util/Map;ZZZZZZLcom/google/gson_nex/LongSerializationPolicy;Ljava/util/List;)V

    return-object v12
.end method

.method public disableHtmlEscaping()Lcom/google/gson_nex/GsonBuilder;
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/gson_nex/GsonBuilder;->escapeHtmlChars:Z

    return-object p0
.end method

.method public disableInnerClassSerialization()Lcom/google/gson_nex/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/gson_nex/GsonBuilder;->excluder:Lcom/google/gson_nex/internal/Excluder;

    invoke-virtual {v0}, Lcom/google/gson_nex/internal/Excluder;->disableInnerClassSerialization()Lcom/google/gson_nex/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson_nex/GsonBuilder;->excluder:Lcom/google/gson_nex/internal/Excluder;

    return-object p0
.end method

.method public enableComplexMapKeySerialization()Lcom/google/gson_nex/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson_nex/GsonBuilder;->complexMapKeySerialization:Z

    return-object p0
.end method

.method public varargs excludeFieldsWithModifiers([I)Lcom/google/gson_nex/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/gson_nex/GsonBuilder;->excluder:Lcom/google/gson_nex/internal/Excluder;

    invoke-virtual {v0, p1}, Lcom/google/gson_nex/internal/Excluder;->withModifiers([I)Lcom/google/gson_nex/internal/Excluder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson_nex/GsonBuilder;->excluder:Lcom/google/gson_nex/internal/Excluder;

    return-object p0
.end method

.method public excludeFieldsWithoutExposeAnnotation()Lcom/google/gson_nex/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/gson_nex/GsonBuilder;->excluder:Lcom/google/gson_nex/internal/Excluder;

    invoke-virtual {v0}, Lcom/google/gson_nex/internal/Excluder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson_nex/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson_nex/GsonBuilder;->excluder:Lcom/google/gson_nex/internal/Excluder;

    return-object p0
.end method

.method public generateNonExecutableJson()Lcom/google/gson_nex/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson_nex/GsonBuilder;->generateNonExecutableJson:Z

    return-object p0
.end method

.method public registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson_nex/GsonBuilder;
    .locals 3

    instance-of v0, p2, Lcom/google/gson_nex/JsonSerializer;

    if-nez v0, :cond_1

    instance-of v1, p2, Lcom/google/gson_nex/JsonDeserializer;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/google/gson_nex/InstanceCreator;

    if-nez v1, :cond_1

    instance-of v1, p2, Lcom/google/gson_nex/TypeAdapter;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Lcom/google/gson_nex/internal/$Gson$Preconditions;->checkArgument(Z)V

    instance-of v1, p2, Lcom/google/gson_nex/InstanceCreator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/gson_nex/GsonBuilder;->instanceCreators:Ljava/util/Map;

    move-object v2, p2

    check-cast v2, Lcom/google/gson_nex/InstanceCreator;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v0, :cond_3

    instance-of v0, p2, Lcom/google/gson_nex/JsonDeserializer;

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {p1}, Lcom/google/gson_nex/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson_nex/reflect/TypeToken;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gson_nex/GsonBuilder;->factories:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/google/gson_nex/TreeTypeAdapter;->newFactoryWithMatchRawType(Lcom/google/gson_nex/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/gson_nex/TypeAdapterFactory;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    instance-of v0, p2, Lcom/google/gson_nex/TypeAdapter;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/gson_nex/GsonBuilder;->factories:Ljava/util/List;

    invoke-static {p1}, Lcom/google/gson_nex/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson_nex/reflect/TypeToken;

    move-result-object p1

    check-cast p2, Lcom/google/gson_nex/TypeAdapter;

    invoke-static {p1, p2}, Lcom/google/gson_nex/internal/bind/TypeAdapters;->newFactory(Lcom/google/gson_nex/reflect/TypeToken;Lcom/google/gson_nex/TypeAdapter;)Lcom/google/gson_nex/TypeAdapterFactory;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object p0
.end method

.method public registerTypeAdapterFactory(Lcom/google/gson_nex/TypeAdapterFactory;)Lcom/google/gson_nex/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/gson_nex/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson_nex/GsonBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/gson_nex/GsonBuilder;"
        }
    .end annotation

    instance-of v0, p2, Lcom/google/gson_nex/JsonSerializer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    instance-of v2, p2, Lcom/google/gson_nex/JsonDeserializer;

    if-nez v2, :cond_1

    instance-of v2, p2, Lcom/google/gson_nex/TypeAdapter;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Lcom/google/gson_nex/internal/$Gson$Preconditions;->checkArgument(Z)V

    instance-of v2, p2, Lcom/google/gson_nex/JsonDeserializer;

    if-nez v2, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/gson_nex/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/google/gson_nex/TreeTypeAdapter;->newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/google/gson_nex/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    instance-of v0, p2, Lcom/google/gson_nex/TypeAdapter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/gson_nex/GsonBuilder;->factories:Ljava/util/List;

    check-cast p2, Lcom/google/gson_nex/TypeAdapter;

    invoke-static {p1, p2}, Lcom/google/gson_nex/internal/bind/TypeAdapters;->newTypeHierarchyFactory(Ljava/lang/Class;Lcom/google/gson_nex/TypeAdapter;)Lcom/google/gson_nex/TypeAdapterFactory;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object p0
.end method

.method public serializeNulls()Lcom/google/gson_nex/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson_nex/GsonBuilder;->serializeNulls:Z

    return-object p0
.end method

.method public serializeSpecialFloatingPointValues()Lcom/google/gson_nex/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson_nex/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    return-object p0
.end method

.method public setDateFormat(I)Lcom/google/gson_nex/GsonBuilder;
    .locals 0

    iput p1, p0, Lcom/google/gson_nex/GsonBuilder;->dateStyle:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/gson_nex/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public setDateFormat(II)Lcom/google/gson_nex/GsonBuilder;
    .locals 0

    iput p1, p0, Lcom/google/gson_nex/GsonBuilder;->dateStyle:I

    iput p2, p0, Lcom/google/gson_nex/GsonBuilder;->timeStyle:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/gson_nex/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public setDateFormat(Ljava/lang/String;)Lcom/google/gson_nex/GsonBuilder;
    .locals 0

    iput-object p1, p0, Lcom/google/gson_nex/GsonBuilder;->datePattern:Ljava/lang/String;

    return-object p0
.end method

.method public varargs setExclusionStrategies([Lcom/google/gson_nex/ExclusionStrategy;)Lcom/google/gson_nex/GsonBuilder;
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/google/gson_nex/GsonBuilder;->excluder:Lcom/google/gson_nex/internal/Excluder;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4, v4}, Lcom/google/gson_nex/internal/Excluder;->withExclusionStrategy(Lcom/google/gson_nex/ExclusionStrategy;ZZ)Lcom/google/gson_nex/internal/Excluder;

    move-result-object v2

    iput-object v2, p0, Lcom/google/gson_nex/GsonBuilder;->excluder:Lcom/google/gson_nex/internal/Excluder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setFieldNamingPolicy(Lcom/google/gson_nex/FieldNamingPolicy;)Lcom/google/gson_nex/GsonBuilder;
    .locals 0

    iput-object p1, p0, Lcom/google/gson_nex/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson_nex/FieldNamingStrategy;

    return-object p0
.end method

.method public setFieldNamingStrategy(Lcom/google/gson_nex/FieldNamingStrategy;)Lcom/google/gson_nex/GsonBuilder;
    .locals 0

    iput-object p1, p0, Lcom/google/gson_nex/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson_nex/FieldNamingStrategy;

    return-object p0
.end method

.method public setLongSerializationPolicy(Lcom/google/gson_nex/LongSerializationPolicy;)Lcom/google/gson_nex/GsonBuilder;
    .locals 0

    iput-object p1, p0, Lcom/google/gson_nex/GsonBuilder;->longSerializationPolicy:Lcom/google/gson_nex/LongSerializationPolicy;

    return-object p0
.end method

.method public setPrettyPrinting()Lcom/google/gson_nex/GsonBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson_nex/GsonBuilder;->prettyPrinting:Z

    return-object p0
.end method

.method public setVersion(D)Lcom/google/gson_nex/GsonBuilder;
    .locals 1

    iget-object v0, p0, Lcom/google/gson_nex/GsonBuilder;->excluder:Lcom/google/gson_nex/internal/Excluder;

    invoke-virtual {v0, p1, p2}, Lcom/google/gson_nex/internal/Excluder;->withVersion(D)Lcom/google/gson_nex/internal/Excluder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/gson_nex/GsonBuilder;->excluder:Lcom/google/gson_nex/internal/Excluder;

    return-object p0
.end method
