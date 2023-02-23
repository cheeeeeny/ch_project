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
		<div class="container text-center">
			<div class="row">
				<div class="col"></div>

				<div class="col">
					<div class="container text-center">
						<div class="row" style="padding-top: 40px;">
							<div class="text-center">
								<p class="fw-bold fs-1 text-center ">Welcome</p>
								<br>
							</div>

							<div class="text-start">

								<p class="fs-4 text-start">DO YOU WANNA TRIP?</p>

							</div>

							<div class="text-end">
								<p class="fs-4 text-end" style="color: white;">TRIP WITH ME!</p>
							</div>
						</div>
					</div>
				</div>

				<div class="col"></div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col"></div>
				<div class="col container-fluid text-center ">
					<form action="login" method="post" class="container"
						style="background: white; padding-left: 15%; padding-right: 15%;">
						<br>
						<br> 
						<input type="text" class="form-control" name="id" placeholder="User_Id"> <br> 
						<input type="password"class="form-control" name="passwd" placeholder="Password">
						<br>
						<button type="submit" class="form-control bold"
							style="background: white; color: #D2DEF1;">로그인하기</button>
						<hr>
						<button type="button" class="btn enroll form-control bold"
							style="background: #D2DEF1; color: white;">회원가입</button>

						<button type="button" class="btn findid">ID 찾기</button>
						<button type="button" class="btn findpw">PW 찾기</button>
						<br> <br>
					</form>
				</div>
				<div class="col"></div>
			</div>
		</div>
		<div class="container text-center">
			<div class="row">
				<div class="col"></div>
				<div class="col" style="color: grey; padding-top: 20px;">
					Contact us</div>
				<div class="col"></div>
			</div>
		</div>
	</div>



	<%-- 오류 수정된 코드 --%>
	<script>
		$(".btn.enroll").on("click",handlerClickBtnEnroll);
		$(".btn.findid").on("click",handlerClickBtnFindid);
		$(".btn.findpw").on("click",handlerClickBtnFindpw);
		
		function handlerClickBtnEnroll() {
			console.log("회원가입으로 이동합니다")
			location.href="<%=request.getContextPath()%>/enroll"; 
		}
		function handlerClickBtnFindid() {
			console.log("id찾기 화면으로 이동합니다.")
			location.href="<%=request.getContextPath()%>/findid"; 
		}	
		function handlerClickBtnFindpw() {
			console.log("id찾기 화면으로 이동합니다.")
			location.href="<%=request.getContextPath()%>/findpw"; 
		}	
		
	</script>

	<script>
      var jbResult = confirm( 'welcome' );
      document.write( jbResult );
    </script>



</body>


</html>