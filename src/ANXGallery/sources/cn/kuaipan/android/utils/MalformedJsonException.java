package cn.kuaipan.android.utils;

import java.io.IOException;

public final class MalformedJsonException extends IOException {
    private static final long serialVersionUID = 1;

    public MalformedJsonException(String str) {
        super(str);
    }
}
