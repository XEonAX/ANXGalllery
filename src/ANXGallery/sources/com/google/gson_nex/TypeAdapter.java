package com.google.gson_nex;

import com.google.gson_nex.internal.bind.JsonTreeReader;
import com.google.gson_nex.internal.bind.JsonTreeWriter;
import com.google.gson_nex.stream.JsonReader;
import com.google.gson_nex.stream.JsonToken;
import com.google.gson_nex.stream.JsonWriter;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;

public abstract class TypeAdapter<T> {
    public final T fromJson(Reader reader) throws IOException {
        return read(new JsonReader(reader));
    }

    public final T fromJson(String str) throws IOException {
        return fromJson((Reader) new StringReader(str));
    }

    public final T fromJsonTree(JsonElement jsonElement) {
        try {
            return read(new JsonTreeReader(jsonElement));
        } catch (IOException e) {
            throw new JsonIOException((Throwable) e);
        }
    }

    public final TypeAdapter<T> nullSafe() {
        return new TypeAdapter<T>() {
            public T read(JsonReader jsonReader) throws IOException {
                if (jsonReader.peek() != JsonToken.NULL) {
                    return TypeAdapter.this.read(jsonReader);
                }
                jsonReader.nextNull();
                return null;
            }

            public void write(JsonWriter jsonWriter, T t) throws IOException {
                if (t == null) {
                    jsonWriter.nullValue();
                } else {
                    TypeAdapter.this.write(jsonWriter, t);
                }
            }
        };
    }

    public abstract T read(JsonReader jsonReader) throws IOException;

    public final String toJson(T t) throws IOException {
        StringWriter stringWriter = new StringWriter();
        toJson(stringWriter, t);
        return stringWriter.toString();
    }

    public final void toJson(Writer writer, T t) throws IOException {
        write(new JsonWriter(writer), t);
    }

    public final JsonElement toJsonTree(T t) {
        try {
            JsonTreeWriter jsonTreeWriter = new JsonTreeWriter();
            write(jsonTreeWriter, t);
            return jsonTreeWriter.get();
        } catch (IOException e) {
            throw new JsonIOException((Throwable) e);
        }
    }

    public abstract void write(JsonWriter jsonWriter, T t) throws IOException;
}
