<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입양 후기 | 안아줄개</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" href="/static/css/style.css" type="text/css">
	
</head>
<body>

	<div id="wrap">
    	
	    <c:import url="/WEB-INF/jsp/admin/include/headerA.jsp" />
	    
	    
	    <section class="mt-5">
       
          	<div class="mt-5 text-center d-flex align-items-center justify-content-center">
             	<div class="intro">
                	<h3 class="text-info font-weight-bold mt-4">입양 후기</h3>
                
                	<div class="mt-4">
                   		<small>새로운 가족과의 행복한 입양 후기를 남겨주세요.</small>
                	</div>
             	</div>
          	</div>
          
          	<br> <br>
          
          
           	<div class="grid mt-3">
              	<c:forEach var="review" items="${reviewList }"> 
                <div class="puppy border rounded mt-5">
                   	<a href="/admin/review/detail?id=${review.id }">
                      	<img height="250" width="250" alt="강아지 입양 후기 사진" src="${review.file }">
                   	</a>
                 	
                   	<a href="/admin/review/detail?id=${review.id }">
                     	<div class="mt-4 mb-5 text-center text-dark">
                        	<b class="reviewTitle">${review.title }</b>
                     	</div>
                  	</a>
                </div>
             	</c:forEach>
          	</div>
          
         	
         	<div class="mt-5">　</div>
         	<br>
         	
               
       	</section>

      
      	<c:import url="/WEB-INF/jsp/admin/include/footerA.jsp" />
      	
	</div>

</body>
</html>