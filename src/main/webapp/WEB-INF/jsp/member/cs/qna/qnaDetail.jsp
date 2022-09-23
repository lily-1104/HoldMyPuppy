<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 문의 작성 | 안아줄개</title>

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
                	<h3 class="text-info font-weight-bold mt-4">1:1 문의</h3>
             	</div>
          	</div>
          
          
          	<div class="mt-5 ml-5 mr-5">
             	<b class="ml-2">${qna.title }</b>
             
                <div class="mt-3 d-flex justify-content-between">
                   	<small class="ml-3 text-secondary">
                   		1:1 문의   
                   		<fmt:formatDate value="${qna.createdAt }" pattern="yyyy-MM-dd HH:mm" />
                   	</small>
                   	
                   	<div class="d-flex mr-3">
                      	<b class="mr-4"><a href="/qna/modify?id=${qna.id }" id="saveBtn" data-post-id="${qna.id }" class="text-dark">수정</a></b>
                      	<b><a href="#" class="text-dark" id="deleteBtn" data-post-id="${qna.id }">삭제</a></b>
					</div>
                </div>
            </div>
                
            <hr class="ml-5 mr-5">
          
          	<div class="contentText ml-5 p-4 d-flex justify-content-start">
             	${qna.content }
          	</div>
          
          
          	<hr class="mt-5 ml-5 mr-5">
          	
          	
          	<%-- 관리자 댓글 --%>
          	<div class="mt-4 ml-5 mr-5">
             	<div class="ml-3 mr-5">
                	<b>관리자</b>
                	<small class="ml-1 text-secondary">2022-08-23  11:27</small>
                
                	<div class="mt-3 ml-2">( 댓글 )</div>
                	
            	</div>
          	</div>
          
          	
          	<hr class="mt-5 ml-5 mr-5">
          	
          	
          	<div class="ml-5 mt-4 d-flex justify-content-start">
             	<button type="button" class="btn btn-info ml-5">목록</button>
          	</div>
       
        </section>
        
        
        <c:import url="/WEB-INF/jsp/member/include/footer.jsp" />
      	
	</div>
	
	
	<script>
	
		$(document).ready(function() {
			
			// 게시글 삭제
			$("#deleteBtn").on("click", function() {
				
				let qnaId = $(this).data("post-id");
				
				$.ajax({
					type:"get",
					url:"/qna/post/delete",
					data:{"qnaId":qnaId},
					success:function(data) {
						
						if(data.result == "success") {
							alert("삭제되었습니다.")
							location.href="/qna"
						} else {
							alert("삭제 실패")
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