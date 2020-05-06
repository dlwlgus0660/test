<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" width="device-width" initial-scale="1">
<title>제주렌터카 :: 메인페이지</title>
<link rel="icon" type="image/png" href="resources/images/favicon.png">
<link rel="stylesheet" href="resources/css/bootstrap.css">
	<!-- Bootstrap CSS -->
	<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<jsp:include page="header.jsp"/>
<jsp:include page="top.jsp"/>
</head>
<style>

.baby-sub-quick-menu-area{
  position:fixed;
  right:60px;
  z-index: 99;
}
.baby-sub-quick-menu-area a{
  display: block;
}

</style>

<body>
<%
	String center =request.getParameter("Center");
	// 처음 실행시에는 center값이 넘어오지 않기때문에 
	if(center==null){//null 처리 해준다.
		center="center.jsp"; //default center 값을 부여
	}
%>

<aside class="baby-sub-quick-menu-area">
    <a href="http://ncov.mohw.go.kr/" target="_blank">
      <img src="../resources/images/right_banner.jpg" alt="코로나적극대처안내" >
    </a>
    
  </aside>

<jsp:include page="<%= center %>"/>

<!-- footer -->
<jsp:include page="footer.jsp"/>

<script>
$(document).ready(function(){
	  $(function(){
	    $(window).scroll(function() {
	      var position = $(window).scrollTop(); // 현재 스크롤바의 위치
	      if (position == 0) {
	        $(".baby-sub-quick-menu-area").stop().animate({"top":-position+750+"px"},500);//750은 현재top값
	      }else if(position > 0 && position < 699){
	        $(".baby-sub-quick-menu-area").stop().animate({"top":-position+750-25+"px"},500);//고정된 header가 있는데, 그 높이가 25
	      }else if (position > 700) {
	        $(".baby-sub-quick-menu-area").stop().animate({"top":70+"px"},500);
	      }
	    });
	  });
	})
</script>

</body>
</html>