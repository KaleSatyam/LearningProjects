package inheritance;
import java.util.List;

public class manager extends employee 
{
    employee  subordinates;
 
   employee   getSubordinates() {
        return subordinates;
    }
 
    public void setSubordinates(employee  subordinates) {
        this.subordinates = subordinates;
    }
 
    @Override
    public String toString() {
        return "Manager [subordinates=" + subordinates + ", details=" + super.toString() + "]";
    }
}