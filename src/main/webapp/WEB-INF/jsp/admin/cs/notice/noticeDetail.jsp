<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 조회 | 안아줄개</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" href="/static/css/style.css" type="text/css">
	
</head>
<body>

	<div id="wrap">
   
	    <c:import url="/WEB-INF/jsp/admin/include/header.jsp" />
	    
	    
	    <section class="mt-5">
	    
	    	<div class="text-center d-flex align-items-center justify-content-center">
		    	<div class="intro">
		    		<h3 class="text-info font-weight-bold mt-4">공지사항 조회</h3>
		    	</div>
		    </div>
		    
		    
		    <div class="mt-5 ml-5 mr-5">
		    	<b>공지사항입니다.</b>
		    	
		    		<div class="mt-3 d-flex justify-content-between">
				    	<small class="ml-3 text-secondary">공지사항   2022-08-26 15:22</small>
				    	<div class="d-flex mr-3">
					    	<b class="mr-4"><a href="#">수정</a></b>
					    	<b><a href="#">삭제</a></b>
				    	</div>
		    		</div>
		    		
		    	<hr>
		    </div>
		    
		    <div class="mt-5 d-flex justify-content-center">
		    	<img width="500" alt="강아지 입양 후기 사진" src="/static/css/image/main/family.jpg">
		    </div>
		    
		    <div class="mt-5 d-flex justify-content-center">
		    	공지사항 작성
		    </div>
		    
	    	<div class="ml-5 mt-5 d-flex justify-content-start">
		    	<button type="button" class="btn btn-info ml-5">목록</button>
	    	</div>
	    
	    </section>
      
      
      	<c:import url="/WEB-INF/jsp/admin/include/footer.jsp" />
      	
	</div>
	    

</body>
</html>