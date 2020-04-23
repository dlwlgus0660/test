<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<title>JejuRentCar 관리자 로그인 페이지</title>
<script type="text/javascript"
	src="/resources/include/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	$(function() {

		$("#loginBtn").click(function() {
			$("#adminLogin").attr({
				"method" : "POST",
				"action" : "/admin/login"
			});
			$("#adminLogin").submit();

			var admin_id = $("#admin_id").val();
			var admin_pw = $("#admin_pw").val();
			if (admin_id == "" || admin_pw == "") {
				alert("아이디와 비밀번호를 모두 입력해주세요!");
				return;// 함수 종료 
			}

		})

	})

</script>
</head>
<body>
	<h2 class="sub-header">관리자 로그인</h2>
	<div id="login" class="table-responsive">
		<form id="adminLogin">
			<table class="table table-bordered">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="admin_id" id="admin_id"></td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="admin_pw" id="admin_pw"></td>
				</tr>
				<tr>
					<td><input type="button" value="로그인" id="loginBtn"
						class="btn btn-primary">
				</tr>
				<c:if test="${msg=='failure'}">
					<div style="color: red">아이디 또는 비밀번호가 일치하지 않습니다.</div>
				</c:if>
			</table>
		</form>
	</div>
</body>
</html>