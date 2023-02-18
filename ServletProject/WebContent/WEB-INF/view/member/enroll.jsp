<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>

	<h1>tripwithme</h1>
	회원가입페이지입니다.
	
	<section>
		<form action="enroll" method="post">
	아이디
	비밀번호
	비밀번호확인
	이름
	생년월일
	성별
	휴대전화
	별명
		 	<button type="submit" class="enroll submit">가입하기</button>
		</form>
		</section>


	<script>
		$(".enroll.submit").on("click",ClickEnrollSubmt);
		
		function ClickEnrollSubmt() {
			console.log("회원가입이 완료되었습니다. 로그인 페이지로 이동합니다.")
			location.href="<%=request.getContextPath()%>/home"; 
		}
	</script>


</body>
</html>
 