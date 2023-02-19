<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>tirpwithme</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
</head>
<body>
board home

<button onclick="location.href='<%=request.getContextPath()%>/main'">back</button>	 
<button onclick="location.href='<%=request.getContextPath()%>/mypage'">mypage</button>
<button onclick="location.href='<%=request.getContextPath()%>/logout'">logout</button>
<div>
<br> 여백<br>
</div>
<div class="container text-center">
  <div class="row">
    <div class="col">
      <div>
      	프로필사진
      	닉네임
      	아이디
      	한줄소개
      	등급
      </div>
      <nav>
      	<div class="boardmenu" onclick="boardHome">홈</div>
      	<div class="boardmenu" onclick="community">모임</div>
      	<div class="boardmenu" onclick="boardWrite">글쓰기</div>
      </nav>
    </div>
    <div class="col">
      <div>
      공지게시판으로 고정
      </div>
      <div>
       게시글 보이는 공간 - 스크롤
      
         
        	
    
    <hr>
      </div>
     
    </div>
    <div class="col">
      <button onclick="location.href='<%=request.getContextPath()%>/mall'">쇼핑몰바로가기</button><br>
      인기게시글 <button>더보기></button><br>
      인기게시글 나열
    </div>
  </div>
</div>


	<script>
		function.boardHome(){
			location.href="<%= request.getContextPath()%>/boardhome";
		}
		function.community(){
			location.href="<%= request.getContextPath()%>/community";
		}
		function.boardWrite(){
			location.href="<%= request.getContextPath()%>/boardwrite";
		}
	</script>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.3.js"></script>
</body>
</html> 


