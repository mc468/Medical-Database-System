package njit.cs631;

public class Surgery {
	private int Surgerynumber;
	private int EMPnumber;
	private String Surgerycode;
	private int Patientnumber;
	private String Surgerydate;
	private String theater;
	
	public int getSurgerynumber(){
		return Surgerynumber;
	}
	
	public void setSurgerynumber(int Surgerynumber){
		this.Surgerynumber=Surgerynumber;
	}
	
	public int getEMPnumber(){
		return EMPnumber;
	}
	
	public void setEMPnumber(int EMPnumber){
		this.EMPnumber=EMPnumber;
	}
	
	public String getSurgerycode(){
		return Surgerycode;
	}
	
	public void setSurgerycode(String Surgerycode){
		this.Surgerycode=Surgerycode;
	}
	
	public int getPatientnumber(){
		return Patientnumber;
	}
	
	public void setPatientnumber(int Patientnumber){
		this.Patientnumber=Patientnumber;
	}

	public String getSurgerydate(){
		return Surgerydate;
	}
	
	public void setSurgerydate(String Surgerydate){
		this.Surgerydate=Surgerydate;
	}
	
	public String gettheater(){
		return theater;
	}
	
	public void settheater(String theater){
		this.theater=theater;
	}
}
