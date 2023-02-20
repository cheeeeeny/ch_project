<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>
<img href<%="./WEB-INF/css/img/logo.png"%>>

<h1>Tripwithme</h1>
<br>
<button onclick="location.href='<%=request.getContextPath()%>/mall'">쇼핑몰로 이동</button>
<button onclick="location.href='<%=request.getContextPath()%>/boardhome'">커뮤니티로 이동</button>







</body>
</html>
 