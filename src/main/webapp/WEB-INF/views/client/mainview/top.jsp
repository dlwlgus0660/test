<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
	<meta name="description" content="">
	<meta name="autohr" content="">
	<link rel="icon" href="http://bootstrapk.com/examples/carouse1/favicon.ico">
	
		<!-- Bootstrap CSS -->
	<link href="../resources/css/bootstrap.min.css" rel="stylesheet">
	
	<!-- Custom styles for this template-->
	<link href="../resources/css/bootstrap.css" rel="stylesheet">
	
	<script src="../resources/include/js/ie-emulation-modes-warning.js"></script>
	<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	
	<script type="text/javascript">
		
	$(function() {
		// 로그인 버튼 클릭 시 처리 이벤트
		$("#loginBtn").click(function() {
		 	location.href = "/login/form";
		});
		
	});
	
	$(function() {
		// 회원가입 버튼 클릭 시 처리 이벤트
		$("#memberBtn").click(function() {
		 	location.href = "/member/form";
		});
		
	});
	
	</script>
	
	<!-- 세션을 이용한 로그인 처리 -->

<style>
/* .navbartop{
 background-color: #000000; color: #ffffff;
}
.navbar-toggler{
color: #ffffff;
} */
</style>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#"></a>
  
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/intro">제주렌터카 소개</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/car/List">렌터카</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="#">고객센터</a>
      </li>
      
       <li class="nav-item">
      <a href="/review/list">후기게시판</a>
      </li>
      
      <li class="nav-item dropdown">
        <c:if test="${id != null }">
        <a class="nav-link dropdown-toggle" href="/mypage/list" id="navbarDropdown" role="button" 
        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">마이페이지</a>
     	</c:if>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">내정보</a>
          <a class="dropdown-item" href="#">과거 이용 내역</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">내 문의 내역</a>
         
        </div>
      </li>
      
    </ul>
    <nav class="navbar navbar-light bg-light">
  <form class="form-inline">
  
  <c:if test="${id == null}">
    <button class="btn btn-outline-success" type="button" id="loginBtn">로그인</button>
    <button class="btn btn-outline-success" type="button" id="memberBtn">회원가입</button>
    <legend><strong>Guest 님 반갑습니다.</strong></legend>
    </c:if>
    <c:if test="${id != null}">
   	 <legend><strong>${id} 님 반갑습니다.</strong></legend>
   	 <a href="/login/logout"><button class="btn btn-outline-success" type="button" id="loginBtn">로그아웃</button></a> &nbsp;&nbsp;&nbsp;
   	 <!-- 정보수정 -->
    </c:if>
  </form>
</nav>
</div>
</nav>
</body>

