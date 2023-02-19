<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
로그인 에러 발생!!! 
> 다시 로그인페이지로
//todo alert창 표시하기

<script>
	// = var errMsg = '${errorMsg}';  *'따옴표 꼭 써주기'
	var errMsg = '<%= (String) request.getAttribute("errorMsg")%>';
	alert(errMsg);
</script>
	<h4>로그인 되지 않았습니다. 로그인 페이지로 이동하세요.</h4>
	<a href="<%=request.getContextPath()%>/login">로그인페이지이동</a>


</body>
</html>