package njit.cs631;

public class Live {
	private int Patientnumber;
	private int bednumber;
	private String datein;
	private String dateout;
	
	public int getPatientnumber(){
		return Patientnumber;
	}
	
	public void setPatientnumber(int Patientnumber){
		this.Patientnumber=Patientnumber;
	}
	
	public int getbednumber(){
		return bednumber;
	}
	
	public void setbednumber(int bednumber){
		this.bednumber=bednumber;
	}
	
	public String getdatein(){
		return datein;
	}
	
	public void setdatein(String datein){
		this.datein=datein;
	}

	public String getdateout(){
		return dateout;
	}
	
	public void setdateout(String dateout){
		this.dateout=dateout;
	}

	
}
