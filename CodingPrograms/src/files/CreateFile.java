package files;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class CreateFile {

	public static void main(String[] args) throws IOException {
		
		File f=new File("java.txt");
		String str="java is an object oriented language";
		
		byte buffer[]=str.getBytes();
		
		FileOutputStream fos=new FileOutputStream(f);
		fos.write(buffer);
		fos.close();
		
		FileInputStream fis=new FileInputStream(f);
		int c=fis.read();
		while(c!=-1) {
			System.out.println((char)c);
			
		}
		
		fis.close();
		System.out.println(fis);
		

	}

}
