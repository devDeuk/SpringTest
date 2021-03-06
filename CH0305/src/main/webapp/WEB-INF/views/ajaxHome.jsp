<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page session="false"%>
<html>
<head>
	<title>Home</title>
</head>

<script src="/resources/js/jQuery-2.1.4.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {

	$("#putBtn").on("click", function() {
		var boardNo = $("#boardNo");
		var title = $("#title");
		var content = $("#content");
		var writer = $("#writer");

		var boardNoVal = boardNo.val();
		var titleVal = title.val();
		var contentVal = content.val();
		var writerVal = writer.val();

		var boardObject = {
			boardNo : boardNoVal,
			title : titleVal,
			content : contentVal,
			writer : writerVal
		};

		$.ajax({
			type : "put",
			url : "/board/" + boardNoVal,
			data : JSON.stringify(boardObject),
			contentType : "application/json; charset=utf-8",
			success : function(result) {
				console.log("result: " + result);
				if (result === "SUCCESS") {
					alert("SUCCESS");
				}
			}
		});
	});
	
	$("#putHeaderBtn").on("click", function() {
		var boardNo = $("#boardNo");
		var title = $("#title");
		var content = $("#content");
		var writer = $("#writer");

		var boardNoVal = boardNo.val();
		var titleVal = title.val();
		var contentVal = content.val();
		var writerVal = writer.val();

		var boardObject = {
			boardNo : boardNoVal,
			title : titleVal,
			content : contentVal,
			writer : writerVal
		};

		$.ajax({
			type : "put",
			url : "/board/" + boardNoVal,
			headers : {
				"X-HTTP-Method-Override" : "PUT"
			},
			data : JSON.stringify(boardObject),
			contentType : "application/json; charset=utf-8",
			success : function(result) {
				console.log("result: " + result);
				if (result === "SUCCESS") {
					alert("SUCCESS");
				}
			}
		});
	});

});
</script>

<body>
	<h1>Ajax Home</h1>

	<form>
		boardNo: <input type="text" name="boardNo" value="" id="boardNo"><br>
		title: <input type="text" name="title" value="" id="title"><br>
		content: <input type="text" name="content" value="" id="content"><br>
		writer: <input type="text" name="writer" value="" id="writer"><br>
	</form>

	<div>
		<button id="putBtn">MODIFY(put)</button>
		<button id="putHeaderBtn">MODIFY(put with header)</button>
	</div>
</body>
</html>
