<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tag" uri="/WEB-INF/tld/custom_tag.tld"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<style type="text/css">
td, th {
	text-align: center;
}
</style>


<script type="text/javascript"
	src="/resources/include/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="/resources/include/js/common.js"></script>
<script type="text/javascript">
	$(function() {

		//등록버튼 클릭시
		$("#InsertBtn").click(function() {
			location.href = "/admin/noticeboard/noticeInsertForm";
		})

		/* 검색 후 검색 대상과 검색 단어 출력*/
		var word = "<c:out value='${data.keyword}'/>";
		var value = "";

		if (word != "") {
			$("#keyword").val("<c:out value='${data.keyword}'/>");
			$("#search").val("<c:out value='${data.search}'/>");

			if ($("#search").val() != 'nt_title') {
				//:contains()는 특정 텍스트를 포함한 요소반환
				if ($("#search").val() == 'nt_heading')
					value = "#list tr td.goDetail";
				

				$(value + ":contains('" + word + "')").each(
						function() {
							var regex = new RegExp(word, 'gi');
							$(this).html(
									$(this).text().replace(
											regex,
											"<span class='required'>" + word
													+ "</span>"));
						});
			}
		}

		/* 한페이지에 보여줄 레코드 수 조회 후 선택한 값 그대로 유지하기 위한 설정 */
		if ("<c:out value='${data.pageSize}' />" != "") {
			$("#pageSize").val("<c:out value='${data.pageSize}' />");
		}

		/* 검색 대상이 변경될 때마다 처리 이벤트 */
		$("#search").change(function() {
			if ($("#search").val() == "all") {
				$("#keyword").val("전체 데이터 조회합니다.");
			} else if ($("#search").val() != "all") {
				$("#keyword").val("");
				$("#keyword").focus();
			}
		})

		/* 검색 버튼 클릭 시 처리 이벤트 */
		$("#searchData").click(function() {
			if ($("#search").val() != "all") {
				if (!chkSubmit($("#keyword"), "검색어를"))
					return;
			}
			goPage(1);
		});

		// 정렬 삼각형 클릭 시
		$(".order").click(function() {
			var order_by = $(this).attr("data-value");
			console.log("선택값 : " + order_by);

			$("#order_by").val(order_by);
			if ($("#order_sc").val() == 'DESC') {
				$("#order_sc").val('ASC')
			} else {
				$("#order_sc").val('DESC')
			}
			goPage(1);
		});

		/* 한 페이지에 보여줄 레코드 수 변결될 때마다 처리 이벤트 */
		$("#pageSize").change(function() {
			goPage(1);
		});

	});

	/* 검색과 한 페이지에 보여줄 레코드 수 처리 및 페이징을 위한 실질적인 처리 함수 */
	function goPage(page) {
		if ($("#search").val() == "all") {
			$("#keyword").val("");
		}
		$("#page").val(page);
		$("#f_search").attr({
			"method" : "GET",
			"action" : "/admin/noticeboard/notice"
		});
		$("#f_search").submit();
	}
</script>

<div class="table-responsive">
	<h2 class="sub-header">공지사항 관리</h2>
	<div>
		<label> 등록된 공지:</label><label style="color: red">${total}</label>
	</div>
	<%--====================리스트 시작 =============== --%>
	<table class="table table-bordered">
		<thead>
			<tr>
				<div style="float: right;">
					<input type="button" value="등록" id="InsertBtn" name="InsertBtn"
						class="btn btn-primary">
				</div>
			</tr>
			<tr>
				<th data-value="nt_number" class="order">공지 번호<c:choose>
						<c:when
							test="${data.order_by=='nt_number' and data.order_sc=='ASC' }">▲</c:when>
						<c:when
							test="${data.order_by=='nt_number' and data.order_sc=='DESC' }">▼</c:when>
						<c:otherwise>▲</c:otherwise>
					</c:choose></th>
				<th>공지 종류</th>
				<th>공지 제목</th>
				<th>제목</th>
				<th>이미지</th>
				<th>작성일</th>
			</tr>
		</thead>
		<tbody>
			<%--====================데이터 출력 =============== --%>
			<c:choose>
				<c:when test="${not empty NoticeList }">
					<c:forEach var="Notice" items="${NoticeList}" varStatus="status">
						<tr class="tac" data-num="${Notice.nt_number}">
							<td><a
								href="${path}/admin/noticeboard/noticeDetail?nt_number=${Notice.nt_number}">${Notice.nt_number}</a></td>
							<td>${Notice.nt_heading }</td>
							<td>${Notice.nt_title }</td>
							<td>${Notice.nt_image }</td>
							<td>${Notice.nt_regdate }</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="4" class="tac">공지가 없습니다.</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
	
	<!-- 검색기능 -->
	<div id="carSearch" class="well">
		<form id="f_search" name="f_search">
			<input type="hidden" id="page" name="page" value="${data.page}">
			<input type="hidden" id="order_by" name="order_by" value="${data.order_by}" />
			<input type="hidden" id="order_sc" name="order_sc" value="${data.order_sc}" />
			<div>
				<div class="form-group">
					<table>
						<tr>
							<td id="btd1"><label>검색조건</label> <select id="search"
								name="search">
									<option value="nt_heading">공지종류</option>
									<option value="nt_title">제목</option>
									<option value="all">전체</option>
							</select> <input type="text" name="keyword" id="keyword"
								placeholder="검색어를 입력하세요." /> <input type="button"
								class="btn btn-primary" id="searchData" value="검색" /></td>
						</tr>
					</table>

				</div>
			</div>
		</form>
	</div>
	<!-- 페이지 네비게이션 시작 -->
	<div id="boardPage">
		<tag:paging page="${param.page}" total="${total}"
			list_size="${data.pageSize}" />
	</div>
</div>