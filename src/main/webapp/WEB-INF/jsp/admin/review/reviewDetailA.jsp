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
   
	    <c:import url="/WEB-INF/jsp/admin/include/headerA.jsp" />
	    
	    
	    <section class="mt-5">
	    
	    	<div class="text-center d-flex align-items-center justify-content-center">
		    	<div class="intro">
		    		<h3 class="text-info font-weight-bold mt-4">입양 후기</h3>
		    	</div>
		    </div>
		    
		    
		    <%-- 후기 내용 --%>
		    <div class="mt-5 ml-5 mr-5">
		    	<b class="ml-2">${review.title }</b>
		    	
		    		<div class="mt-3 d-flex justify-content-between">
				    	<small class="ml-3 text-secondary">
				    		입양 후기  　  
				    		<fmt:formatDate value="${review.createdAt }" pattern="yyyy-MM-dd HH:mm" />
				    	</small>
				    	
					    <div class="d-flex mr-3">
						    <b><a href="#" class="text-dark" id="deleteBtn" data-delete-id="${review.id }">삭제</a></b>
					    </div>
		    		</div>
		    		
		    	<hr>
		    </div>
		    
		    
		    <div class="mt-5 d-flex justify-content-center">
		    	<img width="500" alt="강아지 입양 후기 사진" src="${review.file }">
		    </div>
		    
		    <div class="contentText mt-5 d-flex justify-content-center">
		    	<div class="mt-5">${review.content }</div>
		    </div>
		    
		    
		    
		    <%-- 댓글 --%>
		    
		    
		    
		    <%-- 댓글 입력 --%>
            
            
          
          	<div class="ml-5 mt-4 d-flex justify-content-start">
             	<button type="button" onclick="location.href='/admin/review'" class="btn btn-info ml-5">목록</button>
          	</div>
		    
	    </section>
      
      
      	<c:import url="/WEB-INF/jsp/admin/include/footerA.jsp" />
      	
	</div>
	
	
	<script>
	
		$(document).ready(function() {
			
			
			// 입양 후기 게시글 삭제
			$("#deleteBtn").on("click", function() {
				
				let reviewId = $(this).data("delete-id");
				
				$.ajax({
					type:"get",
					url:"/review/post/delete",
					data:{"reviewId":reviewId},
					success:function(data) {
						
						if(data.result == "success") {
							alert("삭제되었습니다")
							location.href="/admin/review"
							
						} else {
							alert("삭제를 실패했습니다")
						}
						
					},
					error:function() {
						alert("삭제 에러");
					}
					
				});
			});
			
		});
	
	</script>

</body>
</html>