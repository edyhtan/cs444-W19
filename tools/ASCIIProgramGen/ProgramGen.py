class_name = "WeirdTest"
file_name = "../../A1/test/%s.java" % (class_name)

joos_program = """
public class %s {
    public %s() {
        String a = "\x01\x02\x03\x04\x05\x06";
    }
}
"""

f = open(file_name, "a+")

## change the format parameter for constructor (if needed)
f.write(joos_program % (class_name, class_name))