<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<script type="text/javascript" src="/resources/include/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
	$(function() {

		//목록으로 버튼 클릭 시
		$("#reviewListBtn").click(function() {
			location.href = "/admin/reviewboard/review";
		})

		// 댓글 등록/수정 버튼 클릭 시
		$("#updateBtn").click(function() {
			confirm("댓글을 등록하시겠습니까?")
			{

				$("#detail").attr({
					"method" : "POST",
					"action" : "/admin/reviewboard/reDetailUpdate"
				})
				$("#detail").submit();
				alert("등록되었습니다.");
			}
		})

		// 댓글 답변 삭제 버튼 클릭시
		$("#reDeleteBtn").click(function() {
			confirm("댓글을 삭제하시겠습니까?")
			{
				$("#detail").attr({
					"method" : "POST",
					"action" : "/admin/reviewboard//reReDelete"
				})
				$("#detail").submit();
				alert("댓글 답변이 삭제되었습니다.");
			}
		})

		// 후기글 삭제하기 버튼 클릭 시
		$("#deleteBtn").click(function() {
			confirm("삭제하시겠습니까?")
			{
				$("#detail").attr({
					"method" : "POST",
					"action" : "/admin/reviewboard/reListDelete"
				})
				$("#detail").submit();
				alert("삭제되었습니다.");
			}
		})
	});
</script>
<div class="contetnContainer">
	<h2 class="sub-header">후기 게시판 상세 조회</h2>
	<div class="table-responsive">
		<form id="detail" name="detail" method="post">
			<input type="hidden" id="re_number" name="re_number"
				value="${vo.re_number}" />
			<table class="table table-bordered">
				<tr>
					<td>글번호</td>
					<td>${vo.re_number}</td>
					<td>ID</td>
					<td>${vo.mem_id}</td>
					<td>작성일</td>
					<td>${vo.re_regdate}</td>
				</tr>
				<tr>
					<td>제목</td>
					<td colspan="5">${vo.re_title}</td>
				</tr>
				<tr>
					<td>내용</td>
					<td colspan="5">${vo.re_content}</td>
				</tr>
				<tr>
					<td>관리자 댓글</td>
					<td colspan="4"><textarea id="re_reply" name="re_reply">${vo.re_reply}</textarea></td>
					<td><input type="button" value="등록/수정" id="updateBtn"
						class="btn btn-primary"> &nbsp;&nbsp;&nbsp;&nbsp; <input
						type="button" value="답변 삭제" id="reDeleteBtn"
						class="btn btn-primary"></td>
				</tr>
			</table>
		</form>
		<div>
			<input type="button" value="목록으로" id="reviewListBtn"
				class="btn btn-primary"> &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="삭제하기"
				id="deleteBtn" class="btn btn-primary">
		</div>
	</div>
</div>
