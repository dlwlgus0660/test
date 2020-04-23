<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="contentContainer">
	<div class="contentTit">
		<h2 class="sub-header">후기 게시판</h2>
	</div>
	<!-----------------------리스트 시작---------------------------------->
	<div id="reviewList" class="table-responsive">
		<table class="table table-bordered">
			<tr>
				<th>글 번호</th>
				<th>ID</th>
				<th>제목</th>
				<th>작성일</th>
			</tr>
			<c:choose>
				<c:when test="${not empty list}">
					<c:forEach var="row" items="${list}">
						<tr>
							<td><a
								href="${path}/admin/reviewboard/reviewDetail?re_number=${row.re_number}">${row.re_number}</a></td>
							<td>${row.mem_id}</td>
							<td>${row.re_title}</td>
							<td>${row.re_regdate}</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="5" class="tac">등록된 후기글이 존재하지 않습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</table>
		<div class="well">
			<input type="hidden" name="page" id="page" /> <input type="hidden"
				name="pageSize" id="pageSize" />

			<div class="form-group">
				<input type="text" name="keyword" id="keyword" placeholder="ID/차종/제목/내용" />
				<input type="button" class="btn btn-primary" id="searchBtn"
					value="검색">
			</div>
		</div>
	</div>
</div>

