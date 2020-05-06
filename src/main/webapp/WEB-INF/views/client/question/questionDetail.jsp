<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="/resources/include/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	$(function() {
		
		//목록으로 버튼 클릭 시
		$("#qnaListBtn").click(function() {
			location.href = "/question/qnaboard";
		});

		// 문의글 삭제하기 버튼 클릭 시
		$("#deleteBtn").click(function() {
			confirm("삭제하시겠습니까?");
		{	
				$("#detail").attr({
					"method" : "POST",
					"action" : "/question/qnaListDelete"
				});
				$("#detail").submit();
				alert("삭제되었습니다.");
		}
		});
	});
</script>
</head>
<body>
	<div class="contetnContainer">
		<h2 class="sub-header">문의 게시판 상세 조회</h2>
		<div class="table-responsive">
			<form id="detail">
			<input type="hidden" id="inq_number" name="inq_number"
				value="${qnavo.inq_number}" />
			<table class="table table-bordered">
				<tr>
					<td>글번호</td>
					<td>${qnavo.inq_number}</td>
					<td>ID</td>
					<td>${qnavo.mem_id}</td>
					<td>작성자명</td>
					<td>${qnavo.mem_name}</td>
					<td>작성일</td>
					<td>${qnavo.inq_regdate}</td>
				</tr>
				<tr>
					<td>제목</td>
					<td colspan="5">${qnavo.inq_title}</td>
				</tr>
				<tr>
					<td>내용</td>
					<td colspan="5">${qnavo.inq_content}</td>
				</tr>
				<tr>
					<td>댓글 답변</td>
					<td colspan="4">${qnavo.inq_reply}</td>
				</tr>
			</table>
			</form>
			<div>
				<input type="button" value="목록으로" id="qnaListBtn"
					class="btn btn-primary"> &nbsp;&nbsp;&nbsp;&nbsp;
					<c:set var="loginid" value="${sessionScope.ClientLogin.mem_id}" />
					<c:if test="${ loginid eq qnavo.mem_id }">
					<input type="button" value="삭제하기" id="deleteBtn" class="btn btn-primary">
					</c:if>
			</div>
		</div>
	</div>
</body>
</html>