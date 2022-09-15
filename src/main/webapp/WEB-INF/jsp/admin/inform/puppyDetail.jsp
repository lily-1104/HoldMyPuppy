<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유기견 정보 | 안아줄개</title>

   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
   
   <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   
   <link rel="stylesheet" href="/static/css/style.css" type="text/css">
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
   
</head>
<body>

    <div id="wrap">
    	
        <c:import url="/WEB-INF/jsp/admin/include/header.jsp" />
       
       
       	<section class="mt-5">
       
          	<div class="text-center d-flex align-items-center justify-content-center">
             	<div class="intro">
                	<h3 class="text-info font-weight-bold mt-4">유기견 정보</h3>
             	</div>
          	</div>
          
          	<br>
          
          	<div class="mt-5 ml-5 mr-5">
          	
             	<div class="d-flex justify-content-around">
                	<img width="500" alr="유기견" src="data:image/jpeg;base64,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">  
                
                
                	<div class="w-50 ml-3">
                   		<table class="table border text-center">
                      		<tbody>
                         		<tr>
                            		<th>이름</th>
                            		<td>종이</td>
                         		</tr>
                            
                         		<tr>
                            		<th>견종</th>
                            		<td>포메라니안</td>
                         		</tr>
                            
	                         	<tr>
	                            	<th>나이</th>
	                            	<td>2세</td>
	                         	</tr>
                            
	                         	<tr>
	                            	<th>성별</th>
	                            	<td>남아</td>
	                         	</tr>
	                            
	                         	<tr>
	                            	<th>예방 접종</th>
	                            	<td>완료</td>
	                         	</tr>
                            
	                         	<tr>
	                            	<th>중성화</th>
	                            	<td>완료</td>
	                         	</tr>
	                      	</tbody>
	                   	</table>
                   
	                   	<span class="text-danger ml-3"><i class="bi bi-heart" ></i></span>
	                   	<small class="ml-2"><b>30개</b></small>
                   
                	</div>
             	</div>
             
             	<br>
             
             	<div class="mt-5">
                	<h4 class="ml-5">Detail View</h4>
                	<hr class="ml-4">
             	</div>   
             
             	<div class="mt-5 ml-5">
             
                	유기견 정보 내용
             
             
             
             
             
             	</div>
             
             
             	<hr class="ml-4 mt-5">
             
             	<div class="d-flex justify-content-between">
                	<div class="ml-5 mt-4">
                   		<button type="button" class="btn btn-info">목록</button>
                	</div>
                
                	<div class="mr-4 mt-4">
                   		<button type="button" class="btt btn border-secondary text-primary mr-3">수정</button>
                   		<button type="button" class="btt btn border-secondary text-danger">삭제</button>
                	</div>
             	</div>
          	</div>
          
       	</section>
      
      
        <c:import url="/WEB-INF/jsp/admin/include/footer.jsp" />
         
   	</div>
   
</body>
</html>