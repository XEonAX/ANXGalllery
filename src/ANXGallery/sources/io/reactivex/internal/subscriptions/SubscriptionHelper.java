package io.reactivex.internal.subscriptions;

import io.reactivex.exceptions.ProtocolViolationException;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;

public enum SubscriptionHelper implements Subscription {
    CANCELLED;

    public static boolean cancel(AtomicReference<Subscription> atomicReference) {
        if (((Subscription) atomicReference.get()) != CANCELLED) {
            Subscription subscription = (Subscription) atomicReference.getAndSet(CANCELLED);
            if (subscription != CANCELLED) {
                if (subscription != null) {
                    subscription.cancel();
                }
                return true;
            }
        }
        return false;
    }

    public static void deferredRequest(AtomicReference<Subscription> atomicReference, AtomicLong atomicLong, long j) {
        Subscription subscription = (Subscription) atomicReference.get();
        if (subscription != null) {
            subscription.request(j);
        } else if (validate(j)) {
            BackpressureHelper.add(atomicLong, j);
            Subscription subscription2 = (Subscription) atomicReference.get();
            if (subscription2 != null) {
                long andSet = atomicLong.getAndSet(0);
                if (andSet != 0) {
                    subscription2.request(andSet);
                }
            }
        }
    }

    public static boolean deferredSetOnce(AtomicReference<Subscription> atomicReference, AtomicLong atomicLong, Subscription subscription) {
        if (!setOnce(atomicReference, subscription)) {
            return false;
        }
        long andSet = atomicLong.getAndSet(0);
        if (andSet != 0) {
            subscription.request(andSet);
        }
        return true;
    }

    public static void reportSubscriptionSet() {
        RxJavaPlugins.onError(new ProtocolViolationException("Subscription already set!"));
    }

    public static boolean setOnce(AtomicReference<Subscription> atomicReference, Subscription subscription) {
        ObjectHelper.requireNonNull(subscription, "s is null");
        if (atomicReference.compareAndSet(null, subscription)) {
            return true;
        }
        subscription.cancel();
        if (atomicReference.get() != CANCELLED) {
            reportSubscriptionSet();
        }
        return false;
    }

    public static boolean setOnce(AtomicReference<Subscription> atomicReference, Subscription subscription, long j) {
        if (!setOnce(atomicReference, subscription)) {
            return false;
        }
        subscription.request(j);
        return true;
    }

    public static boolean validate(long j) {
        if (j > 0) {
            return true;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("n > 0 required but it was ");
        sb.append(j);
        RxJavaPlugins.onError(new IllegalArgumentException(sb.toString()));
        return false;
    }

    public static boolean validate(Subscription subscription, Subscription subscription2) {
        if (subscription2 == null) {
            RxJavaPlugins.onError(new NullPointerException("next is null"));
            return false;
        } else if (subscription == null) {
            return true;
        } else {
            subscription2.cancel();
            reportSubscriptionSet();
            return false;
        }
    }

    public void cancel() {
    }

    public void request(long j) {
    }
}
