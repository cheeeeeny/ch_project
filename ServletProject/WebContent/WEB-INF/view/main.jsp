<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
</head>

<body class="container-fluid text-center" style="background-color: #D2DEF1;">
<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
<img href<%="./WEB-INF/css/img/logo.png"%>>
<div style="padding-top:10%;">
</div>
<h1>Tripwithme</h1>
<br>
<button style="background: white; color: #a3c2f0; border-color: #a3c2f0; width: 300px;"
onclick="location.href='<%=request.getContextPath()%>/mall'">쇼핑몰로 이동</button>
<button style="background: white; color: #a3c2f0; border-color: #a3c2f0; width: 300px;"
onclick="location.href='<%=request.getContextPath()%>/boardhome'">커뮤니티로 이동</button>


</body>
</html>
 