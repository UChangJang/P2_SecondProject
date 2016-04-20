package comma.sist.weather;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;


public class WeatherManager {

/*	
	public static void main(String[] agrs){
		WeatherManager m=new WeatherManager();
		
		m.weatherAllData();		//굳이안해줘도 list.jsp에서 따로 불러오던데?...
	}*/
	
	
		//1.날씨모든정보
		public List<WeatherDTO> weatherAllData(){
			
			List<WeatherDTO> list=new ArrayList<WeatherDTO>();
			
			try{
				//jsoup들어간것 IMPORT
				Document doc=Jsoup.connect("http://www.kma.go.kr/index.jsp").get();	//html코드 불러들임	
				
				//jsoup들어간것 IMPORT//Elements<=태그여러개 가져옴  //Element<=태그하나
				Elements locElem=doc.select("#weather2 dl dt");			//지역(서울,부산..)
				Elements tempElem=doc.select("#weather2 dl dd p");			//온도(10.7,,,)
				Elements imgElem=doc.select("#weather2 dl dd a img");//구름많음 구름조금.....?.alt???
				
				
				for(int i=0; i<locElem.size(); i++){		//저장된 수만큼				
					Element	locem=locElem.get(i);	
					Element	tempem=tempElem.get(i);
					Element	imgem=imgElem.get(i);

					WeatherDTO d=new WeatherDTO();
					d.setNo(i+1);		//추가
					d.setLoc(locem.text());
					d.setTempera(Double.parseDouble(tempem.text()));
					d.setWeatherWord(imgem.attr("alt"));
					list.add(d);
					System.out.println(d.getLoc()+","+d.getTempera()+","+d.getWeatherWord());
				}
				
			}catch(Exception e){
				System.out.println(e.getMessage());
			}
			return list;
		}
		
		//2.날씨상세정보
		public WeatherDTO weatherDetail(String loc){
			WeatherDTO d=new WeatherDTO();
			List<WeatherDTO> list=weatherAllData();
			
			for(WeatherDTO dto:list){
				if(dto.getLoc().equals(loc)){
					d=dto;
					break;
				}
			}
			return d;
		}
	
	}