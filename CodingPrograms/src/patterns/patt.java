package patterns;


public class patt
{
    public static void main(String args[]){
        for(int i=1;i<=20;i++)
        {
                if(i%2==0)
                {
                    for(int j=1;j<=i;j++)
                    System.out.print(j);
                }else if(i%2!=0)
                {
                    for(int k=1;k<=i;k++)
                    System.out.print(" * ");
                    
                }
                System.out.println();
        }
    }

}
