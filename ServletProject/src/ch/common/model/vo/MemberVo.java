package ch.common.model.vo;

public class MemberVo {

	
//  	DESC SEMI_MEMBER;
//		-------- -------- ------------ 
//	ID       NOT NULL VARCHAR2(15) 
//	PASSWD   NOT NULL VARCHAR2(15) 
//	NAME     NOT NULL VARCHAR2(20) 
//	NICKNAME NOT NULL VARCHAR2(30) 
//	BIRTH             VARCHAR2(25) 
//	PHONE             VARCHAR2(25) 
//	GENDER            VARCHAR2(10) 	
//	EMAIL    NOT NULL VARCHAR2(40)
	
	
		private String id;
		private String passwd;
		private String name;
		private String nickname;
		private String birth;
		private String phone;
		private String gender;
		private String email;
		
		@Override
		public String toString() {
			return "MemberVo [id=" + id + ", passwd=" + passwd + ", name=" + name + ", nickname=" + nickname
					+ ", birth=" + birth + ", phone=" + phone + ", gender=" + gender + ", email=" + email + "]";
		}
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public String getPasswd() {
			return passwd;
		}
		public void setPasswd(String passwd) {
			this.passwd = passwd;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getNickname() {
			return nickname;
		}
		public void setNickname(String nickname) {
			this.nickname = nickname;
		}
		public String getBirth() {
			return birth;
		}
		public void setBirth(String birth) {
			this.birth = birth;
		}
		public String getPhone() {
			return phone;
		}
		public void setPhone(String phone) {
			this.phone = phone;
		}
		public String getGender() {
			return gender;
		}
		public void setGender(String gender) {
			this.gender = gender;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		
		
		
		
		
}
		