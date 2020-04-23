<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="contentTit">
	<h2 class="sub-header">회원 리스트</h2>
</div>

<!-- -------------------------리스트 시작 ----------------------------->
<div id="adminMemlist" class="table-responsive">
	<table class="table table-bordered">
		<tr>
			<th id="mem_id">아이디</th>
			<th id="mem_name">이름</th>
			<th id="mem_gender">성별</th>
			<th id="mem_birthday">생년월일</th>
			<th id="mem_cellphone">휴대폰 번호</th>
			<th id="mem_state">회원상태</th>
			<th id="mem_joindate">가입일</th>
			<c:choose>
				<c:when test="${not empty memList}">
					<c:forEach var="row" items="${memList}">
						<tr>
							<td><a
								href="${path}/admin/memberlist/memberListDetailForm?mem_id=${row.mem_id}">${row.mem_id}</a></td>
							<td>${row.mem_name}</td>
							<td>${row.mem_gender}</td>
							<td>${row.mem_birthday}</td>
							<td>${row.mem_cellphone}</td>
							<td>${row.mem_state}</td>
							<td>${row.mem_joindate}</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="7" class="tac">등록된 회원이 존재하지 않습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>
	</table>
	<div class="well">
		<input type="hidden" name="page" id="page" /> <input type="hidden"
			name="pageSize" id="pageSize" />

		<div class="form-group">
			<input type="text" name="keyword" id="keyword" placeholder="회원명" />
			<input type="button" class="btn btn-primary" id="searchBtn"
				value="검색">
		</div>
	</div>
</div>

