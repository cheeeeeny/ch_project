<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tirpwithme</title>
</head>
<body>
board home

<button onclick="location.href='<%=request.getContextPath()%>/main'">back</button>	 
<button onclick="location.href='<%=request.getContextPath()%>/mypage'">mypage</button>
<button onclick="location.href='<%=request.getContextPath()%>/logout'">logout</button>


</body>
</html>