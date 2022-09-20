<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입양 혜택 | 안아줄개</title>

   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
   
   <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   
   <link rel="stylesheet" href="/static/css/style.css" type="text/css">
   
</head>
<body>

   	<div id="wrap">
   
       	<c:import url="/WEB-INF/jsp/member/include/header.jsp" />
       
       
       	<section>
       
          	<div class="mt-5 d-flex align-items-center justify-content-center">
             	<div class="intro">
                	<div class="d-flex align-items-center justify-content-center">
                   		<img width="27" height="27" alt="강아지 발바닥" src="/static/css/image/footprint2.jpg">
                   		<h3 class="text-info font-weight-bold mt-3 ml-3 mr-3">입양 혜택</h3>
                	</div>
                
                	<div class="mt-4 ml-4 text-center">
                   		<small>안아줄개 보호소 만의 차별화된 입양 혜택으로 <br>
                         	   입양 시 차별화된 혜택을 제공하여 행복한 반려 생활을 도와드립니다.
                   		</small>
                	</div>
             	</div>
          	</div>
          
          
          	<div class="mt-5 d-flex justify-content-center">
             	<div class="mt-5 d-flex">
               		<img width="400" height="265" alt="웰컴패키지" src="/static/css/image/benefit/welcome package.png">  
                  
               		<div class="d-flex align-items-center p-5 bg-light">
                  		<div>
                     		<h4 class="ml-2"><b>웰컴 패키지 증정</b></h4>
                        
                     		<div style="width:450px" class="mr-4 mt-4">
                        		아이들의 건강 및 영양 공급을 위한 <br>
                        		엄선된 사료를 증정해 드립니다.
                     		</div>
                  		</div>
               		</div>
            	</div>
         	</div>
         
         	<div class="mt-3 d-flex justify-content-center">
             	<div class="mt-5 d-flex">
               		<img width="400" alt="건강검진" src="/static/css/image/benefit/health check-up.jpg">  
                  
               		<div class="d-flex align-items-center p-5 bg-light">
                  		<div>
                     		<h4 class="ml-2"><b>기초 건강검진권</b></h4>
                        
                     		<div style="width:450px" class="mr-4 mt-4">
	                        	아이의 컨디션과 건강 체크를 위한 기초 건강 검진권을 제공해 <br>
	                        	더욱 안전한 입양을 도와드립니다.
                     		</div>
                  		</div>
               		</div>
            	</div>
         	</div>
          
          	<div class="mt-3 d-flex justify-content-center">
             	<div class="mt-5 d-flex">
               		<img width="400" alt="의료비" src="/static/css/image/benefit/medical expenses.jpg">  
                  
               		<div class="d-flex align-items-center p-5 bg-light">
                  		<div>
                     		<h4 class="ml-3"><b>의료비 할인</b></h4>
                        
                     		<div style="width:450px" class="mr-4 mt-4">
                        		연계된 모든 병원을 통해 의료비 할인을 제공하여 <br>
                        		의료비 부담을 덜어드립니다.
                     		</div>
                  		</div>
               		</div>
            	</div>
         	</div>
         
         	<div class="mt-3 d-flex justify-content-center">
             	<div class="mt-5 d-flex">
               		<img width="400" alt="강아지훈련" src="/static/css/image/benefit/dog training.jpg">  
                  
               		<div class="d-flex align-items-center p-5 bg-light">
                  		<div>
                     		<h4 class="ml-2"><b>훈련권 증정</b></h4>
                        
                     		<div style="width:450px" class="mr-4 mt-4">
                        		안정적인 반려 생활이 가능하도록 <br>
	                        	기본적인 교육이 가능한 훈련권을 제공해드립니다.
	                     	</div>
                  		</div>
               		</div>
            	</div>
         	</div>
      	</section>
      
      
      	<div class="mt-5">　</div>
      
      	<c:import url="/WEB-INF/jsp/member/include/footer.jsp" />
      
   	</div>


</body>
</html>