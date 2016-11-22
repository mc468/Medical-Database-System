package njit.cs631;

public class Schedule {
	private int EMPnumber;
	private int Patientnumber;
	private int day;
	private String begintime;
	
	public int getEMPnumber(){
		return EMPnumber;
	}
	
	public void setEMPnumber(int EMPnumber){
		this.EMPnumber=EMPnumber;
	}
	
	public int getPatientnumber(){
		return Patientnumber;
	}
	
	public void setPatientnumber(int Patientnumber){
		this.Patientnumber=Patientnumber;
	}
	
	public int getday(){
		return day;
	}
	
	public void setday(int day){
		this.day=day;
	}
	
	public String getbegintime(){
		return begintime;
	}
	
	public void setbegintime(String begintime){
		this.begintime=begintime;
	}

}
