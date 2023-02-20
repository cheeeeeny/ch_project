<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>	
<%--  test
<form action="enroll" method="post">
id<input type="text" name="id" class="input id"><br>
pw<input type="password" name="pw" class="passwd_1"><br>
pw확인<input type="password" name="pw2" class="passwd_2"><br>
이름<input type="text" name="name" ><br>
별명<input type="text" name="nickname"><br>
생년월일<input type="text" name="birth"><br>
전화번호<input type="text" name="phone"><br>
성별<br>
남자 <input type="radio" name="gender" value="M">
여자 <input type="radio" name="gender" value="W"><br>
이메일<input type="text" name="emial"><br>
<button type="submit" class="enroll submit">가입하기</button>
</form>

<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<script>
$('.input_id'),focusout(funcion(){
	let userID = $('.input_id').val(); // input_id에 입력되는값
	
	$ajax({
		url : "IdCheckService",
		type : "post",
		data : {userId: userId},
		dataType : 'json',
		sucess : function(result){
			if(result == 0) {
				$(checkID).html('사용할 수 없는 아이디입니다.');
				$(checkID).attr('color','red');
			} else {
				$(checkID).html('사용할 수 있는 아이디입니다.');
				$(checkID).attr('color','green');
				
			}
		},
		error : funtion({
			alert("서버요청실패") 
			}
	})
})





$(".enroll.submit").on("click",ClickEnrollSubmt)

function ClickEnrollSubmt() {
	console.log("회원가입이 완료되었습니다. 로그인 페이지로 이동합니다.")
	location.href="<%=request.getContextPath()%>/home"; 
}
</script>

--%>

	
	<div class="container text-center">
		<h1>tripwithme</h1>
		회원가입페이지입니다.
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
 