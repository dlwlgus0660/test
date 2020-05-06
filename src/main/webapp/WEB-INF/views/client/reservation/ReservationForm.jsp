<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<title>차량 예약 페이지</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script type="text/javascript" src="/resources/include/js/common.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
/* Remove the navbar's default margin-bottom and rounded borders */
.navbar {
	margin-bottom: 0;
	border-radius: 0;
}

/* Set height of the grid so .sidenav can be 100% (adjust as needed) */
.row.content {
	height: 450px
}

/* Set gray background color and 100% height */
.sidenav {
	padding-top: 20px;
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */
footer {
	background-color: #555;
	color: white;
	padding: 15px;
}

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}
</style>
<script type="text/javascript">
	$(function() {
		
		//입금하기 버튼 클릭시 
		$("#insertFromBtn").click(function() {
			
			
			var Rsv_insu = $("#RSV_INSU").val();
	         var Rsv_bannad = $("#RSV_BANNAD").val();
	         
	         
	         var m1 = Date.parse(Rsv_insu);
	         //alert(m1);
	         var m2 = Date.parse(Rsv_bannad);
	         
	         var sep = (m2-m1)/1000;
	         
	         var min = 60;
	         var hour = min * 60;
	         var day = hour * 24;
	         
	         var sd = parseInt(sep/day);
	         
	         
			var car_price = ${reservation.CAR_PRICE};
	        var car_insurance;//일반보험
	        var car_adv_insurance;//고급보험
	        
	        
			var ins = $("#insurance option:selected").val();
			
	        var hah = (parseInt(car_price) + parseInt(ins)) * parseInt(sd);
	        //VO에 있는 rsv_price 값이 들어가나 확인 
	        document.getElementById("RSV_PRICE").value = hah;
	        alert(document.getElementById("RSV_PRICE").value);
	        
	    
	        
			/* //입력값 체크
			if (!chkSubmit($("#RSV_NUMBER_RESERVATION_SEQ"),"예약번호")){
				return;
			else if (!chkSubmit($("#MEM_ID"),"회원 ID"))
				return;
			else if (!chkSubmit($("#CAR_MODEL_NUMBER"),"차량 번호"))
				return;
			else if (!chkSubmit($("#RSV_NAME"),"예약자명"))
				return;
			else if (!chkSubmit($("#RSV_APPLY_DATE"),"예약신청일"))
				return;
			else if (!chkSubmit($("#RSV_STATE"),"예약상태"))
				return;
			else if (!chkSubmit($("#RSV_PRICE"),"이용금액"))
				return;
			else if (!chkSubmit($("#RSV_EXPECTED_DATE"),"대여 예상 일시"))
				return;
			else if (!chkSubmit($("#RSV_AMOUNT"),"수량"))
			} */
			$("#resinsertFrom").attr({
				"method" : "POST",
				"action" : "/Reservation/ReservationResult"
			});
			if($("#RSV_NAME").val() == ""){
				alert("이름을 입력하세요.");
				$("#RSV_NAME").focus();
				return false; 
				}
			if($("#RSV_CELLPHONE ").val().length==""){ 
				alert("핸드폰 번호를 입력해주세요!."); 
				$("#RSV_CELLPHONE").focus(); return false; 
				}
			if($("#RSV_INSU ").val().length==""){ 
				alert("인수일을 선택 해주세요!."); 
				$("#RSV_INSU").focus(); return false; 
				}
			if($("#RSV_BANNAD").val().length==""){ 
				alert("반납일을 선택 해주세요!."); 
				$("#RSV_BANNAD").focus(); return false; 
				}
			
			if(m1 >= m2){
				alert("반납일을 다시 선택 해주세요!");
				return false;
			}
			$("#resinsertFrom").submit();
		});

	});

	function noSpaceForm(obj) { // 공백사용못하게
		var str_space = /\s/; // 공백체크
		if (str_space.exec(obj.value)) { //공백 체크
			alert("해당 항목에는 공백을 사용할수 없습니다.");
			obj.focus();
			obj.value = obj.value.replace(' ', ''); // 공백제거
			return false;
		}

		// onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);"

		$("#name").bind("keyup", function() {
			re = /[~!@\#$%^&*\()\-=+_']/gi;
			var temp = $("#name").val();
			if (re.test(temp)) { //특수문자가 포함되면 삭제하여 값으로 다시셋팅
				alert("해당항목에는 특수 문자를 쓰실수 없습니다.")
				$("#name").val(temp.replace(re, ""));
			}
		});
		
		$("#haendeupon").bind("keyup", function() {
			re = /[~!@\#$%^&*\()\-=+_']/gi;
			var temp = $("#haendeupon").val();
			if (re.test(temp)) { //특수문자가 포함되면 삭제하여 값으로 다시셋팅
				alert("해당항목에는 특수 문자를 쓰실수 없습니다.")
				$("#haendeupon").val(temp.replace(re, ""));
			}
			

		});
		
	}
</script>
</head>
<body>
	<form class="resinsertFrom" id="resinsertFrom">
		<input type="hidden" id="CAR_NAME" name="CAR_NAME"
			value="${reservation.CAR_NAME}"> 
			<input type="hidden" id="RSV_PRICE" name="RSV_PRICE">
			<input type="hidden" name="CAR_MODEL_NUMBER" id="CAR_MODEL_NUMBER" value="${reservation.CAR_MODEL_NUMBER}">
			<input type="hidden" id="MEM_ID" name="MEM_ID" value="${sessionScope.ClientLogin.mem_id}"> 
			
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Logo</a>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#">About</a></li>
						<li><a href="#">Projects</a></li>
						<li><a href="#">Contact</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
								Login</a></li>
					</ul>
				</div>
			</div>

		<div class="col-sm-2 sidenav"></div>
		<div class="well">
			<div class="well" style="border-color: blue;">
				<h3>상품명 상품 금액</h3>
			</div>
			<h3>${reservation.CAR_NAME}-${reservation.CAR_FUEL}&nbsp;-제주렌트카
				&nbsp; 상품가격 ${reservation.CAR_PRICE}</h3> ${Reservationupdate.CAR_PRICE}
		</div>
		<div class="well" align="center">
			<c:set var="loginid" value="${sessionScope.ClientLogin.mem_id}"></c:set>
			<input type="text" id="mem_id" name="mem_id"  value="${sessionScope.ClientLogin.mem_id}" readonly="readonly"  >
			<c:set var="loginid" value="${sessionScope.ClientLogin.mem_name}"></c:set>
			<input type="text" id="mem_name" name="mem_name"  value="${sessionScope.ClientLogin.mem_name}" readonly="readonly"  >
			<c:set var="loginid" value="${sessionScope.ClientLogin.mem_cellphone}"></c:set>
			<input type="text" id="mem_cellphone" name="mem_cellphone"  value="${sessionScope.ClientLogin.mem_cellphone}" readonly="readonly"  >
		</div>
		<div class="well" align="center">
			<h3>
				보험료 : <select id="insurance">
					<option value="${reservation.CAR_INSURANCE}">일반 보험${reservation.CAR_INSURANCE}</option>
					<option value="${reservation.CAR_ADV_INSURANCE}">고급 보험 ${reservation.CAR_ADV_INSURANCE}</option>
				</select>
				인수일: <input type='date' id="RSV_INSU" min="2020-04-30" name='RSV_INSU' /> 
				반납일: <input type='date' id="RSV_BANNAD" min="2020-04-30" name='RSV_BANNAD' />
			</h3>
		</div>
		<div class="form-group">
			<label for="text">이용자명</label> <input type="text"
				class="form-control" id="RSV_NAME" name="RSV_NAME" maxlength="5"
				onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);"
				value="name"  required="required"/>
		</div>
		<div class="form-group">
			<label for="haendeupon">연락처</label> <input type="text"
				class="form-control" id="RSV_CELLPHONE" name="RSV_CELLPHONE"
				onkeyup="noSpaceForm(this);" onchange="noSpaceForm(this);" required="required">
		</div>
	</form>
	<div class="well" style="border-color: red;" align="center">
		<h3>예약 규정 및 약관</h3>
		<p>렌터카</p>
		<p>※ 자차 면책보험은 선택사항입니다. ※ 만 26세이상, 운전경력 1년이상의 조건에 부합하여야 렌터카 대여가</p>
		<p>가능합니다. (업체별 나이제한 상이) ※ 예약 확정 및 비용결제 후 취소할 경우 국내여행 표준약관 이외에
			제주도닷컴</p>
		<p>특별수수료 약관에 의거 취소 수수료가 부과됩니다. ※ 취소 및 환불요청은 고객센터 업무시간 유선으로만 가능합니다.</p>
		<p>업무시간 : 평일 09:00~12:00, 13:00~18:00 (점심시간, 토, 일, 공휴일은 변경&취소처리
			불가)</p>
		<p>※ 한정특가 기획상품은 환불불가 상품입니다. ■ 비수기 기간 (하단 성수기 기간을 제외한 모든 기간) - 사용일
			기준</p>
		<p>3일전 취소 100% 환불 - 사용일 기준 2~1일전 취소 : 전체비용의 50% 부과 - 여행 당일 변경/취소 시
			:</p>
		<p>전액 환불 불가 ■ 성수기 기간 (4/29~5/5, 7/24~8/15, 9/29~10/04,
			10/08~10/11,</p>
		<p>12/24~12/27, 12/30~01/01) - 사용일 기준 8일전 취소 100% 환불 - 사용일 기준
			7~5일전</p>
		<p>취소 : 전체비용의 30% 부과 - 사용일 기준 4~3일전 취소 : 전체비용의 50% 부과 - 사용일 기준
			2~1일전</p>
		<p>취소 : 전체비용의 70% 부과 - 여행 당일 변경/취소 시 : 전액 환불 불가 취소/환불 규정</p>
		<input type="checkbox"  checked="checked" name="y"><label>동의</label>
	</div>
	<div align="center">
		<input type="button" class="btn btn-primary active insertFromBtn"
			id="insertFromBtn" value="입금하기"> <input type="button"
			class="btn btn-primary active" id="databtn" value="취소">
			
	</div>
	<div class="col-sm-2 sidenav"></div>

	<footer class="container-fluid text-center">
		<p>Footer Text</p>
	</footer>
</body>
</html>