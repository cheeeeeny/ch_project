package ch.common.model.vo;

public class MemberVo {

	/*
	desc test_member;           
	------ -------- ------------ 
	ID     NOT NULL VARCHAR2(15) 
	PASSWD NOT NULL VARCHAR2(15) 
	NAME   NOT NULL VARCHAR2(20) 
	PHONE  NOT NULL VARCHAR2(30) 	
	 */
		private String id;
		private String passwd;
		private String name;
		private String phone;
		
		@Override
		public String toString() {
			return "MypageVo [id=" + id + ", passwd=" + passwd + ", name=" + name + ", phone=" + phone + "]";
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

		public String getPhone() {
			return phone;
		}

		public void setPhone(String phone) {
			this.phone = phone;
		}	
	
}
