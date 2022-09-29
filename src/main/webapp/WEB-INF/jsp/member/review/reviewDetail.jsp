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
		    
		    
		    <%-- 후기 내용 --%>
		    <div class="mt-5 ml-5 mr-5">
		    	<b class="ml-2">${review.title }</b>
		    	
		    		<div class="mt-3 d-flex justify-content-between">
				    	<small class="ml-3 text-secondary">
				    		입양 후기 　  
				    		<fmt:formatDate value="${review.createdAt }" pattern="yyyy-MM-dd HH:mm" />
				    	</small>
				    	
					    <div class="d-flex mr-3">
						    <b class="mr-4"><a class="text-dark" href="/review/modify?id=${review.id }">수정</a></b>
						    <b><a href="#" class="text-dark" id="deleteBtn" data-post-id="${review.id }">삭제</a></b>
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
		    <div class="mt-5 ml-5 mr-5">
			    <b class="text-secondary ml-5 mr-5">댓글</b>
			    <hr class="mt-2 ml-4 mr-5">
		    </div>
		    
		    <c:forEach var="rvCommentList" items="${reviewCommentList }">
		    <div class="mt-4 ml-5 mr-5">
		    	<div class="ml-5 mr-5">
		    		<b class="ml-3">${rvCommentList.member.nickname }</b>
		    		<small class="ml-4 text-secondary">
		    			<fmt:formatDate value="${rvCommentList.rvComment.createdAt }" pattern="yyyy-MM-dd HH:mm" />
		    				<%-- ${rvCommentList.rvComment.createdAt }
		    						=> 위에서 정의한 <var="rvCommentList">의 rvComment(comment 패키지의 model)의 createdAt임
		    							(중간에 rvComment를 넣지 않으면 createdAt 값 출력 안됨) --%>
                	</small>
		    		
		    		<div class="mt-3 ml-4 mb-3">${rvCommentList.rvComment.content }</div>
		    		
		    		<div class="d-flex mr-3 mt-3 justify-content-end">
		    			<b class="mr-4"><a href="#">수정</a></b>
		    			<b><a href="#" class="commentDeleteBtn text-dark" data-post-id="${rvCommentList.rvComment.id }">삭제</a></b>
		    		</div>
		    		
		    		<hr class="ml-4s mr-2">
		    		
		    	</div>
		    </div>
		    </c:forEach>
		    
		    
		    
		    <%-- 회원만 댓글 입력창 노출 --%>
		    <c:if test="${not empty memberId }">
			    <div class="d-flex justify-content-center">
	             	<textarea rows="5" id="commentInput${review.id }" class="form-control col-10 mt-5" placeholder="댓글을 남겨주세요"></textarea>
	          	</div>
	          	
	          	<div class="mr-5 mt-2 d-flex justify-content-end">
	             	<button type="button" data-post-id="${review.id }" class="comment-btn btn mr-5">작성</button>
	          	</div>
          	</c:if>
            
            
          
          	<div class="ml-5 mt-4 d-flex justify-content-start">
             	<button type="button" onclick="location.href='/review'" class="btn btn-info ml-5">목록</button>
          	</div>
		    
	    </section>
      
      
      	<c:import url="/WEB-INF/jsp/member/include/footer.jsp" />
      	
	</div>
	
	
	<script>
	
		$(document).ready(function() {
			
			// 댓글 입력
			$(".comment-btn").on("click", function() {
				
				// reviewId 얻어오기
				let reviewId = $(this).data("post-id");
				
				// 작성한 댓글 가져오기
				let content = $("#commentInput" + reviewId).val();
				
				
				// alert(reviewId);
				
				$.ajax({
					type:"post",
					url:"/review/comment/create",
					data:{"reviewId":reviewId, "content":content},
					success:function(data) {
						if(data.result == "success") {
							alert("댓글이 등록되었습니다");
							location.reload();
							
						} else {
							alert("댓글 작성을 실패했습니다");
						}
						
					},
					error:function() {
						alert("댓글 작성 에러");
					}
				});
				
			});
			
			
			
			// 댓글 삭제 (댓글 삭제는 버튼이 여러개라서 id가 아닌 class로 설정)
			$(".commentDeleteBtn").on("click", function() {
				
				let commentId = $(this).data("post-id");
				
				$.ajax({
					type:"get",
					url:"/review/comment/delete",
					data:{"commentId":commentId},
					success:function(data) {
						
						if(data.result == "success") {
							alert("삭제되었습니다")
							location.reload();
							
						} else {
							alert("삭제를 실패했습니다")
						}
						
					},
					error:function() {
						alert("삭제 에러");
					}
					
				});
			});
			
			
			
			// 입양 후기 게시글 삭제
			$("#deleteBtn").on("click", function() {
				
				let reviewId = $(this).data("post-id");
				
				$.ajax({
					type:"get",
					url:"/review/post/delete",
					data:{"reviewId":reviewId},
					success:function(data) {
						
						if(data.result == "success") {
							alert("삭제되었습니다")
							location.href="/review"
							
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