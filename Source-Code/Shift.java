package njit.cs631;

public class Shift {
	private int EMPnumber;
	private int day;
	private String begintime;
	private String endtime;
	
	public int getEMPnumber(){
		return EMPnumber;
	}

	public void setEMPnumber(int EMPnumber){
		this.EMPnumber=EMPnumber;
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
	
	public String getendtime(){
		return endtime;
	}
	
	public void setendtime(String endtime){
		this.endtime=endtime;
	}
}
