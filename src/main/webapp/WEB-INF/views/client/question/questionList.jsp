<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="contentContainer">
	<div class="contentTit">
		<h2 class="sub-header">문의 게시판</h2>
	</div>
	<div> <a href="/question/qnainsertform" style="float:right"><button>글작성</button> </a></div>
	<!-----------------------리스트 시작---------------------------------->
	<div id="qnaList" class="table-responsive">
		<table class="table table-bordered">
			<tr>
				<th id="inq_number" style="width: 200px;">글 번호</th>
				<th id="mem_id" style="width: 200px;">ID</th>
				<th id="mem_name" style="width: 200px;">작성자명</th>
				<th id="inq_title" style="width: 200px;">제목</th>
				<th id="inq_regdate" style="width: 200px;">작성일</th>
				<th id="inq_state" style="width: 200px;">답변 여부</th>
			</tr>
			<c:choose>
				<c:when test="${not empty list}">
					<c:forEach var="row" items="${list}">
						<tr>
							<td><a
								href="${path}/question/qnaDetail?inq_number=${row.inq_number}">${row.inq_number}</a></td>
							<td>${row.mem_id}</td>
							<td>${row.mem_name}</td>
							<td>${row.inq_title}</td>
							<td>${row.inq_regdate}</td>
							<td>${row.inq_state}</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="6" class="tac">등록된 문의글이 존재하지 않습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</table>
		<div class="well">
			<input type="hidden" name="page" id="page" /> <input type="hidden"
				name="pageSize" id="pageSize" />
			
			<div class="form-group">
				<input type="text" name="keyword" id="keyword" placeholder="제목/내용/ID" />
				<input type="button" class="btn btn-primary" id="searchBtn"
					value="검색">
			</div>
		</div>
	</div>
</div>
</body>
</html>