<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유기견 정보 | 안아줄개</title>
</head>
<body>

	<div class="h-50"></div>
	
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
             	
  				<img width="500" alt="유기견" src="${abandonedDog.imagePath }">  
                
				<div class="w-50 ml-3">
                   	<table class="table border text-center">
                      	<tbody>
                         	<tr>
                            	<th>강아지 이름</th>
                            	<td>${abandonedDog.dogName }</td>
                         	</tr>
                            
                         	<tr>
                            	<th>견종</th>
                            	<td>${abandonedDog.breed }</td>
                         	</tr>
                            
	                         <tr>
	                            <th>나이</th>
	                            <td>${abandonedDog.age }</td>
	                         </tr>
                            
	                         <tr>
	                            <th>성별</th>
	                            <td>${abandonedDog.gender }</td>
	                         </tr>
	                            
	                         <tr>
	                            <th>중성화 유무</th>
	                            <td>${abandonedDog.neutralization }</td>
	                         </tr>
                            
	                         <tr>
	                            <th>견BTI</th>
	                            <td>${abandonedDog.mbti }</td>
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
             <div class="mt-5 ml-3">
                <h4 class="ml-2 mb-3">Detail View</h4>
                
                <small class="text-secondary ml-4">
                	${user.nickname }
                	<fmt:formatDate value="${abandonedDog.createdAt }" pattern="yyyy-MM-dd HH:mm" />
                </small>
                
                <hr>
             </div>   
             
             <div class="contentText mt-5 ml-5">
             
                ${abandonedDog.content }
             
             </div>
             
             
             <hr class="ml-4 mt-5">
             
             
             <div class="d-flex justify-content-between">
                <div class="ml-5 mt-4">
                   	<a href="/abandoned_dog" class="btn btn-info">목록</a>
                </div>
                
                <div class="mr-4 mt-4">
                   	<button type="button" class="btt btn border-primary text-primary mr-3">수정</button>
                   	<button type="button" class="btt btn border-danger text-danger">삭제</button>
                </div>
             </div>
		</div>
          
	</section>
	
	
	
	
	
	

</body>
</html>