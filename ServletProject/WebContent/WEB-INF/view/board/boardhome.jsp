<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tripwithme : home</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<link rel="stylesheet" href="./WEB-INF/css/mystyle.css">
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



	<div class="container text-left">
		<button onclick="location.href='<%=request.getContextPath()%>/main'">back</button>
		<button onclick="location.href='<%=request.getContextPath()%>/mypage'">mypage</button>
		<button onclick="location.href='<%=request.getContextPath()%>/logout'">logout</button>
	</div>


	<div class="container text-center">
		<div class="row">
			<div>
				<br>
				<br>
			</div>

			<div class="col-2">
				<div>
					프로필사진<br> 닉네임<br> 아이디<br> 한줄소개<br> 등급

				</div>
				<nav>
					<div>
						<button class="boardmenu" onclick="location.href='<%=request.getContextPath()%>/boardhome'">홈</button>
					</div>
					<div>
						<button class="boardmenu" onclick="location.href='<%=request.getContextPath()%>/community'">모임</button>
					</div>
					<div>
						<button class="boardmenu" onclick="location.href='<%=request.getContextPath()%>/boardwrite'">글쓰기</button>
					</div>
					
				</nav>
			</div>

			<div class="col-7 ">
				<c:forEach items="${boardlist }" var="vo" varStatus="s">
					<tr>
						<td>
							<div class="card">
								<div class="card-header">
									<img src="..." class="img-fluid rounded-start" alt="...">
									<a>닉네임</a> <a href="#" class="btn btn-outline-light">더보기</a>
								</div>
								<div class="card-body">
									<h5 class="card-title">${vo.boardTitle}</h5>
									<p class="card-text">${vo.boardContent}여행가고싶다아주많이 ㅠ</p>
									<a>${boarDate}</a>
								</div>
							</div>
						</td>
					</tr>
				</c:forEach>
				<br>
				<nav aria-label="Page navigation example">
					<ul class="pagination justify-content-end">
						<li class="page-item disabled"><a class="page-link">Previous</a>
						</li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">Next</a>
						</li>
					</ul>
				</nav>
			</div>

			<div class="col-3">
				<button onclick="location.href='<%=request.getContextPath()%>/mall'">쇼핑몰바로가기</button>
				<br> <input type="text" placeholder="검색어를 입력하세요">
				<button type="submit">검색</button>
				<br> 인기게시글
				<button>더보기></button>
				<br> 인기게시글 나열
			</div>

		</div>
	</div>


	<script>
		function.boardHome(){
			location.href="<%=request.getContextPath()%>/boardhome";
		}
		function.community(){
			location.href="<%=request.getContextPath()%>/community";
		}
		function.boardWrite(){
			location.href="<%=request.getContextPath()%>/boardwrite";
		}
	</script>


</body>
</html>


