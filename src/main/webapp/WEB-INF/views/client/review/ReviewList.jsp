<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="../resources/images/favicon.png">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.12.0.min.js"></script>
<script type="text/javascript">
	$(function(){
		$(".a").click(function(){
			var number = $(this).parent().prev().val();
			$("#re").val(number);
			$("#rev").attr({
				"action" : "/review/detail",
				"method" : "get"
			});
			$("#rev").submit();
		});
		
	});
</script>
<title>제주렌터카 :: 후기게시판</title>
<link rel="icon" type="image/png" href="resources/images/favicon.png">
<jsp:include page="../mainview/header.jsp"/>
<jsp:include page="../mainview/top.jsp"/>
</head>
<style>
.one{
border:none;
border:1px solid gray;
}

.two{
border:none;
border:1px solid gray;
width:80%;
float:left;
}

.mypageMain{
width:95%;
height:700px;
align:center;
margin-left:10%;
}

.table1{
align:center;
margin-left:0%;
}


</style>

<body>
	<form id="rev">
	<input type="hidden" name="RE_NUMBER" id="re">
	</form>
<br>
&nbsp;&nbsp;&nbsp;메인페이지 > 후기게시판
<hr class="one">
<br>
<div class="mypageMain">
<h3>사용자 후기</h3>
<hr class="two">
<br>
<br>
<div class="table1">
	<table border="1">
			<tr>
				<th style="width: 200px">글번호</th>
				<th style="width: 200px">ID</th>
				<th style="width: 200px">제목</th>
				<th style="width: 200px">작성일</th>
				
				
			</tr>
			<c:if test="${id != null }">
			<c:choose>
				<c:when test="${not empty review_board }">
				<c:forEach	var="rev" items="${review_board }">
				<input type="hidden" id="num" value="${rev.RE_NUMBER }"/>
					<tr>
						<td class="a">${rev.RE_NUMBER}</td>
						<td class="a">${rev.MEM_ID}</td>
						<td class="a">${rev.RE_TITLE}</td>
						<td class="a">${rev.RE_REGDATE}</td>
					</tr>
				</c:forEach>
				</c:when>
				<c:otherwise>
					<td colspan="7">게시글이 존재하지 않습니다.</td>
				</c:otherwise>
			</c:choose>
			</c:if>
			<c:if test="${id == null }">
				<td colspan="7">로그인 되어있지 않습니다.</td>
			</c:if>
	</table>
	</div>
	</div>


</body>
<jsp:include page="../mainview/footer.jsp"/>
</html>