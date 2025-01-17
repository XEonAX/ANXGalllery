package com.nostra13.universalimageloader.cache.disc.impl.ext;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

class StrictLineReader implements Closeable {
    private byte[] buf;
    /* access modifiers changed from: private */
    public final Charset charset;
    private int end;
    private final InputStream in;
    private int pos;

    public StrictLineReader(InputStream inputStream, int i, Charset charset2) {
        if (inputStream == null || charset2 == null) {
            throw new NullPointerException();
        } else if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        } else if (charset2.equals(Util.US_ASCII)) {
            this.in = inputStream;
            this.charset = charset2;
            this.buf = new byte[i];
        } else {
            throw new IllegalArgumentException("Unsupported encoding");
        }
    }

    public StrictLineReader(InputStream inputStream, Charset charset2) {
        this(inputStream, 8192, charset2);
    }

    private void fillBuf() throws IOException {
        int read = this.in.read(this.buf, 0, this.buf.length);
        if (read != -1) {
            this.pos = 0;
            this.end = read;
            return;
        }
        throw new EOFException();
    }

    public void close() throws IOException {
        synchronized (this.in) {
            if (this.buf != null) {
                this.buf = null;
                this.in.close();
            }
        }
    }

    public String readLine() throws IOException {
        int i;
        int i2;
        synchronized (this.in) {
            if (this.buf != null) {
                if (this.pos >= this.end) {
                    fillBuf();
                }
                for (int i3 = this.pos; i3 != this.end; i3++) {
                    if (this.buf[i3] == 10) {
                        if (i3 != this.pos) {
                            i2 = i3 - 1;
                            if (this.buf[i2] == 13) {
                                String str = new String(this.buf, this.pos, i2 - this.pos, this.charset.name());
                                this.pos = i3 + 1;
                                return str;
                            }
                        }
                        i2 = i3;
                        String str2 = new String(this.buf, this.pos, i2 - this.pos, this.charset.name());
                        this.pos = i3 + 1;
                        return str2;
                    }
                }
                AnonymousClass1 r1 = new ByteArrayOutputStream((this.end - this.pos) + 80) {
                    public String toString() {
                        try {
                            return new String(this.buf, 0, (this.count <= 0 || this.buf[this.count + -1] != 13) ? this.count : this.count - 1, StrictLineReader.this.charset.name());
                        } catch (UnsupportedEncodingException e) {
                            throw new AssertionError(e);
                        }
                    }
                };
                loop1:
                while (true) {
                    r1.write(this.buf, this.pos, this.end - this.pos);
                    this.end = -1;
                    fillBuf();
                    i = this.pos;
                    while (true) {
                        if (i != this.end) {
                            if (this.buf[i] == 10) {
                                break loop1;
                            }
                            i++;
                        }
                    }
                }
                if (i != this.pos) {
                    r1.write(this.buf, this.pos, i - this.pos);
                }
                this.pos = i + 1;
                String byteArrayOutputStream = r1.toString();
                return byteArrayOutputStream;
            }
            throw new IOException("LineReader is closed");
        }
    }
}
