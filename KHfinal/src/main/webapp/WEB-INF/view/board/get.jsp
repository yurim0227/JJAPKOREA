<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>boardOne</title>
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f5f5f5;
}

.container {
	max-width: 800px;
	margin: 20px auto;
	background-color: #ffffff;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	overflow: hidden;
}

.content {
	padding: 20px;
}

h2 {
	margin-top: 0;
	font-size: 24px;
	color: #333333;
}

input[type="text"], textarea {
	width: 100%;
	padding: 12px;
	margin-bottom: 10px;
	border: 1px solid #e0e0e0;
	border-radius: 4px;
	background-color: #f7f7f7;
	font-size: 16px;
	color: #333333;
}

button {
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	background-color: #007bff;
	color: #ffffff;
	font-size: 16px;
	transition: background-color 0.2s;
}

button:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
	<div class="container">
		<div class="content">
			<div>
				<form action="${pageContext.request.contextPath }/board/update"
					method="get">
					<input type="hidden" name="bno" value="${bvo.bno}"> <label
						for="btitle">제목:</label> <input type="text" id="btitle"
						name="btitle" value="${bvo.btitle}" readonly> <br> <label
						for="bcontent">내용:</label>
					<textarea id="bcontent" rows="10" cols="50" name="bcontent"
						readonly>${bvo.bcontent}</textarea>
					<br>
					
					<c:choose>
						<c:when test="${like_no == 0}">
							<button type="button" class="btn btn-light" id="likebtn">좋아요</button>
							<input type="hidden" id="likecheck" value="${like_no }">
						</c:when>
						<c:when test="${like_no == 1}">
							<button type="button" class="btn btn-danger" id="likebtn">좋아요</button>
							<input type="hidden" id="likecheck" value="${like_no }">
						</c:when>
					</c:choose>	
					
					<a href="${pageContext.request.contextPath}/board/list">
					<button type="submit" id="btn-board-update">글 수정</button>
					</a>
					<button type="button" id="btn-board-delete">글 삭제</button>
					<a href="${pageContext.request.contextPath}/board/list">
					  <button type="button">글 목록으로 이동</button>
					</a>				
				</form>
			</div>
		</div>
	</div>		
	<script>
    $("#btn-board-delete").click(function () {
        var bno = '${bvo.bno}';
        if (confirm("글 삭제하시겠습니까?")) {
          $.ajax({
            type: "post",
            url: "${pageContext.request.contextPath}/board/delete",
            data: { bno: bno },
            success: function (response) {
            	console.log(response);
	            if(response > 0){
	            	alert("삭제되었습니다.");
	            }else {
	            	alert("삭제 실패했습니다");
	            }
				location.href = "${pageContext.request.contextPath}/board/list";
				}
			});
		}
	});
    $('#likebtn').click(function(){
		likeUpdate();
	});
	
 function likeUpdate() {
	    var mid = $('#mid').val();
	    var bno = $('#bno').val();
	    var count = $('#likecheck').val();
	    var data = {
	        "mid": mid,
	        "bno": bno,
	        "count": count
	    };

	    $.ajax({
	        type: 'POST',
	        url: "${pageContext.request.contextPath}/like/likeUpdate",
	        contentType: 'application/json',
	        data: JSON.stringify(data),
	        success: function (result) {
	            console.log("수정: " + result.result);
	            if (count == 1) {
	                console.log("좋아요 취소");
	                $('#likecheck').val(0);
	                $('#likebtn').attr('class', 'btn btn-light');
	            } else if (count == 0) {
	                console.log("좋아요");
	                $('#likecheck').val(1);
	                $('#likebtn').attr('class', 'btn btn-danger');
	            }
	        },
	        error: function (xhr, status, error) {
	            console.error("에러: " + error);
	        }
	    });
	};
</script>
</body>
</html>