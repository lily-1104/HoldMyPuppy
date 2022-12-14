<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입양 후기 수정 | 안아줄개</title>

   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
   
   <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
   
   <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
   <link rel="stylesheet" href="/static/css/style.css" type="text/css">
   
</head>
<body>

   	<div id="wrap">
   
       	<c:import url="/WEB-INF/jsp/member/include/header.jsp" />
       
       
       	<section class="mt-5 d-flex justify-content-center">
         
         	<div class="mt-5">
             	<div class="intro">
                	<h3 class="text-center text-info font-weight-bold mt-3">입양 후기 수정</h3>
                
                	<div class="mt-4 text-center">
                   		<small>새로운 가족과의 소중한 후기를 남겨주셔서 감사드립니다.</small>
                	</div>
             	</div>
             
             	<br> 
             
             	<div class="post-box border rounded mt-5 p-5">
         
	               	<div class="mt-3">
	                  
	                  	<label class="mt-2"><b>제목</b></label>					<%-- 기존에 작성된 데이터를 불러오려면 value 안에 넣기 --%>
	                  	<input type="text" id="titleInput" class="form-control mt-2" value="${review.title }">
	                  
	                  	<label class="mt-5"><b>아이 이름</b></label>
	                  	<input type="text" id="dogNameInput" class="form-control mt-2" value="${review.dogName }">
	                  
	                  	<label class="mt-5"><b>견종</b></label>
	                  	<input type="text" id="breedInput" class="form-control mt-2" value="${review.breed }">
	                  
	                  	<label class="mt-5"><b>내용</b></label>
	                  	<textarea rows="15" id="contentInput" class="form-control mt-2">${review.content }</textarea>
	                  
	                  	<div>
	                     	<button type="button" id="saveBtn" data-post-id="${review.id }" class="btn btn-info btn-block mt-5">수정하기</button>
	                  									<%-- data-post-id 사용시 '페이지 소스 보기'를 통해서 값이 있는지 없는지 먼저 확인하기 --%>
	                  	</div>
	               	</div>
	            
	               	<div class="mt-5"></div>
	            </div>
         	</div>
         
      	</section>
      
      
       	<c:import url="/WEB-INF/jsp/member/include/footer.jsp" />
         
   	</div>
   
   
   	<script>
   
      	$(document).ready(function() {
         
         	// 게시글 수정
         	$("#saveBtn").on("click", function() {
            	
            	let title = $("#titleInput").val();
            	let dogName = $("#dogNameInput").val();
            	let breed = $("#breedInput").val();
            	let content = $("#contentInput").val();
            	let reviewId = $(this).data("post-id");
            
            	if(title == "") {
               		alert("제목을 입력해주세요");
               		return;
            	}
            
            	if(dogName == "") {
               		alert("강아지의 이름을 입력해주세요");
               		return;
            	}
            
            	if(breed == "") {
               		alert("견종을 입력해주세요");
               		return;
            	}
            
            	if(content == "") {
               		alert("후기를 작성해주세요");
               		return;
            	}
            	
            	// alert(reviewId);		=> reviewId 값 확인용
            	
            
            	// api 호출
            	$.ajax({
               		type:"post",
               		url:"/review/post/update",
               		data:{"reviewId":reviewId, "title":title, "dogName":dogName, "breed":breed, "content":content},
               
               		success:function(data) {
                  		if(data.result == "success") {
                     		alert("후기가 수정되었습니다.");
                     		location.href= "/review/detail?id=${review.id}";
                     		
                  		} else {
                     		alert("후기 수정을 실패하였습니다.");
                  		}
                  
               		},
               		error:function() {
                  		alert("수정 에러");
               		}
               
            	});
         	});
      	});
   
   	</script>
   

</body>
</html>