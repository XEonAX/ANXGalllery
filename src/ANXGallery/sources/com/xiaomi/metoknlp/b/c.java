package com.xiaomi.metoknlp.b;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import com.xiaomi.metoknlp.MetokApplication;
import java.util.ArrayList;
import java.util.List;

/* compiled from: ConnectivityMonitor */
public class c {
    private static c Y;
    /* access modifiers changed from: private */
    public List j = new ArrayList();
    private Context mContext;
    /* access modifiers changed from: private */
    public Handler mHandler = new d(this, MetokApplication.get().getAppHandler().getLooper());
    private BroadcastReceiver mReceiver = new e(this);

    private c(Context context) {
        this.mContext = context;
        this.mContext.registerReceiver(this.mReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    public static c M() {
        return Y;
    }

    public static void init(Context context) {
        if (Y == null) {
            Y = new c(context);
        }
    }

    public void a(a aVar) {
        synchronized (this.j) {
            this.j.add(aVar);
        }
    }
}
