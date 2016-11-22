package njit.cs631;

public class Patient {
	private int Patientnumber;
	private String Patientaddress;
	private String Patientname;
	private String Patientgender;
	private int PatientSSN;
	private int Patientphonenumber;;
	private String Patientbirth;
	
	public int getPatientnumber(){
		return Patientnumber;
	}
	
	public void setPatientnumber(int Patientnumber){
		this.Patientnumber=Patientnumber;
	}
	
	public String getPatientaddress() {
		return Patientaddress;
	}
	
	public void setPatientaddress(String Patientaddress) {
		this.Patientaddress = Patientaddress;
	}
	
	public String getPatientname() {
		return Patientname;
	}
	public void setPatientname(String Patientname) {
		this.Patientname = Patientname;
	}
	public String getPatientgender() {
		return Patientgender;
	}
	public void setPatientgender(String Patientgender) {
		this.Patientgender = Patientgender;
	}
	
	public int getPatientSSN(){
		return PatientSSN;
	}
	
	public void setPatientSSN(int PatientSSN){
		this.PatientSSN=PatientSSN;
	}
	
	public int getPatientphonenumber(){
		return Patientphonenumber;
	}
	
	public void setPatientphonenumber(int Patientphonenumber){
		this.Patientphonenumber=Patientphonenumber;
	}
	
	public String getPatientbirth() {
		return Patientbirth;
	}
	
	public void setPatientbirth(String Patientbirth) {
		this.Patientbirth = Patientbirth;
	}
}
