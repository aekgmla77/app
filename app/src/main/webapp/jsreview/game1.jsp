<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div { display: inline-block; 
	width : 100px; 
	height: 100px;
	border: 1px solid black; }
</style>

</head>
<body>
<script>
	for(i=0; i<10; i++) {
		var div = document.createElement("div");
		div.innerHTML = i;
		div.onclick = clickHandler
		document.body.appendChild(div);
	}
	function clickHandler(e) {
		console.log(e.target.innerHTML, '클릭됨')
		var dd = document.createElement("div");
		dd.innerHTML = 'Game Over'
		//클릭된 태그를 삭제
		var len = document.getElementsByTagName("div").length;
		console.log(len, '개')
		if(len > 1){
			for(i = 0; i < len; i--){
				document.body.removeChild(e.target);
			}
		}else if(len = 1){
			document.body.appendChild(dd);
		}
	}
</script>
</body>
</html>