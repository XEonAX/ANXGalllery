package com.google.zxing.common.reedsolomon;

final class GenericGFPoly {
    private final int[] coefficients;
    private final GenericGF field;

    GenericGFPoly(GenericGF genericGF, int[] iArr) {
        if (iArr.length != 0) {
            this.field = genericGF;
            int length = iArr.length;
            if (length <= 1 || iArr[0] != 0) {
                this.coefficients = iArr;
                return;
            }
            int i = 1;
            while (i < length && iArr[i] == 0) {
                i++;
            }
            if (i == length) {
                this.coefficients = new int[1];
                return;
            }
            this.coefficients = new int[(length - i)];
            System.arraycopy(iArr, i, this.coefficients, 0, this.coefficients.length);
            return;
        }
        throw new IllegalArgumentException();
    }

    /* access modifiers changed from: 0000 */
    public GenericGFPoly addOrSubtract(GenericGFPoly genericGFPoly) {
        if (!this.field.equals(genericGFPoly.field)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        } else if (isZero()) {
            return genericGFPoly;
        } else {
            if (genericGFPoly.isZero()) {
                return this;
            }
            int[] iArr = this.coefficients;
            int[] iArr2 = genericGFPoly.coefficients;
            if (iArr.length > iArr2.length) {
                int[] iArr3 = iArr;
                iArr = iArr2;
                iArr2 = iArr3;
            }
            int[] iArr4 = new int[iArr2.length];
            int length = iArr2.length - iArr.length;
            System.arraycopy(iArr2, 0, iArr4, 0, length);
            for (int i = length; i < iArr2.length; i++) {
                iArr4[i] = GenericGF.addOrSubtract(iArr[i - length], iArr2[i]);
            }
            return new GenericGFPoly(this.field, iArr4);
        }
    }

    /* access modifiers changed from: 0000 */
    public GenericGFPoly[] divide(GenericGFPoly genericGFPoly) {
        if (!this.field.equals(genericGFPoly.field)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        } else if (!genericGFPoly.isZero()) {
            GenericGFPoly zero = this.field.getZero();
            int inverse = this.field.inverse(genericGFPoly.getCoefficient(genericGFPoly.getDegree()));
            GenericGFPoly genericGFPoly2 = zero;
            GenericGFPoly genericGFPoly3 = this;
            while (genericGFPoly3.getDegree() >= genericGFPoly.getDegree() && !genericGFPoly3.isZero()) {
                int degree = genericGFPoly3.getDegree() - genericGFPoly.getDegree();
                int multiply = this.field.multiply(genericGFPoly3.getCoefficient(genericGFPoly3.getDegree()), inverse);
                GenericGFPoly multiplyByMonomial = genericGFPoly.multiplyByMonomial(degree, multiply);
                genericGFPoly2 = genericGFPoly2.addOrSubtract(this.field.buildMonomial(degree, multiply));
                genericGFPoly3 = genericGFPoly3.addOrSubtract(multiplyByMonomial);
            }
            return new GenericGFPoly[]{genericGFPoly2, genericGFPoly3};
        } else {
            throw new IllegalArgumentException("Divide by 0");
        }
    }

    /* access modifiers changed from: 0000 */
    public int getCoefficient(int i) {
        return this.coefficients[(this.coefficients.length - 1) - i];
    }

    /* access modifiers changed from: 0000 */
    public int[] getCoefficients() {
        return this.coefficients;
    }

    /* access modifiers changed from: 0000 */
    public int getDegree() {
        return this.coefficients.length - 1;
    }

    /* access modifiers changed from: 0000 */
    public boolean isZero() {
        return this.coefficients[0] == 0;
    }

    /* access modifiers changed from: 0000 */
    public GenericGFPoly multiply(GenericGFPoly genericGFPoly) {
        if (!this.field.equals(genericGFPoly.field)) {
            throw new IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        } else if (isZero() || genericGFPoly.isZero()) {
            return this.field.getZero();
        } else {
            int[] iArr = this.coefficients;
            int length = iArr.length;
            int[] iArr2 = genericGFPoly.coefficients;
            int length2 = iArr2.length;
            int[] iArr3 = new int[((length + length2) - 1)];
            for (int i = 0; i < length; i++) {
                int i2 = iArr[i];
                for (int i3 = 0; i3 < length2; i3++) {
                    int i4 = i + i3;
                    iArr3[i4] = GenericGF.addOrSubtract(iArr3[i4], this.field.multiply(i2, iArr2[i3]));
                }
            }
            return new GenericGFPoly(this.field, iArr3);
        }
    }

    /* access modifiers changed from: 0000 */
    public GenericGFPoly multiplyByMonomial(int i, int i2) {
        if (i < 0) {
            throw new IllegalArgumentException();
        } else if (i2 == 0) {
            return this.field.getZero();
        } else {
            int length = this.coefficients.length;
            int[] iArr = new int[(i + length)];
            for (int i3 = 0; i3 < length; i3++) {
                iArr[i3] = this.field.multiply(this.coefficients[i3], i2);
            }
            return new GenericGFPoly(this.field, iArr);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(getDegree() * 8);
        for (int degree = getDegree(); degree >= 0; degree--) {
            int coefficient = getCoefficient(degree);
            if (coefficient != 0) {
                if (coefficient < 0) {
                    sb.append(" - ");
                    coefficient = -coefficient;
                } else if (sb.length() > 0) {
                    sb.append(" + ");
                }
                if (degree == 0 || coefficient != 1) {
                    int log = this.field.log(coefficient);
                    if (log == 0) {
                        sb.append('1');
                    } else if (log == 1) {
                        sb.append('a');
                    } else {
                        sb.append("a^");
                        sb.append(log);
                    }
                }
                if (degree != 0) {
                    if (degree == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(degree);
                    }
                }
            }
        }
        return sb.toString();
    }
}
