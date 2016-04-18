package comma.sist.controller;

import java.util.*;
import java.io.*;

public class FileConfig {

	public static List<String> getFileName(String pack){
		
		List<String> list = new ArrayList<String>();
		
		try{
			
			String path = "C:\\Users\\sist\\git\\P2_SecondProject\\Comma\\src\\main\\java\\";
			path = path+pack.replace('.', '\\');
			
			File dir = new File(path);
			File[] files = dir.listFiles();
			
			for(File f:files){
				if(f.isFile()){
				
					String name = f.getName();
					String ext = name.substring((name.lastIndexOf('.')+1));
					if(ext.equals("java")){
						
						String clsPack = pack+"."+name.substring(0, name.lastIndexOf('.'));
						list.add(clsPack);
						
					}
					
				}
			}
			
		}catch(Exception ex){}
				
		return list;
		
	}
	
	
}
