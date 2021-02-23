<%@page import="com.webjjang.notice.vo.NoticeVO"%>
<%@page import="java.util.List"%>
<%@page import="com.webjjang.notice.service.NoticeListService"%>
<%@page import="com.webjjang.main.controller.ExeService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
//여기는 자바 -> 서버 객체를 사용하지 않음 
@SuppressWarnings("unchecked")
List<NoticeVO> list =(List <NoticeVO>)ExeService.execute(new NoticeListService(),null);
//서버 객체의 request를 사용해서 담아놓음 "key"=value
request.setAttribute("list", list);
%>    
<!-- 이 곳이 데이터를 표시하는 부분 NoticePrint.print(list)-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 목록</title>

	<!-- BootStrap 라이브러리 CDN 방식 -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style type="text/css">
/*선택자 - tr : tag , .tr : class, #tr : id */
.dataRow:hover{
	/*배경색 회색으로 변경 */
	background: #ddd;
	/*마우스 커서를 손가락으로 변경*/
	cursor: pointer;
}
</style>   
<script type="text/javascript">
/*함수가 없으면 그냥 실행이 됨.<body>보다 먼저 실행이 되므로 객체를 찾을 수가 없음 $()-> jquery 함수 */
$(function(){
	$(".dataRow").click(function(){
		/*location.href에 url 넣음 -> 페이지 이동*/ 
		//this -> tr 객체. this 안에 class= no가 존재 (td객체, 이 안에 있는 글자가 글 번호 )
		//.find(찾는 객체)선택 된 객체 안에서 객체 찾기
		//.text()객체(tag) 안에 있는 글자만 가져오기
		location = "view.jsp?no=" + $(this).find(".no").text();
	});
});
</script>
</head>

<body>
<div class="container">
<h1>공지사항 목록 </h1>
<table class="table">
<tr>
	<th>번호</th>
	<th>제목</th>
	<th>공지시작일</th>
	<th>공지종료일</th>
	<th>최종수정일</th>
</tr>

<!-- 데이터가 있는만큼 반복처리 하는 시작 부분  => HTML에는 반복처리가 없으므로 JAVA로 이미 작성한 것을 사용 ,JSTL(JSP Standard Tag Library) -> EL객체 사용 -->
<c:forEach items="${list}" var="vo">
<tr class="dataRow">
	<td class ="no">${vo.no }</td>
	<td>${vo.title }</td>
	<td>${vo.startDate }</td>
	<td>${vo.endDate }</td>
	<td>${vo.updateDate }</td>
</tr>
</c:forEach>
<!-- 데이터가 있는만큼 반복처리 하는 끝 부분  -->

<tr >
	<td colspan="5">
	<a href="writeForm.jsp" class="btn btn-default btn-sm">작성</a><br/>
	</td>
</tr>
</table>
</div>
</body>
</html>