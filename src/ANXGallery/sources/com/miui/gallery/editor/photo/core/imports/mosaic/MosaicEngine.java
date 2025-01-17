package com.miui.gallery.editor.photo.core.imports.mosaic;

import android.graphics.Bitmap;
import com.miui.gallery.editor.photo.core.RenderData;
import com.miui.gallery.editor.photo.core.RenderEngine;
import com.miui.gallery.editor.photo.core.imports.filter.render.OpenGlUtils;

class MosaicEngine extends RenderEngine {
    MosaicEngine() {
    }

    public Bitmap render(Bitmap bitmap, RenderData renderData) {
        if (renderData instanceof MosaicRenderData) {
            return ((MosaicRenderData) renderData).mMosaicEntry.apply(OpenGlUtils.ensureBitmapSize(bitmap));
        }
        return null;
    }
}
