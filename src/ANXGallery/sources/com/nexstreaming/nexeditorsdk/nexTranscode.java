package com.nexstreaming.nexeditorsdk;

import android.util.Log;
import com.nexstreaming.kminternal.kinemaster.config.EditorGlobal;
import com.nexstreaming.kminternal.kinemaster.config.NexExportProfile;
import com.nexstreaming.kminternal.kinemaster.mediainfo.MediaInfo;
import com.nexstreaming.kminternal.nexvideoeditor.NexEditor;
import com.nexstreaming.nexeditorsdk.nexEngine.nexErrorCode;
import java.io.File;

public class nexTranscode {
    private static final String TAG = "nexTranscode";
    /* access modifiers changed from: private */
    public static nexEngine sEngine;
    private static nexEngineListener sEngineListener;
    private static final int sRunMode = 0;
    /* access modifiers changed from: private */
    public Error lastError = Error.NONE;
    /* access modifiers changed from: private */
    public OnTransCoderListener listener;
    /* access modifiers changed from: private */
    public NexEditor mVideoEditor;
    /* access modifiers changed from: private */
    public int progressPercent;
    private File source;
    /* access modifiers changed from: private */
    public State state = State.NONE;

    public enum Error {
        NONE,
        NOTSUPPORTEDFILE,
        ENGINEFAIL,
        SOURCEFAIL,
        BUSY,
        RUNFAIL,
        CANCEL
    }

    public static abstract class OnTransCoderListener {
        public abstract void onProgress(int i, int i2);

        public abstract void onTransCodeDone(Error error, int i);
    }

    public static class Option {
        /* access modifiers changed from: private */
        public int labelResource;
        int outputBitRate;
        File outputFile;
        int outputFitMode;
        int outputHeight;
        Rotate outputRotate;
        Rotate outputRotateMeta;
        int outputSamplingRate;
        int outputWidth;

        public Option(File file, int i, int i2, int i3, int i4, boolean z) {
            this.outputFile = file;
            this.outputWidth = i;
            this.outputHeight = i2;
            this.outputBitRate = i3;
            this.outputSamplingRate = i4;
            this.labelResource = NexExportProfile.getLabelResource(i, i2);
            if (z) {
                this.outputFitMode = 1;
            } else {
                this.outputFitMode = 0;
            }
            this.outputRotateMeta = Rotate.BYPASS;
        }

        public Option(File file, int i, int i2, int i3, int i4, boolean z, Rotate rotate, Rotate rotate2) {
            this.outputFile = file;
            this.outputWidth = i;
            this.outputHeight = i2;
            this.outputBitRate = i3;
            this.outputSamplingRate = i4;
            this.labelResource = NexExportProfile.getLabelResource(i, i2);
            if (z) {
                this.outputFitMode = 1;
            } else {
                this.outputFitMode = 0;
            }
            this.outputRotateMeta = rotate;
            this.outputRotate = rotate2;
        }

        public void setOutputRotate(Rotate rotate) {
            if (rotate == Rotate.BYPASS) {
                this.outputRotate = Rotate.CW_0;
            } else {
                this.outputRotate = rotate;
            }
        }

        public void setOutputRotateMeta(Rotate rotate) {
            this.outputRotateMeta = rotate;
        }
    }

    public enum Rotate {
        BYPASS,
        CW_0,
        CW_90,
        CW_180,
        CW_270
    }

    public enum State {
        NONE,
        IDLE,
        WAIT,
        RUNNING,
        COMPLETE
    }

    public nexTranscode(String str, boolean z) {
        if (z) {
            MediaInfo a = MediaInfo.a(str);
            if (!a.m()) {
                this.lastError = Error.NOTSUPPORTEDFILE;
            }
            if (a.i()) {
                this.lastError = Error.NOTSUPPORTEDFILE;
            }
        }
        this.source = new File(str);
        this.state = State.IDLE;
    }

    public static nexTranscode getTranscode(String str, OnTransCoderListener onTransCoderListener) {
        return new nexTranscode(str, false).setTransCoderListener(onTransCoderListener);
    }

    public static void init(nexEngine nexengine) {
        sEngine = nexengine;
    }

    public boolean cancel() {
        if (this.mVideoEditor != null) {
            this.mVideoEditor.setProjectEffect(EditorGlobal.b("std"));
        }
        if (sEngine != null) {
            sEngine.setScalingFlag2Export(false);
        }
        sEngine.stopTranscode();
        return true;
    }

    public State getCurrentState() {
        return this.state;
    }

