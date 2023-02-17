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

쇼핑몰과 커뮤니티중 선택하세요- 바로가기만들기

<section>
		<form action="main" method="post">
		<button type="button" class="btn mall">쇼핑몰</button>
		<button type="button" class="btn board">커뮤니티</button>
		</form>
</section>

<script>
		$(".btn.mall").on("click",ClickBtnMall);
		$(".btn.board").on("click",ClickBtnBoard);

		function ClickBtnMall() {
			console.log("쇼핑몰로 이동합니다.")
			location.href="<%=request.getContextPath()%>/mall"; 
		}	
		function ClickBtnBoard() {
			console.log("커뮤니티로 이동합니다.")
			location.href="<%=request.getContextPath()%>/boardhome"; 
		}
	</script>







</body>
</html>