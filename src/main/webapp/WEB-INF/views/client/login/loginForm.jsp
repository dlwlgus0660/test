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
		// 로그인 버튼 클릭 시 처리 이벤트
		$("#memberLoginBtn").click(function() {
			$("#loginForm").attr({
				"method" : "POST",
				"action" : "/login/goin"
			});

			$("#loginForm").submit();
			

		});
		// 회원가입 버튼 클릭 시 처리 이벤트
		$("#memberformBtn").click(function() {
			location.href = "/member/form";
		});

		// 아이디 비밀 번호 찾기 클릭 시 처리 이벤트
		$("#idpwfind").click(function() {
			location.href = "/login/idpwfind";
		});
	});
</script>
</head>
<body>
	<form id="loginForm">
		<label for="mem_id">아이디</label> <input type="text" id="mem_id"
			name="mem_id" placeholder="사용자 아이디" autofocus="autofocus"> <label
			for="mem_password">비밀번호</label> <input type="password"
			id="mem_password" name="mem_password" placeholder="비밀번호"> <input
			type="button" value="로그인" id="memberLoginBtn" /> <input
			type="button" value="회원가입" id="memberformBtn"> <input
			type="button" value="Id/Pw 찾기" id="idpwfind">
		<c:if test="${msg=='failure'}">
			<div style="color: red">아이디 또는 비밀번호가 일치하지 않습니다.</div>
		</c:if>
	</form>
</body>
</html>