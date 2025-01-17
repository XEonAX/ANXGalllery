package android.arch.lifecycle;

import android.app.Activity;
import android.app.Application;
import android.arch.lifecycle.Lifecycle.Event;
import android.arch.lifecycle.Lifecycle.State;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentManager.FragmentLifecycleCallbacks;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

class LifecycleDispatcher {
    private static AtomicBoolean sInitialized = new AtomicBoolean(false);

    public static class DestructionReportFragment extends Fragment {
        /* access modifiers changed from: protected */
        public void dispatch(Event event) {
            LifecycleDispatcher.dispatchIfLifecycleOwner(getParentFragment(), event);
        }

        public void onDestroy() {
            super.onDestroy();
            dispatch(Event.ON_DESTROY);
        }

        public void onPause() {
            super.onPause();
            dispatch(Event.ON_PAUSE);
        }

        public void onStop() {
            super.onStop();
            dispatch(Event.ON_STOP);
        }
    }

    static class DispatcherActivityCallback extends EmptyActivityLifecycleCallbacks {
        private final FragmentCallback mFragmentCallback = new FragmentCallback();

        DispatcherActivityCallback() {
        }

        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (activity instanceof FragmentActivity) {
                ((FragmentActivity) activity).getSupportFragmentManager().registerFragmentLifecycleCallbacks(this.mFragmentCallback, true);
            }
            ReportFragment.injectIfNeededIn(activity);
        }

        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            if (activity instanceof FragmentActivity) {
                LifecycleDispatcher.markState((FragmentActivity) activity, State.CREATED);
            }
        }

        public void onActivityStopped(Activity activity) {
            if (activity instanceof FragmentActivity) {
                LifecycleDispatcher.markState((FragmentActivity) activity, State.CREATED);
            }
        }
    }

    static class FragmentCallback extends FragmentLifecycleCallbacks {
        FragmentCallback() {
        }

        public void onFragmentCreated(FragmentManager fragmentManager, Fragment fragment, Bundle bundle) {
            LifecycleDispatcher.dispatchIfLifecycleOwner(fragment, Event.ON_CREATE);
            if ((fragment instanceof LifecycleRegistryOwner) && fragment.getChildFragmentManager().findFragmentByTag("android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
                fragment.getChildFragmentManager().beginTransaction().add(new DestructionReportFragment(), "android.arch.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            }
        }

        public void onFragmentResumed(FragmentManager fragmentManager, Fragment fragment) {
            LifecycleDispatcher.dispatchIfLifecycleOwner(fragment, Event.ON_RESUME);
        }

        public void onFragmentStarted(FragmentManager fragmentManager, Fragment fragment) {
            LifecycleDispatcher.dispatchIfLifecycleOwner(fragment, Event.ON_START);
        }
    }

    /* access modifiers changed from: private */
    public static void dispatchIfLifecycleOwner(Fragment fragment, Event event) {
        if (fragment instanceof LifecycleRegistryOwner) {
            ((LifecycleRegistryOwner) fragment).getLifecycle().handleLifecycleEvent(event);
        }
    }

    static void init(Context context) {
        if (!sInitialized.getAndSet(true)) {
            ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(new DispatcherActivityCallback());
        }
    }

    /* access modifiers changed from: private */
    public static void markState(FragmentActivity fragmentActivity, State state) {
        markStateIn(fragmentActivity, state);
        markState(fragmentActivity.getSupportFragmentManager(), state);
    }

    private static void markState(FragmentManager fragmentManager, State state) {
        List<Fragment> fragments = fragmentManager.getFragments();
        if (fragments != null) {
            for (Fragment fragment : fragments) {
                if (fragment != null) {
                    markStateIn(fragment, state);
                    if (fragment.isAdded()) {
                        markState(fragment.getChildFragmentManager(), state);
                    }
                }
            }
        }
    }

    private static void markStateIn(Object obj, State state) {
        if (obj instanceof LifecycleRegistryOwner) {
            ((LifecycleRegistryOwner) obj).getLifecycle().markState(state);
        }
    }
}
