<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tag" uri="/WEB-INF/tld/custom_tag.tld"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제주렌터카 :: 공지사항</title>
<style type="text/css">
td, th {
	text-align: center;
}
</style>
<link rel="icon" type="image/png" href="../resources/images/favicon.png">
<link rel="stylesheet"
	href="/jejuRentCarTest/src/main/webapp/resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/jejuRentcar.css">
<script type="text/javascript"
	src="/resources/include/js/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="/resources/include/js/common.js"></script>
<script type="text/javascript">
	$(function() {

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
		$("#n_search").attr({
			"method" : "GET",
			"action" : "/notice/list"
		});
		$("#n_search").submit();
	}
</script>
</head>

<style>
</style>

<jsp:include page="../mainview/header.jsp" />
<jsp:include page="../mainview/top.jsp" />

<body>
	<div class="contentContainer">
		<div class="contentTit">
			<h2 class="sub-header">공지사항</h2>
		</div>
		<div>
			<label>등록된 공지 : ${total}</label>
		</div>
		<!-----------------------리스트 시작---------------------------------->
		<div id="noticeList" class="table-responsive">
			<table class="table table-bordered">
				<tr>
					<th id="nt_number">글 번호</th>
					<th id="nt_heading">공지종류</th>
					<th id="nt_title">제목</th>
					<th id="nt_regdate">작성일</th>
				</tr>
				<%--====================데이터 출력 =============== --%>
				<c:choose>
					<c:when test="${not empty noticeList}">
						<c:forEach var="row" items="${noticeList}">
							<tr>
								<td><a
									href="${path}/client/notice/noticeDetail?nt_number=${row.nt_number}">${row.nt_number}</a></td>
								<td>${row.nt_heading}</td>
								<td>${row.nt_title}</td>
								<td>${row.nt_regdate}</td>
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
			
			<!-- 검색기능 -->
			<div id="carSearch" class="well">
		<form id="n_search" name="n_search">
			<input type="hidden" id="page" name="page" value="${data.page}">
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
		</div>
	</div>
	<!-- 페이지 네비게이션 시작 -->
	<div id="boardPage">
		<tag:paging page="${param.page}" total="${total}"
			list_size="${data.pageSize}" />
	</div>
</body>

<jsp:include page="../mainview/footer.jsp" />
</html>