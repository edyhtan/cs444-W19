import java.lang.Object;

public class Abstract {

    public J1_1_Cast_Complement(){}

    public static int test(){

        boolean t = true;
        boolean b = (boolean)!t;
        if (b){
            return 124733;
        }
        else {
            return 123;
        }
    }
}