package com.google.protobuf;

import com.google.protobuf.Descriptors.EnumDescriptor;
import com.google.protobuf.Descriptors.EnumValueDescriptor;
import com.google.protobuf.Internal.EnumLiteMap;

public enum Syntax implements ProtocolMessageEnum {
    SYNTAX_PROTO2(0),
    SYNTAX_PROTO3(1),
    UNRECOGNIZED(-1);
    
    public static final int SYNTAX_PROTO2_VALUE = 0;
    public static final int SYNTAX_PROTO3_VALUE = 1;
    private static final Syntax[] VALUES = null;
    private static final EnumLiteMap<Syntax> internalValueMap = null;
    private final int value;

    static {
        internalValueMap = new EnumLiteMap<Syntax>() {
            public Syntax findValueByNumber(int i) {
                return Syntax.forNumber(i);
            }
        };
        VALUES = values();
    }

    private Syntax(int i) {
        this.value = i;
    }

    public static Syntax forNumber(int i) {
        switch (i) {
            case 0:
                return SYNTAX_PROTO2;
            case 1:
                return SYNTAX_PROTO3;
            default:
                return null;
        }
    }

    public static final EnumDescriptor getDescriptor() {
        return (EnumDescriptor) TypeProto.getDescriptor().getEnumTypes().get(0);
    }

    public static EnumLiteMap<Syntax> internalGetValueMap() {
        return internalValueMap;
    }

    @Deprecated
    public static Syntax valueOf(int i) {
        return forNumber(i);
    }

    public static Syntax valueOf(EnumValueDescriptor enumValueDescriptor) {
        if (enumValueDescriptor.getType() == getDescriptor()) {
            return enumValueDescriptor.getIndex() == -1 ? UNRECOGNIZED : VALUES[enumValueDescriptor.getIndex()];
        }
        throw new IllegalArgumentException("EnumValueDescriptor is not for this type.");
    }

    public final EnumDescriptor getDescriptorForType() {
        return getDescriptor();
    }

    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    public final EnumValueDescriptor getValueDescriptor() {
        return (EnumValueDescriptor) getDescriptor().getValues().get(ordinal());
    }
}
