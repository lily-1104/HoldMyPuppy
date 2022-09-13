<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 작성 | 안아줄개</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
	<link rel="stylesheet" href="/static/css/style.css" type="text/css">
	
</head>
<body>

	<div id="wrap">
   
	    <c:import url="/WEB-INF/jsp/member/include/header.jsp" />
	    
	    
	    <section class="mt-5 d-flex justify-content-center">
	    
	    	<div class="mt-5">
		    	<h3 class="text-center text-info font-weight-bold mt-3">공지사항 작성</h3>
			    	
		    	<br>
		    	
		    	<div class="post-box border rounded mt-5 p-5">
			
					<div class="mt-3">
						
						<label class="mt-2"><b>제목</b></label>
						<input type="text" id="titleInput" class="form-control mt-2">
						
						
						<div class="d-flex mt-5"> 
							<b class="mr-5">사진</b>
							<a href="#" id="imageIcon"> <i class="bi bi-image text-secondary"></i> </a> 
							<input type="file" id="fileInput" class="d-none">
						</div>
						
						<label class="mt-5"><b>내용</b></label>
						<textarea rows="15" id="contentInput" class="form-control mt-2"></textarea>
						
						<div>
							<button type="button" id="saveBtn" class="btn btn-info btn-block mt-5">작성하기</button>
						</div>
					</div>
				
					<div class="mt-5"></div>
				</div>
		    
		    </div>
		    
		</section>
		
		
		<c:import url="/WEB-INF/jsp/member/include/footer.jsp" />
		
	</div>
		    	
		    	
	<script>
		
		$(document).ready(function() {
			
			// 게시글 저장
		    $("#saveBtn").on("click", function() {
		    	
		    	let title = $("#titleInput").val();
		    	let content = $("#contentInput").val();
		    	
		    	if(title == "") {
					alert("제목을 입력해주세요");
					return;
				}
		    	
		    	if(content == "") {
					alert("내용을 작성해주세요");
					return;
				}
		    	
		    	// 파일
				var formData = new FormData();
				formData.append("title", title);
				formData.append("file", $("#fileInput")[0].files[0]);
				formData.append("content", content);
				
				
				
				// api 호출
		    	$.ajax({
		    		type:"post",
		    		url:"/notice/post",
		    		data:formData,
		    		enctype:"mutipart/form-data",   // 파일업로드 필수 옵션
					processData:false,				// 파일업로드 필수 옵션
					contentType:false,				// 파일업로드 필수 옵션
					
					success:function(data) {
						if(data.result == "success") {
							alert("등록되었습니다.");
							location.href= "/admin/notice/detail";
						} else {
							alert("등록을 실패하였습니다.");
						}
						
					},
					error:function() {
						alert("관리자만 작성 가능합니다. 로그인 해주세요");
					}
					
				});
		    		
		    });
			
		});
		    	
	</script>
	
</body>
</html>