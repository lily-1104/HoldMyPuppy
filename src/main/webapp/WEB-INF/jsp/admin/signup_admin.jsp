<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 회원가입 | 안아줄개</title>

	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	
	<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" href="/static/css/style.css" type="text/css">
	
</head>
<body>

	<div id="wrap">
	
		<c:import url="/WEB-INF/jsp/include/header.jsp" />
		
		
		<section class="mt-5 d-flex justify-content-center">
		
			<div class="login-box w-50 border rounded mt-5 p-5">
				
				<div class="text-center d-flex align-items-center justify-content-center">
					<h4 class="text-warning font-weight-bold mt-4 mb-3 mr-3">관리자</h4>
					<h4 class="text-info font-weight-bold mt-4 mb-3">계정 생성</h4>
				</div>
				
				<div class="mt-3">
					
					<div class="mt-5 d-flex">
						<input type="text" id="loginIdInput" class="form-control" placeholder="아이디를 입력해주세요">
						<button type="button" id="idIsDuplicateBtn" class="btn btn-sm ml-3">중복확인</button>
					</div>
					
					<div id="duplicateIdText" class="d-none"><small class="text-danger">중복된 ID입니다</small></div>
					<div id="possibleIdText" class="d-none"><small class="text-success">사용 가능한 ID입니다</small></div>
					
					
					<input type="password" id="passwordInput" class="form-control mt-4" placeholder="비밀번호를 입력해주세요 (영문 소문자 / 숫자 4~16자)">
					<input type="password" id="passwordConfirmInput" class="form-control mt-4" placeholder="비밀번호를 한번 더 입력해주세요">
					
					<input type="text" id="nameInput" class="form-control mt-4" placeholder="이름을 입력해주세요">
					
					<input type="text" id="phoneNumberInput" class="form-control mt-4" placeholder="연락처를 입력해주세요 (숫자만)">
					
					
					<div class="mt-4 d-flex">
						<input type="text" id="nicknameInput" class="form-control" placeholder="닉네임을 입력해주세요">
						<button type="button" id="nicknameIsDuplicateBtn" class="btn btn-sm ml-3">중복확인</button>
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
		
		
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	
	
	</div>
	
	
	<script type="text/javascript">
	
		$(document).ready(function() {
			
			
			// 아이디 중복 체크
			var idIsDuplicateCheck = false;
			var isDuplicateId = true;
			
			$("#loginIdInput").on("input", function() {
				
				idIsDuplicateCheck = false;
				isDuplicateId = true;
				
				$("#possibleIdText").addClass("d-none");
				$("#duplicateIdText").addClass("d-none");
			});
			
			
			$("#idIsDuplicateBtn").on("click", function() {
				
				var loginId = $("#loginIdInput").val();
				
				if(loginId == "") {
					alert("아이디를 입력해주세요");
					return;
				}
				
				$.ajax({
					type:"get",
					url:"/admin/duplicate_id",
					data:{"loginId":loginId},
					success:function(data) {
						
						// 아이디 중복 체크 여부 판단
						idIsDuplicateCheck = true;
					
						if(data.is_duplicate) {	  // 중복된 경우
							$("#duplicateIdText").removeClass("d-none");
							$("#possibleIdText").addClass("d-none");
							isDuplicateId = true;
							
						} else {	// 중복되지 않은 경우
							$("#possibleIdText").removeClass("d-none");
							$("#duplicateIdText").addClass("d-none");
							isDuplicateId = false;
						}
						
					},
					error:function() {
						alert("중복 확인 에러");
					}
					
				});
				
			});
			
			
			// 닉네임 중복 체크
			var nicknameIsDuplicateCheck = false;
			var isDuplicateNickname = true;
			
			$("#nicknameInput").on("input", function() {
				
				nicknameIsDuplicateCheck = false;
				isDuplicateNickname = true;
				
				$("#possibleNickText").addClass("d-none");
				$("#duplicateNickText").addClass("d-none");
			});
			
			
			$("#nicknameIsDuplicateBtn").on("click", function() {
				
				var nickname = $("#nicknameInput").val();
				
				if(nickname == "") {
					alert("닉네임을 입력해주세요");
					return;
				}
				
				$.ajax({
					type:"get",
					url:"/admin/duplicate_nickname",
					data:{"nickname":nickname},
					success:function(data) {
						
						// 닉네임 중복 체크 여부 판단
						nicknameIsDuplicateCheck = true;
						
						if(data.is_duplicate) {	  // 중복된 경우
							$("#duplicateNickText").removeClass("d-none");
							$("#possibleNickText").addClass("d-none");
							isDuplicateNickname = true;
							
						} else {	// 중복되지 않은 경우
							$("#possibleNickText").removeClass("d-none");
							$("#duplicateNickText").addClass("d-none");
							isDuplicateNickname = false;
						}
						
					},
					error:function() {
						alert("중복 확인 에러");
					}
					
				});
				
			});
			
			
			// 유효성 검사
			$("#signUpBtn").on("click", function() {
				
				// alert();
				
				var loginId = $("#loginIdInput").val();
				var password = $("#passwordInput").val();
				var passwordConfirm = $("#passwordConfirmInput").val();
				var name = $("#nameInput").val();
				var phoneNumber = $("#phoneNumberInput").val();
				var nickname = $("#nicknameInput").val();
				
				if(loginId == "") {
					alert("아이디를 입력해주세요");
					return;
				}
				
				// 아이디 중복 체크 여부 유효성 검사
				if(!idIsDuplicateCheck) {
					alert("아이디 중복 체크를 진행해주세요");
					return;
				}
				
				// 아이디 중복 여부 유효성 검사
				if(isDuplicateId) {
					alert("중복된 아이디입니다");
					return;
				}
				
				
				if(password == "") {
					alert("비밀번호를 입력해주세요");
					return;
				}
				
				
				if(passwordConfirm == "") {
					alert("비밀번호를 한번 더 입력해주세요");
					return;
				}
				
				
				if(password != passwordConfirm) {
					alert("비밀번호가 일치하지 않습니다");
					return;
				}
				
				if(name == "") {
					alert("이름을 입력해주세요");
					return;
				}
				
				if(phoneNumber == "") {
					alert("연락처를 입력해주세요");
					return;
				}
				
				
				if(nickname == "") {
					alert("닉네임을 입력해주세요");
					return;
				}
				
				// 닉네임 중복 체크 여부 유효성 검사
				if(!nicknameIsDuplicateCheck) {
					alert("닉네임 중복 체크를 진행해주세요");
					return;
				}
				
				// 닉네임 중복 여부 유효성 검사
				if(isDuplicateNickname) {
					alert("중복된 닉네임입니다");
					return;
				}
				
				$.ajax({
					type:"post",
					url:"/admin/signup",
					data:{"loginId":loginId, "password":password, "name":name, "phoneNumber":phoneNumber, "nickname":nickname, "memberCode":'M'},
					success:function(data) {
						if(data.result == "success") {
							alert("회원 가입을 환영합니다")
							location.href = "/admin/signin";
						} else {
							alert("회원 가입에 실패하였습니다");
						}
						
					},
					error:function() {
						alert("회원가입 에러");
					}
					
				});
				
			});
			
		});
	
	</script>
	

</body>
</html>