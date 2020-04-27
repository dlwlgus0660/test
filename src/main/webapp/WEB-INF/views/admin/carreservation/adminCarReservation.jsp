<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tag" uri="/WEB-INF/tld/custom_tag.tld"%>

<style type="text/css">
td{
text-align: center;
}
</style>
<script type="text/javascript" src="/resources/include/js/board.js"></script>

	<h2 class="sub-header">차량 예약 관리</h2>
	<div class="table-responsive">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th class="tac">대여번호</th>
					<th class="tac">차량 번호</th>
					<th class="tac">차량명</th>
					<th class="tac">예약번호</th>
					<th class="tac">예약자명</th>
					<th class="tac">운전면허증</th>
					<th class="tac">실대여일시</th>
					<th class="tac">이용 상태</th>
					<th class="tac">실 반납 일시</th>
					<th class="tac">초과시간</th>
					<th class="tac">추가비용</th>
				</tr>
			</thead>
			<tbody>
				<!-- 데이터출력 -->
				<c:choose>
					<c:when test="${not empty carResList }">
						<c:forEach var="CARRESERVATION" items="${carResList}">
							<tr>
								<td><a href="${path}/admin/noticeboard/noticeDetail?nt_number=${CARRESERVATION.ren_number }">${CARRESERVATION.ren_number }</a></td>
								<td>${CARRESERVATION.ren_car_number }</td>
								<td>${CARRESERVATION.car_name }</td>
								<td>${CARRESERVATION.rsv_number }</td>
								<td>${CARRESERVATION.rsv_name }</td>
								<td>${CARRESERVATION.ren_license_number }</td>
								<td>${CARRESERVATION.ren_take_date }</td>
								<td>${CARRESERVATION.ren_state }</td>
								<td>${CARRESERVATION.ren_return_date }</td>
								<td>${CARRESERVATION.ren_overtime }</td>
								<td>${CARRESERVATION.ren_add_price }</td>
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
					<option value="b_name">대여번호</option>
					<option value="b_content">예약자명</option>
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
