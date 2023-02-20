<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호찾기</title>
</head>
<body>


	</div>
	<h1>tripwithme</h1>
	<div>
		<div>
			<button
				onclick="location.href='<%=request.getContextPath()%>/findid'">아이디찾기</button>
			<button
				onclick="location.href='<%=request.getContextPath()%>/findpw'">비밀번호찾기</button>
		</div>
		<form action="findid" method="post">
		<div>
			<div>이름</div>
			<div>
				<input type="text">
			</div>
			<div>전화번호</div>
			<div>
				<input type="text">
			</div>
			<div>아이디</div>
			<div>
				<input type="text">
			</div>
		</div>
		<div>
			<button type="submit">확인</button>
			<button type="button" onclick="location.href='<%=request.getContextPath()%>/home'">취소</button>
		</div>
		</form>
		<div>
			아이디를 잃어버리셨나요?
			<button>아이디찾기</button>
		</div>
</body>
</html>