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
					"action" : "/admin/carres/adminCarReservationUpdate"
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
			<input type="hidden" id="ren_number" name="ren_number"
				value="${vo.ren_number}" />
			
			<table class="table table-bordered">
				<tr>
					<td style="width: 200px;"><b>대여번호</b></td>
					<td>${vo.ren_number}</td>
				</tr>
				<tr>
					<td><b>차량번호</b></td>
					<td><input type="text" id="ren_car_number" name="ren_car_number" value="${vo.ren_car_number}"></td>
				</tr>
				<tr>
					<td><b>차량명</b></td>
					<td>${vo.car_name}</td>
				</tr>
				<tr>
					<td><b>예약번호</b></td>
					<td>${vo.rsv_number}
				</tr>
				<tr>
					<td><b>운전면허증</b></td>
					<td><input type="text" id="ren_license_number" name="ren_license_number" value="${vo.ren_license_number}"></td>
				</tr>
				<tr>
					<td><b>실 대여 일시</b></td>
					<td><input type="text" id="ren_take_date" name="ren_take_date" value="${vo.ren_take_date}"></td>
				</tr>
				<tr>
					<td><b>이용 상태</b></td>
					<td><select id="ren_state" name="ren_state">
							<option value="입금완료(인수대기)" <c:if test="${vo.ren_state == '입금완료(인수대기)' }">selected</c:if>>입금완료(인수대기)</option>
							<option value="렌트중"  <c:if test="${vo.ren_state == '렌트중' }">selected</c:if>>렌트중</option>
							<option value="반납완료"  <c:if test="${vo.ren_state == '반납완료' }">selected</c:if>>반납완료</option>
					</select></td>
				</tr>
				<tr>
					<td><b>실 반납 일시</b></td>
					<td><input type="text" id="ren_return_date" name="ren_return_date" value="${vo.ren_return_date}"></td>
				</tr>
				<tr>
					<td><b>초과 시간</b></td>
					<td><input type="text" id="ren_overtime" name="ren_overtime" value="${vo.ren_overtime}"></td>
				</tr>
				<tr>
					<td><b>추가 비용</b></td>
					<td><input type="number" id="ren_add_price" name="ren_add_price" value="0" ></td>
				</tr>
			</table>
		</form>
		<div>
			<input type="button" value="취소" id="cancelBtn" class="btn btn-primary">
			<input type="button" value="저장" id="updateBtn" class="btn btn-primary">
		</div>

	</div>
</div>
