<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 | 안아줄개</title>
</head>
<body>
	
	<div class="h-50"></div>
	
	<section class="mt-5 d-flex justify-content-center">
		
		<div class="login-box w-50 border rounded mt-5 p-5">
			
			<h4 class="text-center text-info font-weight-bold mt-4">로그인</h4>
				
			<form id="loginForm">
				<input type="text" id="loginIdInput" class="form-control mt-5" placeholder="아이디">
				<input type="password" id="passwordInput" class="form-control mt-4" placeholder="비밀번호">
				
				<div>
					<button type="submit" id="loginBtn" class="btn btn-info btn-block mt-5">로그인</button>
					<button type="button" onclick="location.href='/user/signup'" class="btn btn-light btn-block mt-4 mb-5">회원가입</button>
				</div>
			</form>
				
				
			<div class="d-flex justify-content-center">
				<a href="/user/find_id"><small class="text-secondary mr-5 d-flex justify-content-center">아이디 찾기</small></a>
				<small class="text-secondary mr-3 ml-3"> | </small>
				<a href="/user/find_pw"><small class="text-secondary ml-5 d-flex justify-content-center">비밀번호 찾기</small></a>
			</div>
				
			<div class="mt-5"></div>
			
		</div>
			
	</section>

</body>
</html>