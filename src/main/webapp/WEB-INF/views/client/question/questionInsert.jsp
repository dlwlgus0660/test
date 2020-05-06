<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의 글 작성</title>
<script type="text/javascript"
	src="/resources/include/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(function() {
	
	// 취소 버튼 클릭 시
	$("#qnaListBtn").click(function() {
		location.href = "/question/qnaboard";
	});

	// 문의글 삭제하기 버튼 클릭 시
	$("#insertBtn").click(function() {
		if(confirm("글을 등록 하시겠습니까?")){
			$("#qnaForm").attr({
				"method" : "POST",
				"action" : "/question/qnaInsert"
			});
			$("#qnaForm").submit();
			alert("등록 되었습니다.");
		}else{
			alert("취소 되었습니다.");
			location.href="/question/qnaboard";
		}
	});
});
</script>
</head>
<body>
	<h3>문의글 작성</h3>
	<form id="qnaForm">
		<table class="table table-bordered">
				<tr>
				<c:set var="loginid" value="${sessionScope.ClientLogin.mem_id}"/>
				<c:set var="loginname" value="${sessionScope.ClientLogin.mem_name}"/>
					<td><input type="hidden" value="${ loginid }" id="mem_id" name="mem_id"></td>
					<td><input type="hidden" value="${ loginname }" id="mem_name" name="mem_name"></td>
				</tr>
				<tr>
					<td><b>제목</b></td>
					<td colspan="5"><input type="text" name="inq_title" id="inq_title" value="" style="width:500px;"></td>
				</tr>
				<tr>
					<td><b>내용</b></td>
					<td colspan="5"><textarea name="inq_content" id="inq_content" style="height:500px;width:500px; resize: none;"></textarea></td>
				</tr>
			</table>
	</form>
	<div>
		<input type="button" value="작성완료" id="insertBtn">
		<input type="button" value="취소" id="qnaListBtn">
	</div>
</body>
</html>