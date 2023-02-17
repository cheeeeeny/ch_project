<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tripwithme</title>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>
<body>

	<h1>Welcome</h1>
	
	DO YOU WANNA TRIP?<br>
	TRIP WITH ME!

	<section>
		<form action="login" method="post">
			id<input type="text" name="id"> 
			<br>
			pw<input type="password" name="passwd">
			<br>
			<button type="submit" class="btn login">로그인하기</button>
			<br>
			<button type="button" class="btn enroll">회원가입</button>
			<br>
			<button type="button" class="btn findid">ID 찾기</button>
			<button type="button" class="btn findpw">PW 찾기</button>
			
			<button type="button">CONTACT US</button> //todo
		</form>
	</section>


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
			console.log("비밀번호 찾기 화면으로 이동합니다.")
			location.href="<%=request.getContextPath()%>/findpw"; 
		}
	</script>

</body>
</html>