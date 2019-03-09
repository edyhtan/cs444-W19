package Joosc.util;

import jdk.nashorn.api.tree.Tree;

import java.util.ArrayList;
import java.util.HashSet;

public class TreeSet<T> {
    TreeSet<T> parent = null;
    ArrayList<TreeSet> children = new ArrayList<>();
    HashSet<T> Set = new HashSet<>();

    public TreeSet (){

    }

    public void addItem(T item) {
        Set.add(item);
    }

    public TreeSet<T> newChild() {
        TreeSet treeSet = new TreeSet();
        treeSet.parent = this;
        children.add(treeSet);
        return treeSet;
    }

    public boolean contain(T item) {
        if (Set.contains(item)) {
            return true;
        } else {
            if (parent == null) {
                return false;
            } else {
                return parent.contain(item);
            }
        }
    }
}
