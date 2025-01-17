package com.google.gson_nex.internal;

import com.google.gson_nex.JsonElement;
import com.google.gson_nex.JsonParseException;
import com.google.gson_nex.internal.bind.TypeAdapters;
import com.google.gson_nex.stream.JsonReader;
import com.google.gson_nex.stream.JsonWriter;
import com.google.gson_nex.stream.MalformedJsonException;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;

public final class Streams {

    private static final class AppendableWriter extends Writer {
        private final Appendable appendable;
        private final CurrentWrite currentWrite;

        static class CurrentWrite implements CharSequence {
            char[] chars;

            CurrentWrite() {
            }

            public char charAt(int i) {
                return this.chars[i];
            }

            public int length() {
                return this.chars.length;
            }

            public CharSequence subSequence(int i, int i2) {
                return new String(this.chars, i, i2 - i);
            }
        }

        private AppendableWriter(Appendable appendable2) {
            this.currentWrite = new CurrentWrite();
            this.appendable = appendable2;
        }

        public void close() {
        }

        public void flush() {
        }

        public void write(int i) throws IOException {
            this.appendable.append((char) i);
        }

        public void write(char[] cArr, int i, int i2) throws IOException {
            this.currentWrite.chars = cArr;
            this.appendable.append(this.currentWrite, i, i2 + i);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0016, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x001c, code lost:
        throw new com.google.gson_nex.JsonIOException((java.lang.Throwable) r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x001d, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0023, code lost:
        throw new com.google.gson_nex.JsonSyntaxException((java.lang.Throwable) r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x002a, code lost:
        return com.google.gson_nex.JsonNull.INSTANCE;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0030, code lost:
        throw new com.google.gson_nex.JsonSyntaxException((java.lang.Throwable) r2);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:6:0x000d, code lost:
        r2 = e;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:7:0x000f, code lost:
        r2 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x0015, code lost:
        throw new com.google.gson_nex.JsonSyntaxException((java.lang.Throwable) r2);
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x0016 A[ExcHandler: IOException (r2v5 'e' java.io.IOException A[CUSTOM_DECLARE]), Splitter:B:0:0x0000] */
    /* JADX WARNING: Removed duplicated region for block: B:13:0x001d A[ExcHandler: MalformedJsonException (r2v4 'e' com.google.gson_nex.stream.MalformedJsonException A[CUSTOM_DECLARE]), Splitter:B:0:0x0000] */
    /* JADX WARNING: Removed duplicated region for block: B:19:0x0028  */
    /* JADX WARNING: Removed duplicated region for block: B:21:0x002b  */
    /* JADX WARNING: Removed duplicated region for block: B:7:0x000f A[ExcHandler: NumberFormatException (r2v6 'e' java.lang.NumberFormatException A[CUSTOM_DECLARE]), Splitter:B:0:0x0000] */
    public static JsonElement parse(JsonReader jsonReader) throws JsonParseException {
        boolean z;
        try {
            jsonReader.peek();
            z = false;
            return (JsonElement) TypeAdapters.JSON_ELEMENT.read(jsonReader);
        } catch (EOFException e) {
            e = e;
            z = true;
            if (!z) {
            }
        } catch (MalformedJsonException e2) {
        } catch (IOException e3) {
        } catch (NumberFormatException e4) {
        }
    }

    public static void write(JsonElement jsonElement, JsonWriter jsonWriter) throws IOException {
        TypeAdapters.JSON_ELEMENT.write(jsonWriter, jsonElement);
    }

    public static Writer writerForAppendable(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new AppendableWriter(appendable);
    }
}
