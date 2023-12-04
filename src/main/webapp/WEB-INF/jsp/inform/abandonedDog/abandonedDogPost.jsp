<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보호 중인 아이들 등록 | 안아줄개</title>
</head>
<body>

	<div class="h-50"></div>
	
	<section class="mt-5 d-flex justify-content-center">
	
		<div>
			
		    <h3 class="text-center text-info font-weight-bold">유기견 등록</h3>
			    	
		    <br>
		    	
		    <div class="post-box border rounded mt-5 p-5">
			
				<div class="mt-3">
						
					<label class="mt-2"><b>제목</b></label>
					<input type="text" id="title" class="form-control mt-2">
						
					<label class="mt-5"><b>강아지 이름</b></label>
					<input type="text" id="dogName" class="form-control mt-2">
						
					<label class="mt-5"><b>견종</b></label>
					<input type="text" id="breed" class="form-control mt-2">
						
					<label class="mt-5"><b>나이 (숫자만 입력해주세요)</b></label>
					<input type="text" id="age" class="form-control mt-2">
						
						
					<label class="mt-5"><b>성별</b></label>
                  	<div class="d-flex align-items-center mt-3 ml-2">
	                     <div>
	                        <label class="mr-4"><input type="radio" name="gender" value="남아" checked class="mr-3">남아</label>
	                     </div>
	                     
	                     <div class="ml-5">
	                        <label class="ml-4"><input type="radio" name="gender" value="여아" class="mr-3">여아</label>
	                     </div>
	                </div>
                  
                  
                  	<label class="mt-5"><b>중성화 유무</b></label>
                  	<div class="d-flex align-items-center mt-3 ml-2">
                     	<div>
                        	<label><input type="radio" name="neutralization" value="중성화 완료" checked class="mr-3">완료</label>
                     	</div>
                     
                     	<div class="ml-5">
                        	<label class="ml-3"><input type="radio" name="neutralization" value="미완료" class="mr-3">미완료</label>
                     	</div>
                  	</div>
                  
                  
                  	<label class="mt-5"><b>견BTI</b></label>
					<input type="text" id="mbti" class="form-control mt-2">
						
						
					<div class="d-flex mt-5"> 
						<b class="mr-5">사진 업로드</b>
						<a href="#" id="fileUploadBtn"><img width="35" src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-image-512.png"></a>
						<input type="file" id="file" class="d-none" accept=".jpg, .jpeg, .png, .gif">
					
						<%-- 업로드 된 임시 파일명 노출 --%>
						<div id="fileName" class="ml-2"></div>
					</div>
						
					<label class="mt-5"><b>내용</b></label>
					<textarea rows="15" id="content" class="form-control mt-2"></textarea>
						
					<div>
						<button type="button" id="saveBtn" class="btn btn-info btn-block mt-5">등록하기</button>
					</div>
				</div>
				
				<div class="mt-5"></div>
			</div>
		    
		</div>
		    
	</section>
	
	
	<script>
	
		$(document).ready(function() {
			
			// 파일 이미지 클릭
			$('#fileUploadBtn').on('click', function(e) {
				
				e.preventDefault();
				$('#file').click();
				
			});
			
			// 이미지를 선택하는 순간 유효성 확인 및 업로드 된 파일명 노출
			$('#file').on('change', function(e) {
				
				let fileName = e.target.files[0].name;
				console.log(fileName);
				
				// 확장자 유효성 확인
				let ext = fileName.split(".").pop().toLowerCase();
				//alert(ext);
				
				if (ext != 'jpg' && ext != 'gif' && ext != 'png' && ext != 'jpeg') {
					
					alert("이미지 파일만 업로드 할 수 있습니다");
					$('#file').val("");		// 파일 태그에 파일 제거
					$("#fileName").text(""); 	// 파일명 비우기
					return;
				}
				
				// 유효성 통과한 이미지는 업로드 된 파읾명 노출
				$('#fileName').text(fileName);
				
			});
			
			
			// 게시글 저장
			$('#saveBtn').on('click', function() {
				
				let title = $("#title").val().trim();
				let dogName = $("#dogName").val().trim();
				let breed = $("#breed").val().trim();
				let age = $("#age").val().trim();
				let gender = $("input[name='gender']").val();	// radio box의 value 값을 가져오려면 value 값 둘 중 하나를 가져와야하기때문에 name에서 꺼내와야함  
				let neutralization = $("input[name='neutralization']").val();
				let mbti = $("#mbti").val().trim();
				let fileName = $("#file").val();
				let content = $("#content").val();
				
				if (!title) {
					alert("제목을 입력해 주세요");
					return;
				}
				
				if (!dogName) {
					alert("강아지의 이름을 입력해 주세요");
					return;
				}
				
				if (!breed) {
					alert("견종을 입력해 주세요");
					return;
				}
				
				if (!age) {
					alert("강아지 나이를 입력해 주세요");
					return;
				}
				
				if (!mbti) {
					alert("견BTI를 입력해 주세요");
					return;
				}
				
				if (!fileName) {
					alert("사진을 업로드해 주세요");
					return;
				}
				
				
				// 파일
				let formData = new FormData();
				formData.append("title", title);
				formData.append("dogName", dogName);
				formData.append("breed", breed);
				formData.append("age", age);
				formData.append("gender", gender);
				formData.append("neutralization", neutralization);
				formData.append("mbti", mbti);
				formData.append("file", $("#file")[0].files[0]);
				formData.append("content", content);
				
				
				if (!content) {
					alert("내용을 입력해 주세요");
					return;
				}
				
				// alert(gender);	=> 위 gender의 radio box에서 value 값 가져와지는지 테스트
				
				
				$.ajax({
					
					// request
					type:"post"
					, url:"/abandoned_dog/post/create"
					, data:formData
					, enctype:"multipart/form-data"
					, processData:false	
	    			, contentType:false
	    			
	    			// response
	    			, success:function(data) {
	    				
	    				//data.newId
	    				if (data.result == "성공") {
	    					
	    					alert("유기견 정보가 등록되었습니다");
	    					location.href = '/abandoned_dog/dog_detail?id='+data.newId;	  // 저장된 게시글 상세정보 페이지로 이동
	    					
	    				} else {
	    					
	    					alert(data.errorMessage);
	    				}
	    				
	    			}
					, error:function(request, status, error) {
						
						alert("유기견 정보를 저장하는데 실패했습니다");
					}
				});
				
			});
		});
	
	</script>

</body>
</html>