package comma.sist.weather;


public class WeatherDTO {
	private int no;				//번호
	private String loc;			//지역
	private double tempera;		//온도
	private String weatherWord;	//구름많음,적음..
	private String weaAddr;		//날씨 이미지 주소
	
	public String getWeaAddr() {
		return weaAddr;
	}
	public void setWeaAddr(String weaAddr) {
		this.weaAddr = weaAddr;
	}
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
