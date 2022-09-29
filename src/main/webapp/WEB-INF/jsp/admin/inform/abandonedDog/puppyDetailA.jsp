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
    	
        <c:import url="/WEB-INF/jsp/admin/include/headerA.jsp" />
       
       
       	<section class="mt-5">
       
          	<div class="text-center d-flex align-items-center justify-content-center">
             	<div class="intro">
                	<h3 class="text-info font-weight-bold mt-4">유기견 정보</h3>
             	</div>
          	</div>
          
          
          	<br>
          
          
          	<%-- 유기견 정보 --%>
          	<div class="mt-5 ml-5 mr-5">
             	<div class="d-flex justify-content-around">
             	
                	<img width="500" alt="유기견" src="${abandonedDog.file }">  
                
                	<div class="w-50 ml-3">
                   		<table class="table border text-center">
                      		<tbody>
                         		<tr>
                            		<th>이름</th>
                            		<td>${abandonedDog.dogName }</td>
                         		</tr>
                            
                         		<tr>
                            		<th>견종</th>
                            		<td>${abandonedDog.breed }</td>
                         		</tr>
                            
	                         	<tr>
	                            	<th>나이</th>
	                            	<td>${abandonedDog.age }세</td>
	                         	</tr>
                            
	                         	<tr>
	                            	<th>성별</th>
	                            	<td>${abandonedDog.gender }</td>
	                         	</tr>
	                            
	                         	<tr>
	                            	<th>예방 접종</th>
	                            	<td>${abandonedDog.vaccination }</td>
	                         	</tr>
                            
	                         	<tr>
	                            	<th>중성화</th>
	                            	<td>${abandonedDog.neutering }</td>
	                         	</tr>
	                      	</tbody>
	                   	</table>
                   		
                   		
                   		<%-- 좋아요 --%>
						<a href="#" class="like-btn decoration-none" data-post-id="${postDetail.post.id }">
							<span class="heart-size text-danger ml-3"><i class="bi bi-heart-fill"></i></span>
						</a>
						
						
						
						<%-- 
                   		<c:choose>
							<c:when test="${postDetail.like }">
								<a href="#" class="unlike-btn decoration-none" data-post-id="${postDetail.post.id }">
									<span class="heart-size text-danger"><i class="bi bi-heart-fill"></i> </span>
								</a>
							</c:when>
							<c:otherwise>
								<a href="#" class="like-btn decoration-none" data-post-id="${postDetail.post.id }">
									<span class="heart-size"><i class="bi bi-heart"></i> </span>
								</a>
							</c:otherwise>
						
						</c:choose>
						--%>
						
	                   	<small class="ml-2"><b>30개</b></small>
                   
                	</div>
             	</div>
             	
             	
             	<br>
             	
             	
             	<%-- 유기견 정보 내용 --%>
             	<div class="mt-5">
                	<h4 class="ml-5">Detail View</h4>
                	<hr class="ml-4">
             	</div>   
             
             	<div class="contentText mt-5 ml-5">
             
                	${abandonedDog.content }
             
             	</div>
             
             
             	<hr class="ml-4 mt-5">
             
             
             	<div class="d-flex justify-content-between">
                	<div class="ml-5 mt-4">
                   		<a href="/admin/adoption" class="btn btn-info">목록</a>
                	</div>
                
                	<div class="mr-4 mt-4">
                   		<button type="button" class="btt btn border-primary text-primary mr-3">수정</button>
                   		<button type="button" class="btt btn border-danger text-danger">삭제</button>
                	</div>
             	</div>
          	</div>
          
       	</section>
      
      
        <c:import url="/WEB-INF/jsp/admin/include/footerA.jsp" />
         
   	</div>
   	
   	
   	<script>
   	
   		$(document).ready(function() {
   			
   			
   			// 좋아요 추가
   			$(".like-btn").on("click", function(e) {
   				
   				e.preventDefault();
   				
   				// 현재 클릭된 태그 객체를 얻어 와서 좋아요를 얻어옴
   				let like = $(this).data("post-id");
   				
   				
   				alert(like);	// "post-id" 값이 들어있는지 확인용
   				
   				
   				$.ajax({
   					type:"get",
   					url:"/admin/puppy/like",
   					data:{"abandonedDogId":like},
   					success:function(data) {
   						if(data.result == "success") {
   							alert("좋아요 성공");
   							location.reload();
   							
   						} else {
   							alert("좋아요 실패");
   						}
   						
   					},
   					error:function() {
   						alert("좋아요 에러");
   					}
   				});
   				
   			});
   			
   			
   		});
   	
   	</script>
   
</body>
</html>