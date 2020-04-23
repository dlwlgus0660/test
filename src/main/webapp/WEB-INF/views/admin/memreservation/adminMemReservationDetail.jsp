<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
</head>
<body>

<!-- 미완성 -->
	<h2 class="sub-header">회원 예약 상세 내역</h2>
	<div class="table-responsive">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th class="tac">ID</th>
					<th class="tac">회원명</th>
					<th class="tac">휴대폰번호</th>
					<th class="tac">예약자명</th>
					<th class="tac">예약자 핸드폰번호</th>
					<th class="tac">성별</th>
					<th class="tac">생년월일</th>
					<th class="tac">가입일</th>
					<th class="tac">예약 번호</th>
					<th class="tac">예약 신청일</th>
					<th class="tac">예약 상태</th>
					<th class="tac">차량명</th>
					<th class="tac">이용 금액</th>
					<th class="tac">차량 번호</th>
					<th class="tac">대여 예상 일시</th>
				</tr>
			</thead>
			<%-- <tbody>
				<c:choose>
					<c:when test="${not empty memberList }">
						<c:forEach var="member" items="${memberList }" varStatus="status">
							<tr class="tac" data-idx="${member.idx }">
								<td>${status.count }</td>
								<td><span class="goDetail">${member.userId }</span></td>
								<td>${member.userName }</td>
								<td>${member.email }</td>
								<td>${member.phone }</td>
								<td>${member.joinDate }</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="6" align="center">현재 회원이 존재하지 않습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody> --%>
		</table>
	</div>
</body>
</html>