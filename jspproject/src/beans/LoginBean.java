package beans;


public class LoginBean {	
	
	// 사용자가 폼에서 입력한 값을 저장하기 위한 필드
	private String userid;
	private String passwd;

	private String _userid;
	private String _passwd;
	
	// 생성자
	public LoginBean() {
		// 인증에 사용할 기본값 설정
		_userid = "myuser";
		_passwd = "1234";
	}
	
	// 아이디와 비밀번호가 맞는지 체크하는 메서드
	public boolean checkUser() {
		if(userid.equals(_userid) && passwd.equals(_passwd))
			return true;
		else
			return false;
	}		
	
	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}	
	
	public String getUserid() {
		return userid;
	}
	
	public String getPasswd() {
		return passwd;
	}
}