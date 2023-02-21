<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<title>마이페이지</title>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>

//todo
프로필사진변경
문의하기


mypage post 작업 필요합니당
------------------------------
<div class="container text-center">
  <div class="row">
    <div class="col-4">tripwithme</div>
    <div class="col-8">
    	<nav>
    		<button onclick="location.href='<%=request.getContextPath()%>/mypage'">mypage</button>
   			<button onclick="location.href='<%=request.getContextPath()%>/boardhome'">home</button>
    		<button onclick="location.href='<%=request.getContextPath()%>/logout'">logout</button>
    	</nav>
    </div>
  </div>
</div>

<div class="container text-center">
  <div class="row">
    <div class="col-4">
    	프로필사진<br> 닉네임<br>아이디<br>한줄소개<br>프로필사진변경<br>문의하기
    </div>
  <div class="col-8">
  
    
    	 <article>
    	 	<c:forEach items="${enroll }" var="vo" varStatus="s">
			<div>
				<button onclick="location.href='<%=request.getContextPath()%>/myinfo'">내프로필</button>	
			
			</div>
			<div>
				이름값도출 
				${vo.Id}
			</div>
			<div>
				별명
			</div>
			<div>
				성별
			</div>
			<div>
				전화번호
			</div>
		</article>
		<article>
			<div>
			<button onclick="location.href='<%=request.getContextPath()%>/infoupdate'">회원정보관리</button>	
				
			</div>
			<div>
				비밀번호 변경하기
			</div>
			<div>
				탈퇴하기
			</div>
		</article>
		<article>
			<div>
			<button onclick="location.href='<%=request.getContextPath()%>/myboard'">게시글관리</button>
			<div>
				내가 작성한 글
			</div>
			<div>
				내가 작성한 댓글
			</div>
			
			<div>
				저장한 게시글
			</div>
			</c:forEach >
		</article>
		 
  <%-- 	<form action="<%= request.getContextPath() %>/enroll" method="post" id="myinfoForm" name="myinfoForm">
     	<table>
       		<tr>
     			<td>이름</td>
     			<td>아이콘</td>
     			<td><input type="text" name="username" value="<%= name %>"></td>
     		</tr>
     		<tr>
     			<td>별명</td>
     			<td>아이콘</td>
     			<td><input type="text" name="nickname" value="<%= nickname %>"></td>
     		</tr>
     		<tr>
     			<td>성별</td>
     			<td>아이콘</td>
     			<td><input type="text" name="gender" value="<%= gender %>"></td>
     		</tr>
     		<tr>
     			<td>전화번호</td>
     			<td>아이콘</td>
     			<td><input type="text" name="phone" value="<%= id %>"></td>
     		</tr>  
     	</table>
    
   
		</form>  --%>
    </div>
  </div>
</div>

 

  

</body>
</html>