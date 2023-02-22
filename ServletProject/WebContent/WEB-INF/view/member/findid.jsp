<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tripwithme : ID찾기</title>
</head>
<body>

	</div>
	<h1>tripwithme</h1>
	id 찾기 페이지 입니다.
	<div>
		<div>
			<form action="findid" method="post">
				<div>
					<button type="button" class="btn findid">ID 찾기</button>
					<button type="button" class="btn findpw">PW 찾기</button>
				</div>
				<div>
					<a>이름</a><br> 
					<input type="text" name="name" placeholder="이름"> 
				</div>
				<div>
					<a>이메일</a><br> 	
					<input type="text" name="email" placeholder="이메일" > 
				</div>
				<br>
				<div>
					<button type="submit" class="btn login">확인</button>
					<button type="button" class="btn back">취소</button>
				</div>
				<div>
					아이디가 없으신가요 ?
					<button type="button" class="btn enroll">지금가입하기</button>
				</div>
				
			</form>
		</div>
		<script>
		$(".btn.findid").on("click",ClickBtnFindid);
		$(".btn.findpw").on("click",ClickBtnFindpw);
		$(".btn.back").on("click",ClickBtnBack);
		$(".btn.enroll").on("click",ClickBtnEnroll);
		
		function ClickBtnFindid() {
			console.log("id찾기 화면으로 이동합니다.")
			location.href="<%=request.getContextPath()%>/findid"; 
		}	
		function ClickBtnFindpw() {
			console.log("비밀번호 찾기 화면으로 이동합니다.")
			location.href="<%=request.getContextPath()%>/findpw"; 
		}
		function ClickBtnEnroll() {
			console.log("회원가입으로 이동합니다")
			location.href="<%=request.getContextPath()%>/enroll"; 
		}
		function ClickBtnBack() {
			console.log("아이디찾기를 취소하고 홈으로 돌아갑니다.")
			location.href="<%=request.getContextPath()%>/home"; 
		}	
		
		</script>
</body>
</html>