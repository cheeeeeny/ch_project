<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tripwithme : community</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
</head>
<body>

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"
		integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.3.js"></script>

	<button onclick="location.href='<%=request.getContextPath()%>/main'">back</button>
	<button onclick="location.href='<%=request.getContextPath()%>/mypage'">mypage</button>
	<button onclick="location.href='<%=request.getContextPath()%>/logout'">logout</button>

	<div>
		<br> 여백<br>
	</div>
	<div class="container text-center">
		<div class="row">
			<div class="card text-bg-primary mb-3">
			<div class="col-2">
				<div>
					프로필사진<br> 닉네임<br> 아이디<br> 한줄소개<br> 등급
				</div>
				<nav>
					<div class="boardmenu" onclick="boardHome">홈</div>
					<div class="boardmenu" onclick="community">모임</div>
					<div class="boardmenu" onclick="boardWrite">글쓰기</div>
				</nav>
			</div>
			<div class="col-7">
			<div>
				<form action=""></form>
				<div>
				<input type="text" placeholder="제목을 입력하세요">
				</div>
				<div>
				<input type="text" placeholder="내용을 입력하세요">
				</div>
				<div>
				
				</div>
				<div>
				<button type="submit" class="btn Submit">확인</button>
				<button type="button" class="btn Cancle">취소</button>
				<button type="submit" class="btn Delete">삭제</button>
				</div>
				
				
			</div>
			</div>
</div>
			<div class="col-3">
				<button onclick="location.href='<%=request.getContextPath()%>/mall'">쇼핑몰바로가기</button>
				<br>
				<nav class="navbar bg-body-tertiary">
					<div class="container-fluid">
						<form action="" method="post" class="d-flex" role="search">
							<input class="form-control me-2" type="search"
								placeholder="Search" aria-label="Search">
							<button class="btn btn-outline-success" type="submit">Search</button>
						</form>
					</div>
				</nav>

				인기게시글
				<button>더보기></button>
				<br> 인기게시글 나열
			</div>
		</div>
	</div>


	<script>
		$(".btn.cancle").on("click",BtnCancle);
		
		function BtnCancle() {
			console.log("취소하여 이전페이지로 이동")
			location.href="<%=request.getContextPath()%>
		/돌아가는페이지입력하기";
		}
	</script>



</body>
</html>