<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<script type="text/javascript">
/*
 * Ajax 형식)
 $.ajax({
	type : 통신 타입을 설정 - "get" 또는 "post"
	async : 비동기식으로 처리할지를 결정 - false인 경우 동기식으로 처리.
	url : 요청한 url을 설정함.
	data : 서버에 요청할 때 보낼 매개변수를 설정. - {서버로 전송할 데이터}
	dataType : 응답을 받을 데이터의 타입을 설정. - text,xml,json 등등
	success : 요청 및 응답에 성공했을 때 처리할 내용을 설정.
	error : 요청 및 응답에 실패 했을 때 처리할 내용을 설정.
	complete : 모든 작업을 마친 후 처리할 내용을 설정.
 });
 	json 파일: - JavaScript Object Notation
 			  - name/ value 쌍으로 이루어진 데이터 객체를 전달하기 위해 사람이 읽을 수 있는 텍스트를 사용하는 개방형 표준 데이터 형식.
 			  - 비동기 브라우저/ 서버 통신을 위해 xml을 대체하는 데이터 전송 방식 중 하나.
*/
function process() {
	$.ajax({
		type: "get",						//get 방식으로 전송한다는 의미.
		dataType: "text",					//응답 데이터를 텍스트 형식으로 지정한다는 의미
		url: "data/test.jsp",				//전송할 페이지를 지정하는 의미.
		data: {param: "Hello Ajax!!!"},		//전송할 매개변수와 값을 설정한다는 의미.
		success: function(data) {			//전송과 응답이 성공했을 때 작업을 설정하는 공간
			$(".message").append(data);
		},
		error: function(data) {				//전송과 응답이 실패했을 때 작업을 설정하는 공간
			alert("에러가 발생했습니다......");
		},
		complete: function(data) {			//전송과 응답이 완료됐을 때 작업을 설정하는 공간
			alert("작업을 완료 했습니다!!!");
		}
	});
}
</script>
</head>
<body>
<input type="button" value="전송하기"  onclick="process()">
<br/><br/>
<div class="message">

</div>
</body>
</html>