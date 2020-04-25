<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<script type="text/javascript"
	src="/resources/include/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	$(function() {
		//목록으로 버튼 클릭 시
		$("#memListBtn").click(function() {
			location.href = "/admin/memberlist/memberList";
		})
		//저장 버튼 클릭 시
		$("#updateBtn").click(function() {
			if (confirm("수정하시겠습니까?") == true) {
				$("#update").attr({
					"method" : "POST",
					"action" : "/admin/memberlist/memberListDetail"
				})
				$("#update").submit();
			} else {
				alert("취소되었습니다.");
				location.href = "/admin/memberlist/memberList";
			}

		})
	})
</script>
<div class="contetnContainer">
	<h2 class="sub-header">회원 상세 정보 조회</h2>
	<div class="table-responsive">
		<form id="update" name="update" method="post">
			<input type="hidden" id="mem_id" name="mem_id" value="${vo.mem_id}" />
			<table class="table table-bordered">
				<tr>
					<td>회원 ID</td>
					<td>${vo.mem_id}</td>
				</tr>
				<tr>
					<td>회원명</td>
					<td>${vo.mem_name}</td>

				</tr>
				<tr>
					<td>성별</td>
					<td>${vo.mem_gender}</td>
				</tr>
				<tr>
					<td>가입일</td>
					<td>${vo.mem_joindate}</td>
				</tr>
				<tr>
					<td>핸드폰 번호</td>
					<td>${vo.mem_cellphone}</td>
				</tr>
				<tr>
					<td>회원 상태</td>
					<td>현 재 상 태 >>&nbsp;&nbsp;${vo.mem_state}<br>변 경 상 태
						>>&nbsp;&nbsp;<input type="radio" id="mem_state" name="mem_state"
						value="활성화">&nbsp;활성화&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
						type="radio" id="mem_state" name="mem_state" value="비활성화">&nbsp;비활성화
					</td>
				</tr>
			</table>
		</form>
		<div>
			<input type="button" value="목록으로" id="memListBtn"
				class="btn btn-primary"> <input type="button" value="저장"
				id="updateBtn" class="btn btn-primary">
		</div>

	</div>
</div>
