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
		
		m.weatherAllData();		//���̾����൵ list.jsp���� ���� �ҷ�������?...
	}*/
	
	
		//1.�����������
		public List<WeatherDTO> weatherAllData(){
			
			List<WeatherDTO> list=new ArrayList<WeatherDTO>();
			
			try{
				//jsoup���� IMPORT
				Document doc=Jsoup.connect("http://www.kma.go.kr/index.jsp").get();	//html�ڵ� �ҷ�����	
				
				//jsoup���� IMPORT//Elements<=�±׿����� ������  //Element<=�±��ϳ�
				Elements locElem=doc.select("#weather2 dl dt");			//����(����,�λ�..)
				Elements tempElem=doc.select("#weather2 dl dd p");			//�µ�(10.7,,,)
				Elements imgElem=doc.select("#weather2 dl dd a img");//�������� ��������.....?.alt???
				
				
				for(int i=0; i<locElem.size(); i++){		//����� ����ŭ				
					Element	locem=locElem.get(i);	
					Element	tempem=tempElem.get(i);
					Element	imgem=imgElem.get(i);

					WeatherDTO d=new WeatherDTO();
					d.setNo(i+1);		//�߰�
					d.setLoc(locem.text());
					d.setTempera(Double.parseDouble(tempem.text()));
					d.setWeatherWord(imgem.attr("alt"));			//������Ȳ�ؽ�Ʈ
					d.setWeaAddr(weatherImg(imgem.attr("alt")));	//�����̹��� �ּ�
					list.add(d);
					System.out.println(d.getLoc()+","+d.getTempera()+","+d.getWeatherWord()+","+d.getWeaAddr());
				}
				
			}catch(Exception e){
				System.out.println(e.getMessage());
			}
			return list;
		}
		
		//2.����������
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
		
		/* ������ �̹��� ���� */
		public String weatherImg(String word){
			
			String weaword="";
			
			if(word.equals("��������")){		
				weaword="images/pic04.jpg";
			}else if(word.equals("��������")){
				weaword="images/pic05.jpg";
			}else if(word.equals("��")){
				weaword="images/pic04.jpg";
			}else if(word.equals("�帲")){
				weaword="images/pic05.jpg";
			}else if(word.equals("����")){
				weaword="images/pic04.jpg";
			}else{								//���� �ܾ�
				weaword="images/character.png";
			}
			
			return weaword;
		}
	
	}