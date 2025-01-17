package com.android.volley;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class VolleyLog {
    public static boolean DEBUG = Log.isLoggable(TAG, 2);
    public static String TAG = "Volley";

    static class MarkerLog {
        public static final boolean ENABLED = VolleyLog.DEBUG;
        private boolean mFinished = false;
        private final List<Marker> mMarkers = new ArrayList();

        private static class Marker {
            public final String name;
            public final long thread;
            public final long time;

            public Marker(String str, long j, long j2) {
                this.name = str;
                this.thread = j;
                this.time = j2;
            }
        }

        MarkerLog() {
        }

        private long getTotalDuration() {
            if (this.mMarkers.size() == 0) {
                return 0;
            }
            return ((Marker) this.mMarkers.get(this.mMarkers.size() - 1)).time - ((Marker) this.mMarkers.get(0)).time;
        }

        public synchronized void add(String str, long j) {
            if (!this.mFinished) {
                List<Marker> list = this.mMarkers;
                Marker marker = new Marker(str, j, SystemClock.elapsedRealtime());
                list.add(marker);
            } else {
                throw new IllegalStateException("Marker added to finished log");
            }
        }

        /* access modifiers changed from: protected */
        public void finalize() throws Throwable {
            if (!this.mFinished) {
                finish("Request on the loose");
                VolleyLog.e("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
            }
        }

        public synchronized void finish(String str) {
            this.mFinished = true;
            long totalDuration = getTotalDuration();
            if (totalDuration > 0) {
                long j = ((Marker) this.mMarkers.get(0)).time;
                VolleyLog.d("(%-4d ms) %s", Long.valueOf(totalDuration), str);
                for (Marker marker : this.mMarkers) {
                    long j2 = marker.time;
                    VolleyLog.d("(+%-4d) [%2d] %s", Long.valueOf(j2 - j), Long.valueOf(marker.thread), marker.name);
                    j = j2;
                }
            }
        }
    }

    private static String buildMessage(String str, Object... objArr) {
        if (objArr != null) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        String str2 = "<unknown>";
        int i = 2;
        while (true) {
            if (i >= stackTrace.length) {
                break;
            } else if (!stackTrace[i].getClass().equals(VolleyLog.class)) {
                String className = stackTrace[i].getClassName();
                String substring = className.substring(className.lastIndexOf(46) + 1);
                String substring2 = substring.substring(substring.lastIndexOf(36) + 1);
                StringBuilder sb = new StringBuilder();
                sb.append(substring2);
                sb.append(".");
                sb.append(stackTrace[i].getMethodName());
                str2 = sb.toString();
                break;
            } else {
                i++;
            }
        }
        return String.format(Locale.US, "[%d] %s: %s", new Object[]{Long.valueOf(Thread.currentThread().getId()), str2, str});
    }

    public static void d(String str, Object... objArr) {
        Log.d(TAG, buildMessage(str, objArr));
    }

    public static void e(String str, Object... objArr) {
        Log.e(TAG, buildMessage(str, objArr));
    }

    public static void e(Throwable th, String str, Object... objArr) {
        Log.e(TAG, buildMessage(str, objArr), th);
    }

    public static void v(String str, Object... objArr) {
        if (DEBUG) {
            Log.v(TAG, buildMessage(str, objArr));
        }
    }
}
