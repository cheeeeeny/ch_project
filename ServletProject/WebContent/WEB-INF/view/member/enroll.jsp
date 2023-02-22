<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tripwithme</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
</head>

<body>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.3.js"></script>

	<style>
body {
	background-color: #D2DEF1;
}
</style>

	<div class="container-fluid">
		<div class="row">
			<div class="col-3"></div>

			<div class="col-6">
				<div class="container text-center">
					<div class="row" style="padding-top: 40px;">
						<div class="text-center">
							<p class="fw-bold fs-1 text-center " style="color:white;">
							Welcome</p>
							<br>
							<p class="text-center fs-4 " style="color:grey;">
							회원가입 페이지</p><br>
							<form action="enroll" method="post" class="container text-center"
								style="background: white; padding: 15%;">
								<input type="text" class="form-control" name="id" placeholder="User_Id"> <br> 
								<input type="password" class="form-control" name="passwd" placeholder="Password"><br>
								<input type="text" class="form-control" name="name" placeholder="Name"><br> 
								<input type="text" class="form-control" name="nickname" placeholder="별명" >
								<br> <input type="text" class="form-control" placeholder="생년월일" name="birth"> <br> 
								<input type="text" class="form-control" placeholder="휴대전화"
									name="phone"> <br>
								<div class="form-check text-center">
									<input class="form-check-input" type="radio" name="gender"
										value="M"> <label class="form-check-label"
										for="flexRadioDefault1"> 남자 </label>
								</div>
								<div class="form-check text-center">
									<input class="form-check-input" type="radio" name="gender"
										value="W"> <label class="form-check-label"
										for="flexRadioDefault2"> 여자 </label>
								</div><br>
								<input type="text" class="form-control" placeholder="이메일"
									name="email"> <br> 
								<button type="submit" class="form-control bold enroll-submit"
									style="background: white; color: #D2DEF1;">가입하기</button>
							</form>
						</div>
						<div class="col-3"></div>
					</div>
				</div>
			</div>
		</div>
	</div>




	<%-- 오류 수정된 코드 --%>
	<script>
		$(".enroll-submit").on("click",ClickEnrollSubmt)
		
		function ClickEnrollSubmt() {
			console.log("회원가입이 완료되었습니다. 로그인 페이지로 이동합니다.")
			location.href="<%=request.getContextPath()%>/home"; 
		}
	</script>
</body>


</html>


