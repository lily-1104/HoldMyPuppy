<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 | 안아줄개</title>
</head>
<body>
	
	<div class="h-50"></div>
	
	<section class="mt-5 d-flex justify-content-center">
		
		<div class="login-box w-50 border rounded mt-5 p-5">
			
			<h4 class="text-center text-info font-weight-bold mt-4 mb-3">회원가입</h4>
				
			<div class="mt-3">
					
				<div class="mt-5 d-flex">
					<input type="text" id="loginIdInput" class="form-control col-10" placeholder="아이디를 입력해주세요">
					<button type="button" id="idIsDuplicateBtn" class="checkBtn btn btn-sm ml-3">
						<small>중복확인</small>
					</button>
				</div>
					
				<div id="duplicateIdText" class="d-none"><small class="text-danger">중복된 ID입니다</small></div>
				<div id="possibleIdText" class="d-none"><small class="text-success">사용 가능한 ID입니다</small></div>
					
					
				<input type="password" id="passwordInput" class="form-control mt-4" placeholder="비밀번호를 입력해주세요">
				<input type="password" id="passwordConfirmInput" class="form-control mt-4" placeholder="비밀번호를 한번 더 입력해주세요">
					
				<input type="text" id="nameInput" class="form-control mt-4" placeholder="이름을 입력해주세요">
					
				<input type="text" id="emailInput" class="form-control mt-4" placeholder="이메일을 입력해주세요">
					
					
				<div class="mt-4 d-flex">
					<input type="text" id="nicknameInput" class="form-control col-10" placeholder="닉네임을 입력해주세요">
					<button type="button" id="nicknameIsDuplicateBtn" class="checkBtn btn btn-sm ml-3">
						<small>중복확인</small>
					</button>
				</div>
					
				<div id="duplicateNickText" class="d-none"><small class="text-danger">중복된 닉네임입니다</small></div>
				<div id="possibleNickText" class="d-none"><small class="text-success">사용 가능한 닉네임입니다</small></div>
					
					
				<div>
					<button type="button" id="signUpBtn" class="btn btn-info btn-block mt-5">가입하기</button>
				</div>
				
			</div>
				
			<div class="mt-5"></div>
			
		</div>
			
	</section>

</body>
</html>