package string;

import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;

public class reverseWORDS {



	public static void main(String[] args) {
		// TODO Auto-generated method stub
			
		String str="Hey Iam satyam kale";
		String[] split = str.split(" ");
		
		 String result = IntStream.range(0, split.length)
                 .mapToObj(i -> split[split.length - 1 - i])
                 .collect(Collectors.joining(" "));

System.out.println(result); 
		
		for(int i=split.length-1;i>=0;i--)
		{
			System.out.print(split[i]+" ");
		}
	}

}
