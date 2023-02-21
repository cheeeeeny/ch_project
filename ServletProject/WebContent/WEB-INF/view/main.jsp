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
<title>Welcome Tripwithme</title>
</head>
<body>
	<!-- JavaScript Bundle with Popper -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.3.js"></script>

	<style>
body {
	background-color: #D2DEF1;
}
</style>

	<div class="container-fluid">
		<div class="container text-center">
			<div class="row">
				<div class="col"></div>

				<div class="col">
					<div class="container text-center">
						<div class="row" style="padding-top: 40px;">
							<div class="text-center">
								<p class="fw-bold fs-1 text-center ">Welcome</p>
								<br>
							</div>

							<div >

								<p class="fs-4 text-start">DO YOU WANNA TRIP?</p>

								<p class="fs-4 text-end" style="color: white;">TRIP WITH ME!</p>
							</div>
						</div>
					</div>
				</div>

				<div class="col"></div>
			</div>
		</div>
		<div class="container text-center">
			<div class="row" 
				 style="padding-top:15%; padding-bottom:15%; background-color:white;">
				<div class="col">
					<div>
						<button type="button" class="btn border-3"
							style="background: #a3c2f0; color: white; border-color: white; width: 100px;"
						location.href='<%=request.getContextPath()%>/mall'">
							쇼핑몰</button>
					</div>
				</div>
				<div class="col">
					<div>
						<button type="button" class="btn border-3"
							style="background: #a3c2f0; color: white; border-color: white; width: 100px;"
						href='<%=request.getContextPath()%>/boardhome'">
							게시판</button>
					</div>
				</div>
			</div>
		</div>


	</div>



</body>
</html>
