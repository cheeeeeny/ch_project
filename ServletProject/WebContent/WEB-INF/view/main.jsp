<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>
/로고를 삽입하세요/

<h1>쇼핑몰과 커뮤니티중 선택하세요</h1>
<br>
<button onclick="location.href='<%=request.getContextPath()%>/mall'">쇼핑몰로 이동</button>
<button onclick="location.href='<%=request.getContextPath()%>/boardhome'">커뮤니티로 이동</button>







</body>
</html>
 