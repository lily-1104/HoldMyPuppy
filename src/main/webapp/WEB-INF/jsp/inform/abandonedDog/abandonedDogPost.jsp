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

	<section class="mt-5 d-flex justify-content-center">
		
		<div class="h-50"></div>
			
		<div class="mt-5">
			
		    <h3 class="text-center text-info font-weight-bold mt-3">유기견 등록</h3>
			    	
		    <br>
		    	
		    <div class="post-box border rounded mt-5 p-5">
			
				<div class="mt-3">
						
					<label class="mt-2"><b>제목</b></label>
					<input type="text" id="title" class="form-control mt-2">
						
					<label class="mt-5"><b>강아지 이름</b></label>
					<input type="text" id="dogName" class="form-control mt-2">
						
					<label class="mt-5"><b>견종</b></label>
					<input type="text" id="breed" class="form-control mt-2">
						
					<label class="mt-5"><b>나이</b></label>
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
						<a href="#" id="imageIcon"> <i class="bi bi-image text-secondary"></i> </a> 
						<input type="file" id="file" class="d-none">
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

</body>
</html>