package njit.cs631;

public class Clinicbed {
	private int bednumber;
	private int roomnumber;
	private String bedletter;
	private int nursingunit;
	private String wing;

	public int getbednumber(){
		return bednumber;
	}
	
	public void setbednumber(int bednumber){
		this.bednumber=bednumber;
	}
	
	public int getroomnumber(){
		return roomnumber;
	}
	
	public void setroomnumber(int roomnumber){
		this.roomnumber=roomnumber;
	}
	
	public String getbedletter(){
		return bedletter;
	}
	
	public void setbedletter(String bedletter){
		this.bedletter=bedletter;
	}
	
	public int getnursingunit(){
		return nursingunit;
	}
	
	public void setnursingunit(int nursingunit){
		this.nursingunit=nursingunit;
	}
	
	public String getwing(){
		return wing;
	}
	
	public void setwing(String wing){
		this.wing=wing;
	}
}
