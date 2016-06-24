package comma.sist.controller;

import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

import java.util.*;
import java.io.*;

public class WebApplicationContext {

	List<String> packList = new ArrayList<String>();	//packlist=comma.sist.model
	
	public WebApplicationContext(String path){
		
		try{
			/* sax: 문서를 차례대로 읽어 처리하는 이벤트 기반 파서
			 * 		속도가 빠름 but,문서전체를 파악하기 힘듬
			 * dom: 문서를 객체형태로 접근하는 트리 기반 파서
			 * 		모든xml문서를 메모리에 올려서 트리구조로 만든 뒤에 작업=> 메모리많이잡아먹음,속도느림
			 * 		간단한 문서 파싱에 용이
			 */
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
			List<String> fList = FileConfig.getFileName(packName); //flist=comma.sist.model.introController
			
			for(String fileName:fList){
				list.add(fileName);
			}
		}
		
		return list;
		
	}
	
	
	
}
