package comma.sist.weather;


public class WeatherDTO {
	private int no;				//��ȣ
	private String loc;			//����
	private double tempera;		//�µ�
	private String weatherWord;	//��������,����..
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	public double getTempera() {
		return tempera;
	}
	public void setTempera(double tempera) {
		this.tempera = tempera;
	}
	public String getWeatherWord() {
		return weatherWord;
	}
	public void setWeatherWord(String weatherWord) {
		this.weatherWord = weatherWord;
	}
	
	
	
	
}
