<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page isELIgnored="false" contentType = "text/html; charset=UTF-8" %>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입양 후기 조회 | 안아줄개</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" href="/static/css/style.css" type="text/css">
	
</head>
<body>

	<div id="wrap">
   
	    <c:import url="/WEB-INF/jsp/member/include/header.jsp" />
	    
	    
	    <section class="mt-5">
	    
	    	<div class="text-center d-flex align-items-center justify-content-center">
		    	<div class="intro">
		    		<h3 class="text-info font-weight-bold mt-4">입양 후기</h3>
		    	</div>
		    </div>
		    
		    	
		    <div class="mt-5 ml-5 mr-5">
		    	<b>${review.title }</b>
		    	
		    		<div class="mt-3 d-flex justify-content-between">
				    	<small class="ml-3 text-secondary">
				    		입양 후기   
				    		<fmt:formatDate value="${review.createdAt }" pattern="yyyy-MM-dd HH:mm" />
				    	</small>
				    	<div class="d-flex mr-3">
					    	<b class="mr-4"><a href="#">수정</a></b>
					    	<b><a href="#">삭제</a></b>
				    	</div>
		    		</div>
		    		
		    	<hr>
		    </div>
		    
		    <div class="mt-5 d-flex justify-content-center">
		    	<img width="500" alt="강아지 입양 후기 사진" src="${review.file }">
		    </div>
		    
		    <div class="mt-5 d-flex justify-content-center">
		    	${review.content }
		    </div>
		    
		    <hr class="mt-5 ml-5 mr-5">
		    
		    <div class="mt-4 ml-5 mr-5">
		    	<div class="ml-5 mr-5">
		    		<b class="ml-5">앙꼬</b>
		    		<small class="ml-4 text-secondary">2022-08-25  09:11</small>
		    		
		    		<div class="mt-3 ml-5">( 댓글 )</div>
		    		
		    		<div class="d-flex mr-3 mt-3 justify-content-end">
		    			<b class="mr-4"><a href="#">수정</a></b>
					    <b><a href="#">삭제</a></b>
		    		</div>
		    		
		    		<hr class="ml-4s mr-2">
		    	</div>
		    </div>
		    
		    <div class="mt-4 ml-5 mr-5">
		    	<div class="ml-5 mr-5">
		    		<b class="ml-5">춘식이</b>
		    		<small class="ml-4 text-secondary">2022-08-25  09:11</small>
		    		
		    		<div class="mt-3 ml-5">( 댓글 )</div>
		    		
		    		<div class="d-flex mr-3 mt-3 justify-content-end">
		    			<b class="mr-4"><a href="#">수정</a></b>
					    <b><a href="#">삭제</a></b>
		    		</div>
		    	</div>
		    </div>
		    
		    <div class="d-flex justify-content-center">
		    	<textarea rows="5" class="form-control col-10 mt-5" placeholder="댓글을 남겨주세요 / 로그인이 필요합니다."></textarea>
	    	</div>
		    
		    <div class="mr-5 mt-2 d-flex justify-content-end">
		    	<button type="button" class="btn mr-5">작성</button>
	    	</div>
	    	
	    	<div class="ml-5 mt-4 d-flex justify-content-start">
		    	<button type="button" onclick="location.href='/review'" class="btn btn-info ml-5">목록</button>
	    	</div>
	    
	    </section>
      
      
      	<c:import url="/WEB-INF/jsp/member/include/footer.jsp" />
      	
	</div>
	

</body>
</html>