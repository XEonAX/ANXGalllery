package uk.co.senab.photoview.scrollerproxy;

import android.annotation.TargetApi;
import android.content.Context;
import android.view.animation.Interpolator;
import android.widget.OverScroller;

@TargetApi(9)
public class GingerScroller extends ScrollerProxy {
    private boolean mFirstScroll = false;
    protected final OverScroller mScroller;

    public GingerScroller(Context context) {
        this.mScroller = new OverScroller(context);
    }

    public GingerScroller(Context context, Interpolator interpolator) {
        this.mScroller = new OverScroller(context, interpolator);
    }

    public boolean computeScrollOffset() {
        if (this.mFirstScroll) {
            this.mScroller.computeScrollOffset();
            this.mFirstScroll = false;
        }
        return this.mScroller.computeScrollOffset();
    }

    public void fling(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        this.mScroller.fling(i, i2, i3, i4, i5, i6, i7, i8, i9, i10);
    }

    public void forceFinished(boolean z) {
        this.mScroller.forceFinished(z);
    }

    public int getCurrX() {
        return this.mScroller.getCurrX();
    }

    public int getCurrY() {
        return this.mScroller.getCurrY();
    }

    public boolean isFinished() {
        return this.mScroller.isFinished();
    }

    public void startScroll(int i, int i2, int i3, int i4, int i5) {
        this.mScroller.startScroll(i, i2, i3, i4, i5);
    }
}
