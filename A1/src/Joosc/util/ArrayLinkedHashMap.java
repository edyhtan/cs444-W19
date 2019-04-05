package Joosc.util;

import java.util.ArrayList;
import java.util.LinkedHashMap;

public class ArrayLinkedHashMap<T1, T2> extends LinkedHashMap<T1, T2> {
    ArrayList<T1> indexList = new ArrayList<>();

    public T1 get(int ind) {
        return indexList.get(ind);
    }

    public int indexOf(T1 obj) {
        return indexList.indexOf(obj);
    }

    @Override
    public T2 put(T1 key, T2 value) {
        if (!indexList.contains(key)) {
            indexList.add(key);
        }
        return super.put(key, value);
    }
}
