<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tripwithme</title>

<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body class="text-center" >

<%-- 
 	<h1>Welcome</h1>
	
	DO YOU WANNA TRIP?<br>
	TRIP WITH ME!

 	<section>
		<form action="login" method="post">
			id<input type="text" placeholder="아이디" name="id" > 
			<br>
			pw<input type="password" placeholder="비밀번호" name="passwd" >
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
	--%>
	
	부트스트랩에서 가져옴
	<form action="login" method="post">
  	<div class="mb-3">
    	<label for="exampleInputEmail1" class="form-label">Id</label>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>	
</body>
</html>