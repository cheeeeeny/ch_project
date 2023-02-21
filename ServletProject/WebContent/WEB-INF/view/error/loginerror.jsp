<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>
	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
	
	<div class="text-center" >
		<div class="alert alert-danger" role="alert">
		LOGIN Error : 아이디또는 비밀번호를 확인해주세요</div>
		<h4 style="padding-top:15%;">로그인 되지 않았습니다. 로그인 페이지로 이동하세요.</h4><br>
		<button type="button" class="btn btn-outline-primary text-center"
			href="<%=request.getContextPath()%>/home">로그인페이지로 돌아가기</button>
	</div>

	<script>
	// = var errMsg = '${errorMsg}';  *'따옴표 꼭 써주기'
	var errMsg = '<%=(String) request.getAttribute("errorMsg")%>
		';
		alert(errMsg);
	</script>

</body>
</html>