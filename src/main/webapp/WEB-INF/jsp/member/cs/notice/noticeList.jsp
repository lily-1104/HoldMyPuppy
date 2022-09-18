<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 | 안아줄개</title>

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
	    
	    	<div class="mt-5 text-center d-flex align-items-center justify-content-center">
		    	<div class="intro">
		    		<h3 class="text-info font-weight-bold mt-4">공지사항</h3>
			    	
			    	<div class="mt-4">
			    		<small>안아줄개의 새로운 소식을 알려드립니다.</small>
			    	</div>
		    	</div>
		    </div>
	    	
	    	<br> <br>
	    	
	    	
	    	<div class="d-flex justify-content-center">
	    	
		    	<table class="table table-hover text-center mt-5 col-11">
		    	
		    		<thead>
		    			<tr>
		    				<th class="col-1">NO</th>
		    				<th class="col-7">제목</th>
		    				<th class="col-2">작성자</th>
		    				<th class="col-2">작성일</th>
		    			</tr>
		    		</thead>
		    		
		    		<tbody>
		    			<c:forEach var="notice" items="${noticeList }">
		    			<tr>
		    				<td>${notice.id }</td>
		    				<td><a href="/notice/detail?id=${notice.id }" class="text-dark">${notice.title }</a></td>
		    				<td>${member.nickname }</td>
		    				<td><fmt:formatDate value="${notice.createdAt }" pattern="yyyy-MM-dd" /></td>
		    			</tr>
		    			</c:forEach>
		    		</tbody>
		    	
		    	</table>
	    	</div>
	    	
	    </section>
	    
	    
	    <c:import url="/WEB-INF/jsp/member/include/footer.jsp" />
	    
	</div>

</body>
</html>