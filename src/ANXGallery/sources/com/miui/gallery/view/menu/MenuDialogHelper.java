package com.miui.gallery.view.menu;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.KeyEvent.DispatcherState;
import android.view.View;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import com.miui.gallery.R;
import com.miui.gallery.view.menu.MenuPresenter.Callback;
import com.nexstreaming.nexeditorsdk.nexEngine;

public class MenuDialogHelper implements OnClickListener, OnDismissListener, OnKeyListener, Callback {
    private AlertDialog mDialog;
    private MenuBuilder mMenu;
    ListMenuPresenter mPresenter;
    private Callback mPresenterCallback;

    public MenuDialogHelper(MenuBuilder menuBuilder) {
        this.mMenu = menuBuilder;
    }

    public void dismiss() {
        if (this.mDialog != null) {
            this.mDialog.dismiss();
        }
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        this.mMenu.performItemAction((MenuItemImpl) this.mPresenter.getAdapter().getItem(i), 0);
    }

    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        if (z || menuBuilder == this.mMenu) {
            dismiss();
        }
        if (this.mPresenterCallback != null) {
            this.mPresenterCallback.onCloseMenu(menuBuilder, z);
        }
    }

    public void onDismiss(DialogInterface dialogInterface) {
        this.mPresenter.onCloseMenu(this.mMenu, true);
    }

    public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        if (i == 82 || i == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                Window window = this.mDialog.getWindow();
                if (window != null) {
                    View decorView = window.getDecorView();
                    if (decorView != null) {
                        DispatcherState keyDispatcherState = decorView.getKeyDispatcherState();
                        if (keyDispatcherState != null) {
                            keyDispatcherState.startTracking(keyEvent, this);
                            return true;
                        }
                    }
                }
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled()) {
                Window window2 = this.mDialog.getWindow();
                if (window2 != null) {
                    View decorView2 = window2.getDecorView();
                    if (decorView2 != null) {
                        DispatcherState keyDispatcherState2 = decorView2.getKeyDispatcherState();
                        if (keyDispatcherState2 != null && keyDispatcherState2.isTracking(keyEvent)) {
                            this.mMenu.close(true);
                            dialogInterface.dismiss();
                            return true;
                        }
                    }
                }
            }
        }
        return this.mMenu.performShortcut(i, keyEvent, 0);
    }

    public boolean onOpenSubMenu(MenuBuilder menuBuilder) {
        return this.mPresenterCallback != null && this.mPresenterCallback.onOpenSubMenu(menuBuilder);
    }

    public void show(IBinder iBinder) {
        MenuBuilder menuBuilder = this.mMenu;
        Builder builder = new Builder(menuBuilder.getContext());
        this.mPresenter = new ListMenuPresenter(R.layout.list_menu_item_layout, 2131820700);
        this.mPresenter.setCallback(this);
        this.mMenu.addMenuPresenter(this.mPresenter);
        builder.setAdapter(this.mPresenter.getAdapter(), this);
        View headerView = menuBuilder.getHeaderView();
        if (headerView != null) {
            builder.setCustomTitle(headerView);
        } else {
            builder.setIcon(menuBuilder.getHeaderIcon()).setTitle(menuBuilder.getHeaderTitle());
        }
        builder.setOnKeyListener(this);
        this.mDialog = builder.create();
        this.mDialog.setOnDismissListener(this);
        LayoutParams attributes = this.mDialog.getWindow().getAttributes();
        attributes.type = 1003;
        if (iBinder != null) {
            attributes.token = iBinder;
        }
        attributes.flags |= nexEngine.ExportHEVCHighTierLevel51;
        this.mDialog.show();
    }
}
