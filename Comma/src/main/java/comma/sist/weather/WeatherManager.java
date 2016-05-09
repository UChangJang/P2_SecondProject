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
				Elements locElem=doc.select("#weather2 dl dt");				//����(����,�λ�..)
				Elements tempElem=doc.select("#weather2 dl dd p");			//�µ�(10.7,,,)
				Elements imgElem=doc.select("#weather2 dl dd a img");		//�������� ��������.....?.alt???
				
				
				for(int i=0; i<locElem.size(); i++){		//����� ����ŭ				
					Element	locem=locElem.get(i);	
					Element	tempem=tempElem.get(i);
					Element	imgem=imgElem.get(i);
					
					WeatherDTO d=new WeatherDTO();
					d.setNo(i+1);		//�߰�
					
					// ���� ��ȯ
					String loc=locem.text();
					
					if(loc.equals("����")){
						loc="SEOUL";
					}
					else if(loc.equals("��õ"))
						loc="incheon".toUpperCase();
					else if(loc.equals("����"))
						loc="suwon".toUpperCase();
					else if(loc.equals("��õ"))
						loc="chuncheon".toUpperCase();
					else if(loc.equals("����"))
						loc="gangneung".toUpperCase();
					else if(loc.equals("��ɵ�"))
						loc="Baengnyeong".toUpperCase();
					else if(loc.equals("����"))
						loc="daejeon".toUpperCase();
					else if(loc.equals("����"))
						loc="seosan".toUpperCase();
					else if(loc.equals("û��"))
						loc="cheongju".toUpperCase();
					else if(loc.equals("û��"))
						loc="cheongju".toUpperCase();
					else if(loc.equals("����"))
						loc="jeonju".toUpperCase();
					else if(loc.equals("��굵"))
						loc="heuksando".toUpperCase();
					else if(loc.equals("����"))
						loc="kwangju".toUpperCase();
					else if(loc.equals("����"))
						loc="yeosu".toUpperCase();
					else if(loc.equals("����"))
						loc="mokpo".toUpperCase();
					else if(loc.equals("�뱸"))
						loc="daegu".toUpperCase();
					else if(loc.equals("�ȵ�"))
						loc="andong".toUpperCase();
					else if(loc.equals("����"))
						loc="pohang".toUpperCase();
					else if(loc.equals("���"))
						loc="ulsan".toUpperCase();
					else if(loc.equals("�λ�"))
						loc="busan".toUpperCase();
					else if(loc.equals("â��"))
						loc="changwon".toUpperCase();
					else if(loc.equals("����"))
						loc="jeju".toUpperCase();
					else
						loc="ulleung,dokdo".toUpperCase();
					
					d.setLoc(loc);
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
				weaword="images/sun_cloud";
			}else if(word.equals("��������")){
				weaword="images/cloud.png";
			}else if(word.equals("��")){
				weaword="images/rain.png";
			}else if(word.equals("�帲")){
				weaword="images/sun_cloud.png";
			}else if(word.equals("����")){
				weaword="images/sun.png";
			}else if(word.equals("��")){
				weaword="images/snow.png";
			}
			else if(word.equals("õ��")){
				weaword="images/thunder.png";
			}
			else if(word.equals("�Ȱ�")){
				weaword="images/sun_cloud";
			}else{								//���� �ܾ�
				weaword="images/character.png";
			}
			
			return weaword;
		}
	
	}