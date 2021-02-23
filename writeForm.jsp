<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 작성</title>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
  <script type="text/javascript" src ="util.js"></script>
  <script type="text/javascript" src ="formUtil.js"></script>
  
</head>
<body>
<div class = "container"> 
	<h1>공지사항 작성</h1>
	<p>게시글 작성 처리 HTML form tag 안에 action 속성 설정</p>
	<form action="write.jsp" method="post">
		<div class = "form-group">
			<label>제목</label>
			<!-- input tag의 기본 type->text. 때문에 생략 가능 -->
			<input name = "title" class="form-control" id="title" required="required"
			 placeholder="3글자이상 20글자이내 입력">
			<!--textarea:여러줄의 데이터 입력 rows:즐 수 cols:칸 수 (BS에서 대부분 사용) name:서버에서 찾아쓰는 이름표  value:데이터 기본 셋팅  -->
		</div>
		<div class = "form-group">
			<label>내용</label>
			<textarea rows="7" name="content" class="form-control" id="content" required="required"></textarea>
		</div>
		<div class = "form-group">
			<label for="startDate">공지시작일</label>
			<input type = "date" name = "startDate" class="form-control" id="startDate" required="required">
		</div>
		<div class = "form-group">
			<label for="endDate">공지종료일</label>
			<input type = "date" name = "startDate" class="form-control" id="startDate" required="required">
		</div>
		
	<!-- 데이터를 전송하는 type= "submit" 버튼,버튼의 기본이므로 생략가능 -->
	<button class="btn btn-default">등록</button>
	<!-- 데이터를 새로 입력하는 type = "reset" 버튼 -->
	<button type ="reset"  class="btn btn-default">새 입력</button>
	<!-- 취소 하려면 버튼 모양으로 사용(type="button")하고 취소 동작을 JS로 작성 -->
	<button type ="button" onclick="history.back()"  class="btn btn-default">취소</button>
	</form>
</div>
</body>
</html>