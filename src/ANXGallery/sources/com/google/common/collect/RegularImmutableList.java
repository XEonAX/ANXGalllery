package com.google.common.collect;

import com.google.common.base.Preconditions;

class RegularImmutableList<E> extends ImmutableList<E> {
    static final ImmutableList<Object> EMPTY = new RegularImmutableList(new Object[0], 0);
    final transient Object[] array;
    private final transient int size;

    RegularImmutableList(Object[] objArr, int i) {
        this.array = objArr;
        this.size = i;
    }

    /* access modifiers changed from: 0000 */
    public int copyIntoArray(Object[] objArr, int i) {
        System.arraycopy(this.array, 0, objArr, i, this.size);
        return i + this.size;
    }

    public E get(int i) {
        Preconditions.checkElementIndex(i, this.size);
        return this.array[i];
    }

    public UnmodifiableListIterator<E> listIterator(int i) {
        return Iterators.forArray(this.array, 0, this.size, i);
    }

    public int size() {
        return this.size;
    }
}
