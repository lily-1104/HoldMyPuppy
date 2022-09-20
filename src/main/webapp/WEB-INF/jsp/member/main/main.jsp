<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>안아줄개 - 유기견 보호소</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" href="/static/css/style.css" type="text/css">
	
</head>
<body>

	<div id="wrap">
	
		<c:import url="/WEB-INF/jsp/member/include/header.jsp" />
		
		
		<section class="contents">
		
			<div class="banner">
				<img width="1203" height="250" alt="메인배너" src="/static/css/image/main/main banner.png">
			</div>
		
			<div class="mt-5 d-flex align-items-center justify-content-center">
				<img width="90" height="70" src="/static/css/image/main/family.jpg">
				<h4 class="main-text ml-2s">새로운 가족을 찾습니다!</h4>
			</div>
			
			<br>
			
			<div class="dogs mt-5">
			
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
				
				<div class="d-flex justify-content-center mt-4 mb-5">
					<button type="button" onclick="location.href='/member/adoption'" class="btn col-4 mt-5 mb-5">더보기</button>
				</div>
			
			</div>
		
		
		</section>
		
		
		<c:import url="/WEB-INF/jsp/member/include/footer.jsp" />
	
	
	</div>
	
	
</body>
</html>