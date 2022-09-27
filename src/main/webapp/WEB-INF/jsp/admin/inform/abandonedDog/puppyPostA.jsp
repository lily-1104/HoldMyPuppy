<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보호 중인 아이들 등록 | 안아줄개</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
	<link rel="stylesheet" href="/static/css/style.css" type="text/css">
	
</head>
<body>

	<div id="wrap">
   
	    <c:import url="/WEB-INF/jsp/admin/include/headerA.jsp" />
	    
	    
	    <section class="mt-5 d-flex justify-content-center">
			
			<div class="mt-5">
		    	<h3 class="text-center text-info font-weight-bold mt-3">유기견 등록</h3>
			    	
		    	<br>
		    	
		    	<div class="post-box border rounded mt-5 p-5">
			
					<div class="mt-3">
						
						<label class="mt-2"><b>제목</b></label>
						<input type="text" id="titleInput" class="form-control mt-2">
						
						<label class="mt-5"><b>강아지 이름</b></label>
						<input type="text" id="dogNameInput" class="form-control mt-2">
						
						<label class="mt-5"><b>견종</b></label>
						<input type="text" id="breedInput" class="form-control mt-2">
						
						<label class="mt-5"><b>강아지 나이</b></label>
						<input type="text" id="ageInput" class="form-control mt-2">
						
						
						<label class="mt-5"><b>강아지 성별</b></label>
                  		<div class="d-flex align-items-center mt-3 ml-2">
	                     	<div>
	                        	<label class="mr-4"><input type="radio" name="gender" value="남아" checked class="mr-3">남아</label>
	                     	</div>
	                     
	                     	<div class="ml-5">
	                        	<label class="ml-4"><input type="radio" name="gender" value="여아" class="mr-3">여아</label>
	                     	</div>
	                  	</div>
                  
                  
                  		<label class="mt-5"><b>예방 접종 유무</b></label>
                  		<div class="d-flex align-items-center mt-3 ml-2">
                     		<div>
                        		<label><input type="radio" name="vaccination" value="접종 완료" checked class="mr-3">접종 완료</label>
                     		</div>
                     
                     		<div class="ml-5">
                        		<label class="ml-3"><input type="radio" name="vaccination" value="미접종" class="mr-3">미접종</label>
                     		</div>
                  		</div>
                  
                  
                  		<label class="mt-5"><b>중성화 유무</b></label>
                  		<div class="d-flex align-items-center mt-3 ml-2">
                     		<div>
                        		<label><input type="radio" name="neutering" value="완료" checked class="mr-3">완료</label>
                     		</div>
                     
                     		<div class="ml-5">
                        		<label class="ml-5"><input type="radio" name="neutering" value="미완료" class="mr-3">미완료</label>
                     		</div>
                  		</div>
						
						
						<div class="d-flex mt-5"> 
							<b class="mr-5">사진 업로드</b>
							<a href="#" id="imageIcon"> <i class="bi bi-image text-secondary"></i> </a> 
							<input type="file" id="fileInput" class="d-none">
						</div>
						
						<label class="mt-5"><b>내용</b></label>
						<textarea rows="15" id="contentInput" class="form-control mt-2"></textarea>
						
						<div>
							<button type="button" id="saveBtn" class="btn btn-info btn-block mt-5">등록하기</button>
						</div>
					</div>
				
					<div class="mt-5"></div>
				</div>
		    
		    </div>
		    
		</section>
		
		
		<c:import url="/WEB-INF/jsp/admin/include/footerA.jsp" />
		
	</div>
	
	
	<script>
		
		$(document).ready(function() {
			
			// 파일 업로드
			$("#imageIcon").on("click", function(e) {
				// fileInput을 클릭한 효과를 만들어야 한다
				e.preventDefault();
				$("#fileInput").click();
			});
			
			
			
			// 게시글 저장
			$("#saveBtn").on("click", function() {
				
				let title = $("#titleInput").val();
				let dogName = $("#dogNameInput").val();
				let breed = $("#breedInput").val();
				let age = $("#ageInput").val();
				let gender = $("input[name='gender']").val();	// radio box의 value 값을 가져오려면 value 값 둘 중 하나를 가져와야하기때문에 name에서 꺼내와야함
				let vaccination = $("input[name='vaccination']").val();
				let neutering = $("input[name='neutering']").val();
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
				
				if(age == "") {
					alert("강아지 나이를 입력해주세요")
				}
				
				if(image == "") {
					alert("사진을 업로드해주세요");
					return;
				}
				
				
				// alert(gender);	=> 위 gender의 radio box에서 value 값 가져와지는지 테스트
				
				
				// 파일
				var formData = new FormData();
				formData.append("title", title);
				formData.append("dogName", dogName);
				formData.append("breed", breed);
				formData.append("age", age);
				formData.append("gender", gender);
				formData.append("vaccination", vaccination);
				formData.append("neutering", neutering);
				formData.append("file", $("#fileInput")[0].files[0]);
				formData.append("content", content);
				
				if(content == "") {
					alert("내용을 작성해주세요");
					return;
				}
				
				
				// api 호출
				$.ajax({ 
					type:"post",
					url:"/adoption/post_admin",
					data:formData,
					enctype:"mutipart/form-data",   // 파일업로드 필수 옵션
					processData:false,				// 파일업로드 필수 옵션
					contentType:false,				// 파일업로드 필수 옵션
					
					success:function(data) {
						if(data.result == "success") {
							alert("등록되었습니다.");
							location.href= "/admin/adoption";
						} else {
							alert("등록을 실패하였습니다.");
						}
						
					},
					error:function() {
						alert("등록 에러");
					}
				});
			});
	
		});
	
	</script>

</body>
</html>