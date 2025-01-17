package com.xiaomi.mistatistic.sdk.controller;

import com.miui.gallery.movie.utils.MovieStatUtils;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: AesUtils */
public class c {
    private static KeyGenerator a;
    private static Cipher b;

    static {
        try {
            a = KeyGenerator.getInstance("AES");
            a.init(128);
            b = Cipher.getInstance("AES/ECB/PKCS5Padding");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static String a(String str, String str2, String str3) {
        return a(c(str, str2, str3));
    }

    public static String a(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (byte b2 : bArr) {
            String hexString = Integer.toHexString(b2 & 255);
            while (hexString.length() < 2) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(MovieStatUtils.DOWNLOAD_SUCCESS);
                sb2.append(hexString);
                hexString = sb2.toString();
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    private static byte[] a(String str) {
        if (str != null) {
            return str.getBytes();
        }
        return null;
    }

    public static byte[] c(String str, String str2, String str3) {
        try {
            Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
            instance.init(1, new SecretKeySpec(a(str2), "AES"), new IvParameterSpec(str3.getBytes()));
            return instance.doFinal(str.getBytes("utf-8"));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
