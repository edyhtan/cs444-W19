package Joosc.TypeSystem;

import Joosc.ASTModel.Type;
import Joosc.Environment.ClassEnv;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;

public class JoosType {
    ArrayList<String> typeName;
    ClassEnv classEnv;
    HashMap<JoosType, ClassEnv> allParents = new HashMap<>();
    boolean isPrimitive;

    private static HashSet<JoosType> numberTypes = new HashSet<>();
    private static HashSet<JoosType> primitiveTypes = new HashSet<>();
    private static HashMap<String, JoosType> allTypes = new HashMap<>();
    private static HashMap<JoosType, ClassEnv> referenceTypes = new HashMap<>();

    public static JoosType VOID;
    public static JoosType NULL;

    static {
        allTypes.put("boolean", new JoosType("boolean", false));
        allTypes.put("int", new JoosType("int", true));
        allTypes.put("long", new JoosType("long", true));
        allTypes.put("char", new JoosType("char", true));
        allTypes.put("byte", new JoosType("byte", true));
        allTypes.put("short", new JoosType("short", true));
        VOID = new JoosType("void", false);
        NULL = new JoosType("null", false);
    }

    // reference types
    public JoosType(ClassEnv classEnv) {
        this.typeName = classEnv.getTypeDeclr().getCanonicalName();
        this.classEnv = classEnv;
        isPrimitive = false;

        allTypes.put(String.join(".", classEnv.getTypeDeclr().getCanonicalName()), this);
        referenceTypes.put(this, classEnv);
    }

    // primitive types
    private JoosType(String name, boolean isNumber) {
        this.typeName = new ArrayList<>();
        typeName.add(name);
        this.classEnv = null;
        isPrimitive = true;

        primitiveTypes.add(this);
        if (isNumber) {
            numberTypes.add(this);
        }
    }

    JoosType(JoosType type) {
        typeName = type.typeName;
        classEnv = type.classEnv;
        isPrimitive = type.isPrimitive;
        allParents = type.allParents;
    }

    public void addParent(JoosType type) {
        allParents.put(type, type.classEnv);
    }

    public ArrayList<String> getTypeName() {
        return typeName;
    }

    public boolean isPrimitive() {
        return isPrimitive(this);
    }

    public ClassEnv getClassEnv() {
        return classEnv;
    }

    public boolean hasParent(JoosType parent) {
        return allParents.containsKey(parent);
    }

    public HashMap<JoosType, ClassEnv> getAllParents() {
        return allParents;
    }

    public static void clean() {
        allTypes.clear();
        referenceTypes.clear();
        allTypes.put("boolean", new JoosType("boolean", false));
        allTypes.put("int", new JoosType("int", true));
        allTypes.put("long", new JoosType("long", true));
        allTypes.put("char", new JoosType("char", true));
        allTypes.put("byte", new JoosType("byte", true));
        allTypes.put("short", new JoosType("short", true));
    }

    public static boolean isNumber(JoosType type) {
        return numberTypes.contains(type);
    }

    public static boolean isPrimitive(JoosType type) {
        return primitiveTypes.contains(type);
    }

    public static boolean isPrimitive(Type type) {
        return type.getNames() != null;
    }

    public static boolean isPrimitive(ArrayList<String> fullname) {
        if (fullname.size() == 1) {
            for (JoosType type : primitiveTypes) {
                if (type.typeName.get(0).equals(fullname.get(0))) {
                    return true;
                }
            }
        }
        return false;
    }

    public static JoosType getJoosType(ArrayList<String> fullname) {
        String strName = String.join(".", fullname);
        if (strName.equals("void")) {
            return VOID;
        }
        return allTypes.getOrDefault(strName, null);
    }

    public static JoosType getJoosType(String primitiveTypeName) {
        if (primitiveTypeName.equals("void")) {
            return VOID;
        }
        return allTypes.getOrDefault(primitiveTypeName, null);
    }


    // check primitive types
    public boolean equals(String primitiveTypeName) {
        return this.isPrimitive && this.typeName.get(0).equals(primitiveTypeName);
    }


    public boolean isA(JoosType type) {
        if (this instanceof ArrayType) {
            return type.equals(getJoosType(new ArrayList<>(Arrays.asList("java", "lang", "Object"))))
                    || type.equals(getJoosType(new ArrayList<>(Arrays.asList("java", "lang", "Cloneable"))))
                    || type.equals(getJoosType(new ArrayList<>(Arrays.asList("java", "io", "Serializable"))))
                    || type.equals(NULL);
        }

        if (this.equals(type)) {
            return true;
        }
        if (this.isPrimitive() && type.isPrimitive()) {
            return isNumber(this) && isNumber(type);
        }
        return (this == NULL && !type.isPrimitive) || hasParent(type);
    }

    // unit tests
    public static void printTypes() {
        allTypes.values().forEach(x -> {
            System.err.printf(
                    "%-25s %15s %15s\n", String.join(".", x.typeName),
                    (isPrimitive(x) ? "Primitive" : "Reference"),
                    (isNumber(x) ? "Number" : " ")
            );

            x.allParents.keySet().forEach(y -> {
                System.err.println("\t|-- " + String.join(".", y.typeName));
            });
        });
    }
}
