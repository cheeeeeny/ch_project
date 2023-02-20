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
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</head>

<body class="container-fluid" style="background-color: #D2DEF1;">

	<body class="text-center" >


 	<h1>Welcome</h1>
	
	DO YOU WANNA TRIP?<br>
	TRIP WITH ME!

 	<section>
		<form action="login" method="post" class="box">
			아이디<br>
			<input type="text" placeholder="User_Id" name="id" > 
			<br>
			비밀번호<br>
			<input type="password" placeholder="Password" name="passwd" >
			<br>
			<button type="submit" class="btn login">로그인하기</button>
			<br>
			<button type="button" class="btn enroll">회원가입</button>
			<br>
			<button type="button" class="btn findid">ID 찾기</button>
			<button type="button" class="btn findpw">PW 찾기</button>
			<br>
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

<%-- 
	부트스트랩에서 가져옴
	<br>
	<form action="login" method="post">
  	<div class="mb-3">
    	<label for="exampleInputId1" class="form-label">Id</label>
    	<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    	<div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  	</div>
 	<div class="mb-3">
    	<label for="exampleInputPassword1" class="form-label">Password</label>
    	<input type="password" class="form-control" id="exampleInputPassword1">
  		Your password must be 8-20 characters long, contain letters and numbers, and must not contain spaces, special characters, or emoji.
 	</div>
  		<button type="submit" class="btn login">로그인하기</button>
			<br>
			<button type="button" class="btn enroll">회원가입</button>
			<br>
		<div>
			<button type="button" class="btn findid">ID 찾기</button>
			<button type="button" class="btn findpw">PW 찾기</button>
		</div>
			<p><button type="button">CONTACT US</button></p>
	</form>

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
	--%>







</html>