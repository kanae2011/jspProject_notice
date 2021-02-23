<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
</head>
<body>
<h1>게시글 수정</h1>
게시글 수정 처리 HTML form action 설정
<form action="update.jsp" method="post">
	<label>번호</label><br/>
	<!-- input tag의 기본 type->text. 때문에 생략 가능.수정불가 속성:readonly:읽기전용-->
	<input name ="no" readonly="readonly" value="10"><br/>
	<label>제목</label><br/>
	<!-- input tag의 기본 type->text. 때문에 생략 가능 -->
	<input name = "title" value="웹표준이란?"><br/>
	<!--textarea:여러줄의 데이터 입력 rows:즐 수 cols:칸 수 (BS에서 대부분 사용) name:서버에서 찾아쓰는 이름표  value:데이터 기본 셋팅  -->
	<label>내용</label><br/>
	<textarea rows="7" cols="60" name="content">
	HTML,CSS,JS를 이용한 프로그램
	1.사용자 표준화 2.기기표준화 3.SW표준화
	</textarea><br/>  
	<label>작성자</label><br/>
	<input name = "writer"><br/>
<!-- 데이터를 전송하는 type= "submit" 버튼,버튼의 기본이므로 생략가능 -->
<button>수정</button>
<!-- 취소 하려면 버튼 모양으로 사용(type="button")하고 취소 동작을 JS로 작성 -->
<button type ="reset">새 입력</button>
<button type ="button" onclick="history.back()">취소</button>
</form>
</body>
</html>