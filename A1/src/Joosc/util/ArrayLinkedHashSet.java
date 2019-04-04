package Joosc.util;

import java.util.ArrayList;
import java.util.HashSet;

public class ArrayLinkedHashSet <T> extends HashSet<T> {
    ArrayList<T> indexList = new ArrayList<>();

    public T get(int ind) {
        return indexList.get(ind);
    }

    public int indexOf(T obj) {
        return indexList.indexOf(obj);
    }

    @Override
    public boolean add(T obj) {
        if (indexList.contains(obj)) {
            return true;
        }
        if (super.add(obj)) {
            indexList.add(obj);
            return true;
        } else {
            return false;
        }
    }

    @Override
    public boolean remove(Object obj) {
        if (super.remove(obj)) {
            indexList.remove(obj);
            return true;
        } else {
            return false;
        }
    }
}
