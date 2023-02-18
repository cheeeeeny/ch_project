<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypage</title>
</head>
<body>
마이페이지

//todo
프로필사진변경
문의하기

<button onclick="location.href='<%=request.getContextPath()%>/boardhome'">home</button>	 
<button onclick="location.href='<%=request.getContextPath()%>/logout'">logout</button>	 

	<div>
		내프로필
		<button onclick="location.href='<%=request.getContextPath()%>/myinfo'">내 프로필</button>	 
	</div>
	<div>
		회원정보관리
		<button onclick="location.href='<%=request.getContextPath()%>/infoupdate'">회원정보관리</button>	 
	</div>
	<div>
		게시글관리
		<button onclick="location.href='<%=request.getContextPath()%>/myboard'">게시글관리</button>	 
	</div>

</body>
</html>