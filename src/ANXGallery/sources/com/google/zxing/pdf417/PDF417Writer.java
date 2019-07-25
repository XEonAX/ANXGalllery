package com.google.zxing.pdf417;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.pdf417.encoder.Compaction;
import com.google.zxing.pdf417.encoder.Dimensions;
import com.google.zxing.pdf417.encoder.PDF417;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.Map;

public final class PDF417Writer implements Writer {
    private static BitMatrix bitMatrixFromEncoder(PDF417 pdf417, String str, int i, int i2, int i3) throws WriterException {
        boolean z;
        pdf417.generateBarcodeLogic(str, 2);
        byte[][] scaledMatrix = pdf417.getBarcodeMatrix().getScaledMatrix(2, 8);
        if ((i2 > i) ^ (scaledMatrix[0].length < scaledMatrix.length)) {
            scaledMatrix = rotateArray(scaledMatrix);
            z = true;
        } else {
            z = false;
        }
        int length = i / scaledMatrix[0].length;
        int length2 = i2 / scaledMatrix.length;
        if (length >= length2) {
            length = length2;
        }
        if (length <= 1) {
            return bitMatrixFrombitArray(scaledMatrix, i3);
        }
        byte[][] scaledMatrix2 = pdf417.getBarcodeMatrix().getScaledMatrix(length * 2, length * 4 * 2);
        if (z) {
            scaledMatrix2 = rotateArray(scaledMatrix2);
        }
        return bitMatrixFrombitArray(scaledMatrix2, i3);
    }

    private static BitMatrix bitMatrixFrombitArray(byte[][] bArr, int i) {
        int i2 = i * 2;
        BitMatrix bitMatrix = new BitMatrix(bArr[0].length + i2, bArr.length + i2);
        bitMatrix.clear();
        int height = (bitMatrix.getHeight() - i) - 1;
        int i3 = 0;
        while (i3 < bArr.length) {
            for (int i4 = 0; i4 < bArr[0].length; i4++) {
                if (bArr[i3][i4] == 1) {
                    bitMatrix.set(i4 + i, height);
                }
            }
            i3++;
            height--;
        }
        return bitMatrix;
    }

    private static byte[][] rotateArray(byte[][] bArr) {
        byte[][] bArr2 = (byte[][]) Array.newInstance(byte.class, new int[]{bArr[0].length, bArr.length});
        for (int i = 0; i < bArr.length; i++) {
            int length = (bArr.length - i) - 1;
            for (int i2 = 0; i2 < bArr[0].length; i2++) {
                bArr2[i2][length] = bArr[i][i2];
            }
        }
        return bArr2;
    }

    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        if (barcodeFormat == BarcodeFormat.PDF_417) {
            PDF417 pdf417 = new PDF417();
            int i3 = 30;
            if (map != null) {
                if (map.containsKey(EncodeHintType.PDF417_COMPACT)) {
                    pdf417.setCompact(((Boolean) map.get(EncodeHintType.PDF417_COMPACT)).booleanValue());
                }
                if (map.containsKey(EncodeHintType.PDF417_COMPACTION)) {
                    pdf417.setCompaction((Compaction) map.get(EncodeHintType.PDF417_COMPACTION));
                }
                if (map.containsKey(EncodeHintType.PDF417_DIMENSIONS)) {
                    Dimensions dimensions = (Dimensions) map.get(EncodeHintType.PDF417_DIMENSIONS);
                    pdf417.setDimensions(dimensions.getMaxCols(), dimensions.getMinCols(), dimensions.getMaxRows(), dimensions.getMinRows());
                }
                if (map.containsKey(EncodeHintType.MARGIN)) {
                    i3 = ((Number) map.get(EncodeHintType.MARGIN)).intValue();
                }
                if (map.containsKey(EncodeHintType.CHARACTER_SET)) {
                    pdf417.setEncoding(Charset.forName((String) map.get(EncodeHintType.CHARACTER_SET)));
                }
            }
            return bitMatrixFromEncoder(pdf417, str, i, i2, i3);
        }
        StringBuilder sb = new StringBuilder("Can only encode PDF_417, but got ");
        sb.append(barcodeFormat);
        throw new IllegalArgumentException(sb.toString());
    }
}
