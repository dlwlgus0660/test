<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  
   <script type="text/javascript">
   $(function () {
		$('#mypage').click(function(){
			 location.href="/mypage/list"
			
		});	
		$('#main').click(function(){
			 location.href="/Reservation/from"
			
		});	
});

   </script>
</head>
<body>

	<div align="center">
	<div class="well" style="border-color: blue;">
				<h3>차량 예약 신청 완료 페이지</h3>
			</div>
			<img src="${reservation.CAR_IMAGE}">
			<h2>차량 대여 날짜</h2>
			<h3>인수일:${reservation.RSV_INSU}</h3>
			<div class="well">
			<h2>차량 반납 날짜</h2>
			<h3>반납일 : ${reservation.RSV_BANNAD}</h3>
		</div>
					<p style="color:red">※입금이 완료되면 예약이 완료 됩니다.</p>
		<div class="well">
			<h3>총 이용 금액 : ${reservation.RSV_PRICE}</h3>
		</div>
			<div class="well">
			<h3>계좌번호: 0000 – 1111 – 2222 – 3333</h3>
			<p>은행:OO은행</p>
			<p>예금주 : 김제주</p>
			<p style="font-style: red;">입금 기간: 예약 신청 시점으로 부터 1시간 이내</p>
		</div>
						<p style="color:red">※이 페이지는 한번만 표시되며, 입금 계좌번호 및 예약 상태는 마이페이지에서 확인 가능합니다.</p>
						
		<input type="button" id="mypage" name="mypage"  value="마이페이지" >
		<input type="button" id="main" name="main"  value="home" >
		
	</div>
</body>
</html>