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
	
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div style="padding-top: 20px;">
				<form action="enroll" method="post">
					<h5>회원가입</h5>
					<div class="form-group">
						아이디<br>
						<input type="text" placeholder="아이디" name="id" > 
					</div>
					<div class="form-group">
						비밀번호<br>
						<input type="password" placeholder="비밀번호" name="passwd" >
					</div>
					<div class="form-group">
						이름<br>
						<input type="text" placeholder="이름" name="name" >
					</div>
					<div class="form-group">
						별명<br>
						<input type="text" placeholder="별명" name="nickname" > 
					</div>
					<div class="form-group">
						생년월일<br>
						<input type="text" placeholder="생년월일" name="birth" > 
					</div>
					<div class="form-group">
						휴대전화<br>
						<input type="text" placeholder="휴대전화" name="phone" > 
					</div>
					<div class="form-group">
						성별<br>
						<input type="text" placeholder="성별" name="gender" > 
					</div>
					<div class="form-group">
						이메일<br>
						<input type="text" placeholder="이메일" name="email" > 
					</div>
					<div class="form-group">
						<button type="submit" class="enroll submit">가입하기</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	
	<script>
		$(".enroll.submit").on("click",ClickEnrollSubmt)
		
		function ClickEnrollSubmt() {
			console.log("회원가입이 완료되었습니다. 로그인 페이지로 이동합니다.")
			location.href="<%=request.getContextPath()%>/home"; 
		}
	</script>


</body>
</html>
 