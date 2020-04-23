<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tag" uri="/WEB-INF/tld/custom_tag.tld"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 예약 내역</title>

<style type="text/css">
td{
text-align: center;
}
</style>

<script type="text/javascript" src="/resources/include/js/board.js"></script>
<!-- <script type="text/javascript">
	search = "<c:out value='${data.search}'/>";
	start_date = "<c:out value='${data.start_date}'/>";
	end_date = "<c:out value='${data.end_date}'/>";
	keyword = "<c:out value='${data.keyword}'/>";
</script> -->
</head>
<body>
	<h2 class="sub-header">회원 예약 내역</h2>
	<div class="table-responsive">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th class="tac">예약번호</th>
					<th class="tac">회원 ID</th>
					<th class="tac">차량 번호</th>
					<th class="tac">차량명</th>
					<th class="tac">예약자명</th>
					<th class="tac">예약 신청일</th>
					<th class="tac">예약 상태</th>
					<th class="tac">이용 금액</th>
					<th class="tac">대여 예상 일시</th>
				</tr>
			</thead>
			<tbody>
				<!-- 데이터출력 -->
				<c:choose>
					<c:when test="${not empty memResList }">
						<c:forEach var="RESERVATION" items="${memResList}">
							<tr>
								<td>${RESERVATION.rsv_number }</td>
								<td>${RESERVATION.mem_id }</td>
								<td>${RESERVATION.ren_car_number }</td>
								<td>${RESERVATION.car_name }</td>
								<td>${RESERVATION.rsv_name }</td>
								<td>${RESERVATION.rsv_apply_date }</td>
								<td>${RESERVATION.rsv_state }</td>
								<td>${RESERVATION.rsv_price }</td>
								<td>${RESERVATION.rsv_expected_date }</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="4" class="tac">예약 내역이 없습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
		<div class="well">
			<form class="form-inline" id="f_search">
				<input type="hidden" name="page" id="page" /> <input type="hidden"
					name="pageSize" id="pageSize" />

			<!-- 검색 리스트 추가 해야됌 -->

			<!-- 옵션박스 / 검색 -->
			<div class="form-group">
				<select id="search" name="search" class="form-control">
					<option value="b_title">예약번호</option>
					<option value="b_name">예약자명</option>
					<option value="b_content">예약 상태</option>
				</select> <input type="text" name="keyword" id="keyword" placeholder="예약번호, 예약자명, 예약 상태" />
				<button type="button" class="btn btn-primary" id="searchBtn">찾기</button>
			</div>
			</form>
		</div>
		<%-- <!-- 페이지 네비게이션 시작 -->
		<div id="boardPage">
		<tag:paging page="${param.page }" total="${total }" list_size="10"/>
		</div>
	</div> --%>
	</div>
</body>
</html>