<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<title>tripwithme : 게시판</title>
</head>
<body>
	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.3.js"></script>






	<!-- 페이지 화면 구성 -->
	<div>
		<nav class="navbar" style="background-color: #D2DEF1;">
			<div class="container-fluid">
				<div class="col-3">
					<a class="navbar-brand" href="#"> <img src=""
						width="200" height="45" class="d-inline-block text-center">
					</a>
				</div>
				<div class="col"></div>
				<div class="col-3 text-end">
					<button type="button" class="btn"
						style="background: white; color: #a3c2f0;"
						onclick="location.href='<%=request.getContextPath()%>/mypage'">my page</button>
					<button type="button" class="btn"
						style="background: white; color: #a3c2f0;"
						onclick="location.href='<%=request.getContextPath()%>/logout'">logout</button>

				</div>
			</div>
		</nav>
	</div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-2 text-center">
				<div class="col">
					<div class="col">
						<div style="height: 20px;"></div>
						<div>
							<img style="height: 20px;" class="img-fluid " src="" alt="">
						</div>
						<div style="height: 50px;">
							<img class="img-fluid rounded-circle" src="" alt=""> <a>프로필사진</a>
						</div>
						<c:forEach items="${memberlist }" var="vo">
							<div style="height: 10px;">${vo.Name}</div>
							<div style="height: 10px;">${vo.Id}</div>
							<div style="height: 60px;">
								<a class="text-center">한 줄 소 개</a>
							</div>
						</c:forEach>
						<div class="col">
							<div>
								<button type="button" class="btn border-3"
									style="background: #a3c2f0; color: white; border-color: white; width: 100px;"
									onclick="location.href='<%=request.getContextPath()%>/boardhome'">
									홈</button>
							</div>
							<br>
							<div>
								<button type="button" class="btn border-3"
									style="background: white; color: #a3c2f0; border-color: #a3c2f0; width: 100px;"
									onclick="location.href='<%=request.getContextPath()%>/community'">
									모임</button>
							</div>
							<br>
							<div>
								<button type="button" class="btn border-3"
									style="background: white; color: #a3c2f0; border-color: #a3c2f0; width: 100px;"
									onclick="location.href='<%=request.getContextPath()%>/boardwrite'">
									글쓰기</button>
							</div>
							<br>
						</div>
					</div>
				</div>

			</div>
			<div class="col-7 text-center">
				<div>
					<form action="boardwrite" method="post">
						<table border="1" cellspacing="0" width="300" cellpadding="5">
							<tr>
								<th>작성자</th>
								<td><input type="text" name="boardWriter"
									placeholder="제목을 입력하세요"></td>
							</tr>
							<tr>
								<th>글제목</th>
								<td><input type="text" name="boardTitle"></td>
								<th>
									<div class="dropdown">
										<a class="btn dropdown-toggle" href="#" role="button"
											data-bs-toggle="dropdown" aria-expanded="false"> 카테고리 </a>

										<ul class="dropdown-menu">
											<li><a class="dropdown-item" href="#">공지사항</a></li>
											<li><a class="dropdown-item" href="#">일반게시글</a></li>
											<li><a class="dropdown-item" href="#">모임</a></li>
										</ul>
									</div>
								<th>
							</tr>
							<tr>
								<th>글내용</th>
								<td><textarea rows="7" cols="25" name="boardContent"
										placeholder="내용을 입력하세요"></textarea></td>
							</tr>
							<tr>
								<td colspan="2" align="center">
									<button type="submit" class="btn Submit">확인</button>
									<button type="button" class="btn Cancle"
										onclick="history.back()">취소</button>
									<button type="reset" class="btn Reset">다시작성하기</button>
								</td>
							</tr>
						</table>
					</form>
				</div>
			</div>
			<div class="col-3 text-center">
				<br>
				<div>
					<form action="search" method="post" class="d-flex" role="search">
						<input class="form-control me-2" type="search"
							placeholder="Search" aria-label="Search">
						<button class="btn btn-outline-success" type="submit">Search</button>
					</form>
				</div>
				<div class="col" style="padding-top: 20px;">
					<button type="button" class="btn btn-outline-primary" disabled>쇼핑몰바로가기</button>
				</div>
				<div>
					<p class="text-center" style="padding-top: 20px;">이번주 인기 게시글</p>
				</div>
				<div class="text-end">
					<button type="button" class=" btn btn-outline-secondary"
						style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;">더보기></button>
				</div>

				<br>
				<div>
					<div class="container text-center">
						<div class="row border rounded">
							<div class="col">
								<p>인기게시글1</p>
								<p>$작성자</p>
							</div>
							<div class="col">
								<img
									src="https://cdn.pixabay.com/photo/2017/08/06/12/06/people-2591874__340.jpg"
									class="img-fluid" alt="...">
							</div>
						</div>
						<br>
						<div class="row border rounded">
							<div class="col">
								<p>인기게시글2</p>
								<p>작성자</p>
							</div>
							<div class="col">
								<img
									src="https://cdn.pixabay.com/photo/2017/06/05/11/01/airport-2373727__340.jpg"
									class="img-fluid" alt="...">
							</div>
						</div>
						<br>
						<div class="row border rounded">
							<div class="col">
								<p>인기게시글3</p>
								<p>작성자</p>
							</div>
							<div class="col">
								<img
									src="https://media.istockphoto.com/id/1361407707/ko/%EC%82%AC%EC%A7%84/%EC%95%BC%EC%9E%90-%EC%88%98-%EC%9E%8E-%EC%95%84%EB%9E%98-%EC%97%AC%EC%9E%90.jpg?b=1&s=170667a&w=0&k=20&c=XaCKNLuqxFl9GyeNqtnwVwkWvfbgL0B9v-u7eO6XEsk="
									class="img-fluid" alt="...">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




	<!-- Script-->


</body>
</html>

