<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tag" uri="/WEB-INF/tld/custom_tag.tld"%>
<script type="text/javascript"
	src="/resources/include/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="/resources/include/js/common.js"></script>
<script type="text/javascript">
</script>

<div class="contentContainer">
	<div class="contentTit">
		<h2 class="sub-header">차량 조회</h2>
	</div>
	<!-----------------------리스트 시작---------------------------------->
	<div id="adminCarList" class="table-responsive">
		<table class="table table-bordered">
			<tr>
				<th data-value="car_model_number" class="order">모델 고유번호 <c:choose>
						<c:when
							test="${data.order_by == 'car_model_number' and data.order_sc=='ASC'}">▲</c:when>
						<c:when
							test="${data.order_by == 'car_model_number' and data.order_sc=='DESC'}">▼</c:when>
						<c:otherwise>▲</c:otherwise>
					</c:choose>
				</th>
				<th>차량명</th>
				<th>이미지</th>
				<th>차량옵션</th>
				<th data-value="car_price" class="order">대여가격 <c:choose>
						<c:when
							test="${data.order_by == 'car_price' and data.order_sc=='ASC'}">▲</c:when>
						<c:when
							test="${data.order_by == 'car_price' and data.order_sc=='DESC'}">▼</c:when>
						<c:otherwise>▲</c:otherwise>
					</c:choose></th>
				<th id="car_registe_date">등록일</th>
			</tr>
			<!------------------------------------------데이터 출력------------------------------------------->
			<c:choose>
				<c:when test="${not empty list}">
					<c:forEach var="row" items="${list}" varStatus="status">
						<tr class="tac" data-num="${row.car_model_number}">
							<td><a
								href="${path}/admin/carlist/carListDetail?car_model_number=${row.car_model_number}">${row.car_model_number}</a></td>
							<td>${row.car_name}</td>
							<td>${row.car_image}</td>
							<td>${row.car_option}</td>
							<td>${row.car_price}</td>
							<td>${row.car_registe_date}</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="6" class="tac">등록된 차량이 존재하지 않습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</table>
			<!-------------------------검색 기능 시작---------------------------------->
			<div id="boardSearch">
				<form id="c_search" name="c_search">
					<input type="hidden" id="page" name="page" value="${data.page}">
					<input type="hidden" id="order_by" name="order_by"
						value="${data.order_by}" /> <input type="hidden" id="order_sc"
						name="order_sc" value="${data.order_sc }" />
					<table summary="검색">
						<tr>
							<td id="btd1"><label>검색조건</label> <select id="search"
								name="search">
									<option value="all">전체</option>
							</select> <input type="text" name="keyword" id="keyword" placeholder="차종명" />&nbsp;&nbsp;
								<input type="button" value="검색" id="searchData"
								class="btn btn-primary" /></td>
							<td id="btd2">&nbsp;&nbsp;&nbsp;한페이지에&nbsp;&nbsp;&nbsp; <select
								id="pageSize" name="pageSize">
									<option value="1">1줄</option>
									<option value="2">2줄</option>
									<option value="3">3줄</option>
									<option value="5">5줄</option>
									<option value="7">7줄</option>
									<option value="10">10줄</option>
							</select>
							</td>
						</tr>
					</table>
				</form>
			</div>
			<!-------------------------검색 기능 끝------------------------------------->
	</div>
	<!----------------------------페이지 네비게이션 -------------------------------->
	<div id="boardPage">
		<tag:paging page="${param.page}" total="${total}"
			list_size="${data.pageSize}" />
	</div>
</div>

