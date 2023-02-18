<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내프로필</title>
</head>
<body>
프로필사진변경 버튼만들기
이름.별명.성별.한줄소개 변경가능한 페이지

<button onclick="location.href='<%=request.getContextPath()%>/myinfo'">내프로필</button>	
<button onclick="location.href='<%=request.getContextPath()%>/infoupdate'">회원정보관리</button>	
<button onclick="location.href='<%=request.getContextPath()%>/myboard'">게시글관리</button>	

	<section>
		<form action="" method="post">
			<button type="submit" class="btn Submit">로그인하기</button>
			<br>
			<button type="button" class="btn Cancle">회원가입</button>
					</form>
	</section>
	 

   <script>
		$(".btn.submit").on("click",BtnSubmit);
		$(".btn.cancle").on("click",BtnCancle);
		
		function BtnSubmit() {
			console.log("수정된 정보 적용함")
			location.href="<%=request.getContextPath()%>/enroll"; 
		}
		function BtnCancle() {
			console.log("취소하여 이전페이지로 이동")
			location.href="<%=request.getContextPath()%>/돌아가는페이지입력하기"; 
		}	
		
	</script>
	


</body>
</html>