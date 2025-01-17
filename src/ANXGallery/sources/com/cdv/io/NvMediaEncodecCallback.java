package com.cdv.io;

import android.media.MediaCodec;
import android.media.MediaCodec.BufferInfo;
import android.media.MediaCodec.Callback;
import android.media.MediaCodec.CodecException;
import android.media.MediaFormat;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import java.nio.ByteBuffer;

public class NvMediaEncodecCallback {
    private static final String TAG = "NvMediaEncodecCallback";
    private HandlerThread mCallbackThread = null;
    /* access modifiers changed from: private */
    public long m_contextInterface = -1;

    NvMediaEncodecCallback(long j) {
        this.m_contextInterface = j;
    }

    private void closeCallbackThread() {
        if (this.mCallbackThread != null && VERSION.SDK_INT >= 21) {
            if (this.mCallbackThread.isAlive()) {
                this.mCallbackThread.quitSafely();
            }
            try {
                this.mCallbackThread.join();
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            this.mCallbackThread = null;
        }
    }

    /* access modifiers changed from: private */
    public static native void nativeOnError(long j, int i);

    /* access modifiers changed from: private */
    public static native void nativeOnOutputBufferAvailable(long j, ByteBuffer byteBuffer, BufferInfo bufferInfo);

    /* access modifiers changed from: private */
    public static native void nativeOnOutputFormatChanged(long j, MediaFormat mediaFormat);

    public void cleanUp() {
        closeCallbackThread();
    }

    public boolean setCallbackToCodec(MediaCodec mediaCodec) {
        if (mediaCodec == null || VERSION.SDK_INT < 21) {
            return false;
        }
        if (this.mCallbackThread == null) {
            this.mCallbackThread = new HandlerThread("callback handler");
            if (this.mCallbackThread == null) {
                Log.e(TAG, "Failed to create background handler thread!");
                return false;
            }
            this.mCallbackThread.start();
        }
        Looper looper = this.mCallbackThread.getLooper();
        if (looper == null) {
            closeCallbackThread();
            Log.e(TAG, "Failed to getLooper of the background thread!");
            return false;
        }
        mediaCodec.setCallback(new Callback() {
            public void onError(MediaCodec mediaCodec, CodecException codecException) {
                if (NvMediaEncodecCallback.this.m_contextInterface > 0) {
                    int i = -1;
                    if (codecException != null) {
                        i = codecException.getErrorCode();
                    }
                    String str = NvMediaEncodecCallback.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("onErrorCode:");
                    sb.append(i);
                    Log.d(str, sb.toString());
                    NvMediaEncodecCallback.nativeOnError(NvMediaEncodecCallback.this.m_contextInterface, i);
                }
            }

            public void onInputBufferAvailable(MediaCodec mediaCodec, int i) {
                Log.d(NvMediaEncodecCallback.TAG, "onInputBufferAvailable");
            }

            public void onOutputBufferAvailable(MediaCodec mediaCodec, int i, BufferInfo bufferInfo) {
                if (NvMediaEncodecCallback.this.m_contextInterface > 0 && bufferInfo != null) {
                    NvMediaEncodecCallback.nativeOnOutputBufferAvailable(NvMediaEncodecCallback.this.m_contextInterface, mediaCodec.getOutputBuffer(i), bufferInfo);
                    try {
                        mediaCodec.releaseOutputBuffer(i, false);
                    } catch (Exception e) {
                        Log.e(NvMediaEncodecCallback.TAG, "MediaCodec.releaseOutputBuffer failed!");
                        e.printStackTrace();
                    }
                }
            }

            public void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
                if (NvMediaEncodecCallback.this.m_contextInterface > 0) {
                    NvMediaEncodecCallback.nativeOnOutputFormatChanged(NvMediaEncodecCallback.this.m_contextInterface, mediaFormat);
                }
            }
        }, new Handler(looper));
        return true;
    }
}
