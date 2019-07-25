package com.miui.gallery.util.deviceprovider;

import android.graphics.BitmapFactory.Options;
import java.io.IOException;
import miui.graphics.BitmapFactory;

public class BigBitmapProvider implements BitmapProviderInterface {
    public Options getBitmapSize(String str) throws IOException {
        return BitmapFactory.getBitmapSize(str);
    }
}
