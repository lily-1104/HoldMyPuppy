<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보호 중인 아이들 | 안아줄개</title>

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
			
			
			<%-- 게시글 리스트 --%>
			<div class="grid">
			
              	<c:forEach var="puppies" items="${puppiesList }">    
                <div class="puppy border rounded mt-5">
                   	<a href="/admin/adoption/puppyDetail?id=${puppies.id }">
                      	<img height="250" width="250" alt="유기견 사진" src="${puppies.file }">
                   	</a>
                   
                   	<a href="/admin/adoption/puppyDetail?id=${puppies.id }">
                     	<div class="mt-4 mb-5 text-center text-dark">
                        	<b class="reviewTitle">${puppies.title }</b>
                     	</div>
                  	</a>
                </div>
             	</c:forEach>
          	</div>
          	
			
			<div class="d-flex justify-content-end mr-3 mt-5">
				<a href="/admin/adoption/puppyPost" class="btn btn-info mt-5">글쓰기</a>
			</div>
			
		</section>
		
		
		<c:import url="/WEB-INF/jsp/admin/include/footerA.jsp" />
	
	</div>
	

</body>
</html>