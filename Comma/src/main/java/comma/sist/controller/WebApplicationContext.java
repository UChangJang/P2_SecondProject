package comma.sist.controller;

import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

import java.util.*;
import java.io.*;

public class WebApplicationContext {

	List<String> packList = new ArrayList<String>();
	
	public WebApplicationContext(String path){
		
		try{
		
			SAXParserFactory spf = SAXParserFactory.newInstance();
			SAXParser sp = spf.newSAXParser();
			
			HandlerMapping hm = new HandlerMapping();
			sp.parse(new File(path), hm);
			
			packList = hm.packList;
			
		}catch(Exception ex){}
		
	}
	
	public List<String> getFileName(){
		
		List<String> list = new ArrayList<String>();
		
		for(String packName:packList){ // 패키지당
			List<String> fList = FileConfig.getFileName(packName); //comma.~.~
			
			for(String fileName:fList){
				list.add(fileName);
			}
		}
		
		return list;
		
	}
	
	
	
}
