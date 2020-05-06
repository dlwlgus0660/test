<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제주렌터카 :: 공지사항</title>
<link rel="icon" type="image/png" href="../resources/images/favicon.png">
<link rel="stylesheet" href="/jejuRentCarTest/src/main/webapp/resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/jejuRentcar.css">
</head>

<style>
</style>

<jsp:include page="../mainview/header.jsp"/>
<jsp:include page="../mainview/top.jsp"/>

<body>
<div class="contetnContainer">
	<h2 class="sub-header">공지사항 상세 조회</h2>
	<div class="table-responsive">
		<form id="detail" name="detail" method="post">
			<input type="hidden" id="inq_number" name="inq_number"
				value="${vo.inq_number}" />
			<table class="table table-bordered">
				<tr>
					<td>글번호</td>
					<td>${vo.inq_number}</td>
					<td>작성일</td>
					<td>${vo.inq_regdate}</td>
				</tr>
				<tr>
					<td>제목</td>
					<td colspan="5">${vo.inq_title}</td>
				</tr>
				<tr>
					<td>내용</td>
					<td colspan="5">${vo.inq_content}</td>
				</tr>
			</table>
		</form>
		<div>
			<input type="button" value="목록으로" id="qnaListBtn"
				class="btn btn-primary">
		</div>
	</div>
</div>
</body>

<jsp:include page="../mainview/footer.jsp"/>
</html>