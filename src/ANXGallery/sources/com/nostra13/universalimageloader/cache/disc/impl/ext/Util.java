package com.nostra13.universalimageloader.cache.disc.impl.ext;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import org.keyczar.Keyczar;

final class Util {
    static final Charset US_ASCII = Charset.forName("US-ASCII");
    static final Charset UTF_8 = Charset.forName(Keyczar.DEFAULT_ENCODING);

    static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
        }
    }

    static void deleteContents(File file) throws IOException {
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            int length = listFiles.length;
            int i = 0;
            while (i < length) {
                File file2 = listFiles[i];
                if (file2.isDirectory()) {
                    deleteContents(file2);
                }
                if (file2.delete()) {
                    i++;
                } else {
                    StringBuilder sb = new StringBuilder();
                    sb.append("failed to delete file: ");
                    sb.append(file2);
                    throw new IOException(sb.toString());
                }
            }
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("not a readable directory: ");
        sb2.append(file);
        throw new IOException(sb2.toString());
    }
}
