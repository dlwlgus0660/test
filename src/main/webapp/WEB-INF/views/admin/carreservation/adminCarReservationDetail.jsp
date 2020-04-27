<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
	$(function() {
		//취소버튼 클릭 시
		$("#cancelBtn").click(function() {
			location.href = "/admin/carres/carRes";
		})
		//저장버튼 클릭 시
		$("#updateBtn").click(function() {
			if (confirm("저장하시겠습니까?")) {
				$("#detail").attr({
					"method" : "POST",
					"action" : "/admin/memreservation/adminMemReservationUpdate"
				})
				$("#detail").submit();
			}
		})
	})
</script>
<div class="contetnContainer">
	<h2 class="sub-header">차량 인수 인계 관리 상세 내역</h2>
	<div class="table-responsive">
		<form id="detail" name="detail" method="post">
			<input type="hidden" id="rsv_number" name="rsv_number"
				value="${vo.rsv_number}" />
			<table class="table table-bordered">
				<tr>
					<td>대여번호</td>
				</tr>
				<tr>
					<td>차량번호</td>

				</tr>
				<tr>
					<td>차량명</td>
				</tr>
				<tr>
					<td>예약번호</td>
				</tr>
				<tr>
					<td>운전면허증</td>
				</tr>
				<tr>
					<td>실 대여 일시</td>
				</tr>
				<tr>
					<td>이용 상태</td>
				</tr>
				<tr>
					<td>실 반납 일시</td>
				</tr>
				<tr>
					<td>초과 시간</td>
				</tr>
				<tr>
					<td>추가 비용</td>
				</tr>
			</table>
		</form>
		<div>
			<input type="button" value="취소" id="cancelBtn" class="btn btn-primary">
			<input type="button" value="저장" id="updateBtn" class="btn btn-primary">
		</div>

	</div>
</div>
