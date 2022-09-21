<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입양 후기 작성 | 안아줄개</title>

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
		    	<div class="intro">
		    		<h3 class="text-center text-info font-weight-bold mt-3">입양 후기 작성</h3>
			    	
			    	<div class="mt-4 text-center">
			    		<small>새로운 가족과의 소중한 후기를 남겨주셔서 감사드립니다.</small>
			    	</div>
		    	</div>
		    	
		    	<br> 
		    	
		    	<div class="post-box border rounded mt-5 p-5">
			
					<div class="mt-3">
						
						<label class="mt-2"><b>제목</b></label>
						<input type="text" id="titleInput" class="form-control mt-2" placeholder="제목을 입력해주세요">
						
						<label class="mt-5"><b>아이 이름</b></label>
						<input type="text" id="dogNameInput" class="form-control mt-2" placeholder="강아지의 이름을 입력해주세요">
						
						<label class="mt-5"><b>견종</b></label>
						<input type="text" id="breedInput" class="form-control mt-2" placeholder="견종을 입력해주세요">
						
						<div class="d-flex mt-5"> 
							<b class="mr-5">사진 업로드</b>
							<a href="#" id="imageIcon"> <i class="bi bi-image text-secondary"></i> </a> 
							<input type="file" id="fileInput" class="d-none">
							<!--  <button type="button" class="btn" id="uploadBtn">d</button>-->
						</div>
						
						<label class="mt-5"><b>내용</b></label>
						<textarea rows="15" id="contentInput" class="form-control mt-2" placeholder="후기를 작성해주세요"></textarea>
						
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
			
			// 파일 업로드
			$("#imageIcon").on("click", function(e) {
				// fileInput을 클릭한 효과를 만들어야 한다.
				e.preventDefault();
				$("#fileInput").click();
			});
			
			
			
			// 게시글 저장
			$("#saveBtn").on("click", function() {
				
				let title = $("#titleInput").val();
				let dogName = $("#dogNameInput").val();
				let breed = $("#breedInput").val();
				let image = $("#fileInput").val();
				let content = $("#contentInput").val();
				
				if(title == "") {
					alert("제목을 입력해주세요");
					return;
				}
				
				if(dogName == "") {
					alert("강아지의 이름을 입력해주세요");
					return;
				}
				
				if(breed == "") {
					alert("견종을 입력해주세요");
					return;
				}
				
				if(image == "") {
					alert("사진을 업로드해주세요");
					return;
				}
				
				// 파일
				var formData = new FormData();
				formData.append("title", title);
				formData.append("dogName", dogName);
				formData.append("breed", breed);
				formData.append("file", $("#fileInput")[0].files[0]);
				formData.append("content", content);
				
				if(content == "") {
					alert("후기를 작성해주세요");
					return;
				}
				
				
				// api 호출
				$.ajax({
					type:"post",
					url:"/review/post",
					data:formData,
					enctype:"mutipart/form-data",   // 파일업로드 필수 옵션
					processData:false,				// 파일업로드 필수 옵션
					contentType:false,				// 파일업로드 필수 옵션
					
					success:function(data) {
						if(data.result == "success") {
							alert("후기가 등록되었습니다.");
							location.href= "/review";
						} else {
							alert("후기 작성을 실패하였습니다.");
						}
						
					},
					error:function() {
						alert("로그인 해주세요");
					}
					
				});
				
			});
			
		});
	
	</script>


</body>
</html>