    public Error getLastError() {
        if (this.mVideoEditor != null) {
            this.mVideoEditor.setProjectEffect(EditorGlobal.b("std"));
        }
        if (sEngine != null) {
            sEngine.setScalingFlag2Export(false);
        }
        return this.lastError;
    }

    public int getProgress() {
        return this.progressPercent;
    }

    public nexTranscode run(Option option) {
        if (sEngine == null) {
            Log.e(TAG, "must call setEngin()!");
            this.lastError = Error.ENGINEFAIL;
            if (this.listener != null) {
                this.listener.onTransCodeDone(this.lastError, 1);
            }
            return this;
        } else if (this.source == null) {
            Log.e(TAG, "source is null!");
            this.lastError = Error.SOURCEFAIL;
            if (this.listener != null) {
                this.listener.onTransCodeDone(this.lastError, 1);
            }
            return this;
        } else if (option == null) {
            Log.e(TAG, "option is null!");
            this.lastError = Error.RUNFAIL;
            if (this.listener != null) {
                this.listener.onTransCodeDone(this.lastError, 2);
            }
            return this;
        } else {
            sEngineListener = new nexEngineListener() {
                public void onCheckDirectExport(int i) {
                }

                public void onClipInfoDone() {
                }

                public void onEncodingDone(boolean z, int i) {
                    nexTranscode.this.state = State.COMPLETE;
                    nexTranscode.this.lastError = Error.NONE;
                    if (nexTranscode.this.mVideoEditor != null) {
                        nexTranscode.this.mVideoEditor.setProjectEffect(EditorGlobal.b("std"));
                    }
                    if (nexTranscode.sEngine != null) {
                        nexTranscode.sEngine.setScalingFlag2Export(false);
                    }
                    String str = nexTranscode.TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("onEncodingDone()=");
                    sb.append(i);
                    Log.d(str, sb.toString());
                    if (i == nexErrorCode.EXPORT_USER_CANCEL.getValue()) {
                        nexTranscode.this.lastError = Error.CANCEL;
                    } else if (i == nexErrorCode.TRANSCODING_BUSY.getValue()) {
                        nexTranscode.this.lastError = Error.BUSY;
                    } else if (i == nexErrorCode.TRANSCODING_NOT_SUPPORTED_FORMAT.getValue()) {
                        nexTranscode.this.lastError = Error.NOTSUPPORTEDFILE;
                    } else if (z) {
                        nexTranscode.this.lastError = Error.RUNFAIL;
                    }
                    if (nexTranscode.this.listener != null) {
                        nexTranscode.this.listener.onTransCodeDone(nexTranscode.this.lastError, i);
                    }
                }

                public void onEncodingProgress(int i) {
                    nexTranscode.this.state = State.RUNNING;
                    nexTranscode.this.progressPercent = i;
                    if (nexTranscode.this.listener != null) {
                        nexTranscode.this.listener.onProgress(i, 100);
                    }
                }

                public void onFastPreviewStartDone(int i, int i2, int i3) {
                }

                public void onFastPreviewStopDone(int i) {
                }

                public void onFastPreviewTimeDone(int i) {
                }

                public void onPlayEnd() {
                }

                public void onPlayFail(int i, int i2) {
                }

                public void onPlayStart() {
                }

                public void onPreviewPeakMeter(int i, int i2) {
                }

                public void onProgressThumbnailCaching(int i, int i2) {
                }

                public void onSeekStateChanged(boolean z) {
                }

                public void onSetTimeDone(int i) {
                }

                public void onSetTimeFail(int i) {
                }

                public void onSetTimeIgnored() {
                }

                public void onStateChange(int i, int i2) {
                }

                public void onTimeChange(int i) {
                    nexTranscode.this.state = State.RUNNING;
                }
            };
            String str = TAG;
            StringBuilder sb = new StringBuilder();
            sb.append("( ");
            sb.append(option.outputWidth);
            sb.append(" X ");
            sb.append(option.outputHeight);
            sb.append(" ) bitrate=");
            sb.append(option.outputBitRate);
            sb.append(", resource=");
            sb.append(option.labelResource);
            sb.append(sEngine);
            Log.d(str, sb.toString());
            if (sEngine != null) {
                sEngine.setScalingFlag2Export(true);
            }
            this.mVideoEditor = EditorGlobal.a();
            this.mVideoEditor.setProjectEffect(EditorGlobal.b("up"));
            sEngine.runTranscodeMode(option, this.source.getAbsolutePath(), sEngineListener);
            return this;
        }
    }

    public nexTranscode setTransCoderListener(OnTransCoderListener onTransCoderListener) {
        this.listener = onTransCoderListener;
        return this;
    }
}
