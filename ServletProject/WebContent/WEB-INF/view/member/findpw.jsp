<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<title>비밀번호 찾기</title>
</head>
<body>
	<!-- JavaScript Bundle with Popper -->
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
								<p class="fw-bold fs-1 text-center ">Tripwithme</p>
								<br>
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
					<form action="findpw" method="post" class="container"
						style="background: white; padding-left: 15%; padding-right: 15%; padding-top: 10%;">
						<button type="button" class="btn findid btn border-3"
							style="background: white; color: #a3c2f0; border-color: #a3c2f0;">ID
							찾기</button>
						<button type="button" class="btn findpw btn border-3"
							style="background: white; color: #a3c2f0; border-color: #a3c2f0;">PW
							찾기</button>

						<div class="text-center" style="padding-top: 15%;">
							<h5>비밀번호찾기</h5>
							<p>이름,이메일,아이디를</p>
							<p>입력해주세요</p>

						</div>

						<input type="text" class="form-control" id="name"
							placeholder="이름을 입력해주세요"> <br> <input type="text"
							class="form-control" id="email" placeholder="이메일을입력해주세요"><br>
						<input type="text" class="form-control" id="id"
							placeholder="아이디를입력해주세요"> <br>
						<div>
							<button type="submit" class="btn login">확인</button>
							<button type="button" class="btn back">취소</button>
						</div>
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
					<div>
						<a>아이디를 잃어버리셨나요?</a>
						<button type="button" class="btn findid">아이디찾기</button>
					</div>
				</div>
				<div class="col"></div>
			</div>
		</div>
	</div>

	<script>
		$(".btn.findid").on("click",handlerClickBtnFindid);
		$(".btn.findpw").on("click",handlerClickBtnFindpw);
		
		function handlerClickBtnFindid() {
			console.log("id찾기 화면으로 이동합니다.")
			location.href="<%=request.getContextPath()%>/findid"; 
		}	
		function handlerClickBtnFindpw() {
			console.log("비밀번호 찾기 화면으로 이동합니다.")
			location.href="<%=request.getContextPath()%>/findpw";
		}
	</script>
	
	<script>
		$(".btn.findid").on("click",handlerClickBtnFindid);
		$(".btn.findpw").on("click",handlerClickBtnFindpw);
		
		function handlerClickBtnFindid() {
			console.log("id찾기 화면으로 이동합니다.")
			location.href="<%=request.getContextPath()%>/findid"; 
		}	
		function handlerClickBtnFindpw() {
			console.log("id찾기 화면으로 이동합니다.")
			location.href="<%=request.getContextPath()%>/findpw"; 
		}	
		
	</script>








</body>
</html>

