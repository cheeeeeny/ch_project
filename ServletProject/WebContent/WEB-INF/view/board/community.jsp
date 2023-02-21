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
<title>tripwithme : 커뮤니티</title>
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
					<a class="navbar-brand" href="#"> <img
						src="/resources/image/파일이름" alt="" width="200" height="45"
						class="d-inline-block text-center">
					</a>
				</div>
				<div class="col"></div>
				<div class="col-3 text-end">
					<button type="button" class="btn"
						style="background: white; color: #a3c2f0;
						location.href='<%=request.getContextPath()%>/boardhome'">
						main page</button>
					<button type="button" class="btn"
						style="background: white; color: #a3c2f0;
						location.href='<%=request.getContextPath()%>/logout'">
						logout</button>
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
						<div style="height: 10px;">${vo.Name}</div>
						<div style="height: 10px;">${vo.id}</div>
						<div style="height: 60px;">
							<a class="text-center">한 줄 소 개</a>
						</div>
						<div class="col">
							<div>
								<button type="button" class="btn border-3"
									style="background: #a3c2f0; color: white; border-color: white; width: 100px;
						location.href='<%=request.getContextPath()%>/boardhome'">
									홈</button>
							</div>
							<br>
							<div>
								<button type="button" class="btn border-3"
									style="background: white; color: #a3c2f0; border-color: #a3c2f0; width: 100px;
						location.href='<%=request.getContextPath()%>/community'">
									모 임</button>
							</div>
							<br>
							<div>
								<button type="button" class="btn border-3"
									style="background: white; color: #a3c2f0; border-color: #a3c2f0; width: 100px;
						location.href='<%=request.getContextPath()%>/boardwrite'">
									글쓰기</button>
							</div>
							<br>
						</div>
					</div>
				</div>

			</div>
			<div class="col-7 text-center">
				<div class="col">
					<div class="row-3 border-bottom">
						<br>
						<div class="container-fluid">
							<div class="card">
								<div class="card-header">Notice</div>
								<div class="card-body row text-center text-center">
									<div class="col-2 text-top">
										<img>
										<p class="card-title text-center">아이디</p>
									</div>
									<div>
										<h5 class="col card-title text-center">${vo.boardTitle}
											공지제목이 보입니다</h5>
										<a href="#" class="btn btn-light">자세히 보기</a>
									</div>
								</div>
							</div>
						</div>
						<br>
					</div>
				</div>
				<br>
				<div class="row-10 text-center">
					<h3 class="" style="color: #a3c2f0;">커뮤니티</h3>
					<div class="text-center"
						style="padding-left: 10px; , padding-right: 10px;">
						<c:forEach items="${boardlist }" var="vo" varStatus="s">
							<div class="card mb-3 text-center">
								<div class="row g-0">
									<div class="col-md-4">
										<img src="..." class="img-fluid rounded-start" alt="...">
									</div>
									<div class="col-md-8">
										<div class="card-body">
											<h5 class="card-title">${vo.boardTitle }</h5>
											<p class="card-text">
												<small class="text-muted">Last updated 3 mins ago</small>
											</p>
										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>

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
				<div>쇼핑몰 바로가기 버튼 만들기</div>
				<div>
					<p class="text-center">이번주 인기 게시글</p>
					<button type="button" class="btn btn-outline-secondary text-end">더보기></button>
				</div>
				<br>
				<div>
					<div class="container text-center">
						<div class="row border">
							<div class="col">
								<p>$title</p>
								<p>$writer</p>
							</div>
							<div class="col">게시글사진</div>


						</div>
						<div class="row border">
							<div class="col">
								<p>$title</p>
								<p>$writer</p>
							</div>
							<div class="col">게시글사진</div>


						</div>
						<div class="row border">
							<div class="col">
								<p>$title</p>
								<p>$writer</p>
							</div>
							<div class="col">게시글사진</div>


						</div>
					</div>
				</div>

			</div>
		</div>


	</div>





</body>
</html>