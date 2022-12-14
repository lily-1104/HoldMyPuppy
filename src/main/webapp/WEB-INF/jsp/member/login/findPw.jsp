<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기 | 안아줄개</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" href="/static/css/style.css" type="text/css">
	
</head>
<body>

	<div id="wrap">
	
        <c:import url="/WEB-INF/jsp/member/include/header.jsp" />
      
      
      	<section class="mt-5 d-flex justify-content-center">
      	
         	<div class="login-box w-50 border rounded mt-5 p-5">
         	
            	<h4 class="text-center text-info font-weight-bold mt-4">비밀번호 찾기</h4>
            
            	<small class="mt-4 d-flex justify-content-center">이메일로 임시 비밀번호를 전송해드립니다.</small>
            
            	<form id="loginForm">
	                <input type="text" id="loginIdInput" class="form-control mt-5" placeholder="아이디를 입력해주세요">
	                <input type="password" id="passwordInput" class="form-control mt-4" placeholder="이메일 주소를 입력해주세요   ex) lily@gmail.com">
            
	                <div>
	                  	<button type="submit" id="loginBtn" class="btn btn-info btn-block mt-5">비밀번호 전송하기</button>
	                </div>
            	</form>
            
            	<div class="mt-5"></div>
            
         	</div>
         	
      </section>
      
      
      <c:import url="/WEB-INF/jsp/member/include/footer.jsp" />
	
	</div>
	
	
</body>
</html>