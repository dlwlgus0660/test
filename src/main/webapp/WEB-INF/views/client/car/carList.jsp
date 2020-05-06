<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>차량 리스트 조회</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
/* Remove the navbar's default rounded borders and increase the bottom margin */
.navbar {
	margin-bottom: 50px;
	border-radius: 0;
}

/* Remove the jumbotron's default bottom margin */
.jumbotron {
	margin-bottom: 0;
}

.com {
	align: center;
}

/* Add a gray background color and some padding to the footer */
footer {
	background-color: #f2f2f2;
	padding: 25px;
}
</style>
<script type="text/javascript">
	
	$(function() {
		/*제목 클리시 상세 페이지로 이동을 위한 처리 이벤트*/
		
		$(".goDetail" ).click(function() {
			var CAR_NAME = $(this).parents("div").attr("data-value");
			$("#CAR_MODEL_NUMBER").val(CAR_NAME);
			console.log("차량명 :" + CAR_NAME);
			console.log("차량명 :" + CAR_NAME);
			//상세 페이지 로 이동하기 위해 form 추가 (id:carDetail);
			$("#carDetail2").attr({
				"method": "GET",
				"action": "/car/Detail"
			});
			
			$("#carDetail2").submit();
		});

	});
</script>

</head>
<body>
<% /****************부탁하마**********태준아* el(표현언어 책 14장)
	*	태그로 변경 *****꼭********쉰만큼*****변경해라*****빠진만큼*****잔만큼*******
	** 끝까지 못 할거 같으면 주말에 나한테 연락줘 내가하마..... */
	String id = (String)session.getAttribute("id");

	//로그인이 되어있지 않다면,
	if(id==null){
		id="GUEST";
	} else {
		id = (String)session.getAttribute("id");
	}
%>
 <a href="#"><%= id %>님 반갑습니다.&nbsp;&nbsp;&nbsp;</a>
<!-- 상세페이지 이동을 위한 폼 -->
<form name="carDetail2" id="carDetail2">
<input type="hidden" id="CAR_MODEL_NUMBER" name="CAR_MODEL_NUMBER">
</form>


	<div class="jumbotron">
		<div class="container text-center">
			<h1>제주 렌터카</h1>
			<p>렌트카 조회 서비스</p>
		</div>
	</div>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/login/logout">로그아웃</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">홈</a></li>
					<li><a href="#">마이 페이지</a></li>
					<li><a href="#">Deals</a></li>
					<li><a href="#">Stores</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#"><span class="glyphicon glyphicon-user"></span>
							Your Account</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="con">
		<div class="panel-heading" align="center">
			<c:choose>
				<c:when test="${not empty carList}">
					<c:forEach var="car" items="${carList}" varStatus="status">
						<div class="col-sm-2">
							<div class="panel panel-danger" data-value="${car.CAR_MODEL_NUMBER}">
								<div class="goDetail panel-heading">${car.CAR_NAME}</div>
								<div class="panel-body" >
							<img src="${car.CAR_IMAGE}">
								</div>
								<div  class="goDetail panel-footer">${car.CAR_PRICE}</div>
							</div>
						</div>
				
					</c:forEach>
				</c:when>
				<c:otherwise>
					<div class="col-sm-4">
						<div class="panel panel-danger">
							<div class="panel-heading">등록 된 차량 없음</div>
							<div class="panel-body">
								<img src="https://placehold.it/150x80?text=IMAGE"
									class="img-responsive" style="width: 100%" alt="Image">
							</div>

							<div class="panel-footer">Buy 50 mobiles and get a gift
								card</div>
						</div>
					</div>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</body>
</html>