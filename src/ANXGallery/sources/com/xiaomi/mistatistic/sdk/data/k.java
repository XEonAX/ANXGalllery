package com.xiaomi.mistatistic.sdk.data;

import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: PageActionEvent */
public class k extends AbstractEvent {
    private String a;
    private long b;
    private long c;
    private boolean d;
    private String e;

    public k(String str, long j, long j2, boolean z, String str2) {
        this.a = str;
        this.b = j;
        this.c = j2;
        this.d = z;
        this.e = str2;
    }

    public String getCategory() {
        return "mistat_pa";
    }

    public StatEventPojo toPojo() {
        StatEventPojo statEventPojo = new StatEventPojo();
        statEventPojo.mCategory = getCategory();
        statEventPojo.mTimeStamp = this.b;
        StringBuilder sb = new StringBuilder();
        sb.append(this.a);
        sb.append(",");
        sb.append(this.b);
        sb.append(",");
        sb.append(this.c);
        sb.append(",");
        sb.append(this.d);
        statEventPojo.mValue = sb.toString();
        statEventPojo.mExtra = this.e;
        return statEventPojo;
    }

    public JSONObject valueToJSon() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("category", getCategory());
        jSONObject.put("name", this.a);
        jSONObject.put("start", this.b);
        jSONObject.put("end", this.c);
        jSONObject.put("auto_end", this.d);
        jSONObject.put("env", this.e);
        return jSONObject;
    }
}
