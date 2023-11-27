<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보호 중인 아이들 | 안아줄개</title>
</head>
<body>

	<div class="h-50"></div>
	
	<section class="mt-5">
			
		<div class="text-center d-flex align-items-center justify-content-center">
			
		    <div class="intro">
		    	<h3 class="text-info font-weight-bold mt-4">분양 중인 아가들을 소개합니다</h3>
			    	
			    <div class="mt-4">
			    	<small>한번 이상의 이별을 겪은 아이들의 평생을 함께 해야하는 약속, <br>
			    		   신중한 선택과 함께 아이들의 손을 꼭 잡아주세요.</small>
			    </div>
		    </div>
		</div>
	    	
	    	
	    <br> <br>
			
			
		<%-- 보호 중인 아이들 --%>
		<div class="dogs my-5">
			
			<div class="d-flex justify-content-between">
				
				<div class="border rounded">
					<img width="250" alt="사진" src="https://images.mypetlife.co.kr/content/uploads/2019/09/09152937/blind-dog-2-1024x683.jpg">
					<div class="mt-4 mb-5 text-center">말티즈 흰둥이</div>
				</div>
					
				<div class="border rounded">
					<img width="250" alt="사진" src="https://images.mypetlife.co.kr/content/uploads/2019/09/09152937/blind-dog-2-1024x683.jpg">
					<div class="mt-4 mb-5 text-center">말티즈 흰둥이</div>
				</div>
					
				<div class="border rounded">
					<img width="250" alt="사진" src="https://images.mypetlife.co.kr/content/uploads/2019/09/09152937/blind-dog-2-1024x683.jpg">
					<div class="mt-4 mb-5 text-center">말티즈 흰둥이</div>
				</div>
					
				<div class="border rounded">
					<img width="250" alt="사진" src="https://images.mypetlife.co.kr/content/uploads/2019/09/09152937/blind-dog-2-1024x683.jpg">
					<div class="mt-4 mb-5 text-center">말티즈 흰둥이</div>
				</div>
				
			</div>
				
				
			<div class="mt-4 d-flex justify-content-between">
				
				<div class="border rounded">
					<img width="250" alt="사진" src="https://images.mypetlife.co.kr/content/uploads/2019/09/09152937/blind-dog-2-1024x683.jpg">
					<div class="mt-4 mb-5 text-center">말티즈 흰둥이</div>
				</div>
					
				<div class="border rounded">
					<img width="250" alt="사진" src="https://images.mypetlife.co.kr/content/uploads/2019/09/09152937/blind-dog-2-1024x683.jpg">
					<div class="mt-4 mb-5 text-center">말티즈 흰둥이</div>
				</div>
					
				<div class="border rounded">
					<img width="250" alt="사진" src="https://images.mypetlife.co.kr/content/uploads/2019/09/09152937/blind-dog-2-1024x683.jpg">
					<div class="mt-4 mb-5 text-center">말티즈 흰둥이</div>
				</div>
					
				<div class="border rounded">
					<img width="250" alt="사진" src="https://images.mypetlife.co.kr/content/uploads/2019/09/09152937/blind-dog-2-1024x683.jpg">
					<div class="mt-4 mb-5 text-center">말티즈 흰둥이</div>
				</div>
				
			</div>
		</div>
          	
		
		<%-- 글쓰기 버튼은 관리자에게만 공개 --%>
		<div class="d-flex justify-content-end mr-3 mt-5">
			<a href="/abandoned_dog/create" class="btn btn-info mt-5">글쓰기</a>
		</div>
		
	</section>

</body>
</html>