package com.miui.gallery.cloud;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.miui.gallery.util.SyncLog;

public class GallerySyncService extends Service {
    private static GallerySyncAdapter sSyncAdapter = null;
    private static final Object sSyncAdapterLock = new Object();

    public IBinder onBind(Intent intent) {
        SyncLog.d("GallerySyncService", "onBind");
        return sSyncAdapter.getSyncAdapterBinder();
    }

    public void onCreate() {
        super.onCreate();
        synchronized (sSyncAdapterLock) {
            if (sSyncAdapter == null) {
                sSyncAdapter = new GallerySyncAdapter(getApplicationContext(), true);
            }
            SyncLog.d("GallerySyncService", "onCreate");
        }
    }

    public void onDestroy() {
    }
}
