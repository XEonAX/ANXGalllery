package com.miui.filtersdk.utils;

import com.nexstreaming.nexeditorsdk.nexClip;

public enum Rotation {
    NORMAL,
    ROTATION_90,
    ROTATION_180,
    ROTATION_270;

    public static Rotation fromInt(int i) {
        if (i == 0) {
            return NORMAL;
        }
        if (i == 90) {
            return ROTATION_90;
        }
        if (i == 180) {
            return ROTATION_180;
        }
        if (i == 270) {
            return ROTATION_270;
        }
        if (i == 360) {
            return NORMAL;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(i);
        sb.append(" is an unknown rotation. Needs to be either 0, 90, 180 or 270!");
        throw new IllegalStateException(sb.toString());
    }

    public int asInt() {
        switch (this) {
            case NORMAL:
                return 0;
            case ROTATION_90:
                return 90;
            case ROTATION_180:
                return nexClip.kClip_Rotate_180;
            case ROTATION_270:
                return nexClip.kClip_Rotate_270;
            default:
                throw new IllegalStateException("Unknown Rotation!");
        }
    }
}
