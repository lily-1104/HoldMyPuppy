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
			
			<form id="signUpForm" method="post" action="/user/sign_up">
				
				<div class="mt-3">
						
					<div class="mt-5 d-flex">
						<input type="text" id="loginId" name="loginId" class="form-control col-10" placeholder="아이디를 입력해주세요 (4~16자)">
						<button type="button" id="loginIdCheckBtn" class="checkBtn btn btn-sm ml-3">
							<small>중복확인</small>
						</button>
					</div>
					
					<%-- 아이디 체크 결과 --%>
					<div id="idCheckLength" class="small text-danger d-none">ID를 4자 이상 16자 이하로 입력해주세요</div>
					<div id="idCheckDuplicated" class="small text-danger d-none">중복된 ID입니다</div>
					<div id="idCheckOk" class="small text-success d-none">사용 가능한 ID입니다</div>
						
						
					<input type="password" id="password" name="password" class="form-control mt-4" placeholder="비밀번호를 입력해주세요 (4~16자)">
					<input type="password" id="confirmPassword" name="confirmPassword" class="form-control mt-4" placeholder="비밀번호를 한번 더 입력해주세요">
						
					<input type="text" id="name" name="name" class="form-control mt-4" placeholder="이름을 입력해주세요">
						
					<input type="text" id="email" name="email" class="form-control mt-4" placeholder="이메일을 입력해주세요">
						
						
					<div class="mt-4 d-flex">
						<input type="text" id="nickname" name="nickname" class="form-control col-10" placeholder="닉네임을 입력해주세요">
						<button type="button" id="nicknameCheckBtn" class="checkBtn btn btn-sm ml-3">
							<small>중복확인</small>
						</button>
					</div>
					
					<%-- 닉네임 체크 결과 --%>
					<div id="nickCheckDuplicated" class="small text-danger d-none">중복된 닉네임입니다</div>
					<div id="nickCheckOk" class="small text-success d-none">사용 가능한 닉네임입니다</div>
						
						
					<div>
						<button type="button" id="signUpBtn" class="btn btn-info btn-block mt-5">가입하기</button>
					</div>
				</div>
			</form>	
				
			<div class="mt-5"></div>
			
		</div>
			
	</section>
	
	
	<script>
	
		$(document).ready(function() {
			
			// 아이디 중복 확인
			$('#loginIdCheckBtn').on('click', function() {
				
				// alert("중복 확인");
				
				// 경고 문구 초기화
				$('#idCheckLength').addClass("d-none");
				$('#idCheckDuplicated').addClass("d-none");
				$('#idCheckOk').addClass("d-none");
				
				let loginId = $('#loginId').val().trim();
				
				if (loginId.length < 4) {
					
					$('#idCheckLength').removeClass('d-none');
					return;
				}
				
				if (loginId.length > 16) {
					
					$('#idCheckLength').removeClass('d-none');
					return;
				}
				
				
				// AJAX - 중복 확인
				$.ajax({
					
					// request
					url:"/user/is_duplicated_id"
					, data:{"loginId":loginId}
					
					// response
					, success:function(data) {
						
						if (data.isDuplicatedId) {	// 중복
							
							$('#idCheckDuplicated').removeClass('d-none');
						
						} else {	// 중복 아님 (사용 가능)
							
							$('#idCheckOk').removeClass('d-none');
						}
					}
					, error:function(request, status, errer) {
						
						alert("아이디 중복 확인에 실패했습니다");
						
					}
				});
			});
			
			
			// 닉네임 중복 확인
			$('#nicknameCheckBtn').on('click', function() {
				
				// alert("중복 확인");
				
				$('#nickCheckDuplicated').addClass("d-none");
				$('#nickCheckOk').addClass("d-none");
				
				let nickname = $('#nickname').val().trim();
				
				$.ajax({
					
					url:"/user/is_duplicated_nickname"
					, data:{"nickname":nickname}
				
					, success:function(data) {
						
						if (data.isDuplicatedNickname) {
							
							$('#nickCheckDuplicated').removeClass('d-none');
							
						} else {
							
							$('#nickCheckOk').removeClass('d-none');
						}
					}
					, error:function(request, status, error) {
						
						alert("닉네임 중복 확인에 실패했습니다");
					}
					
				});
			});
			
			
			// 회원가입 submit
			$('#signUpBtn').on('click', function(e) {
				
				e.preventDefault();
				
				// alert("가입");
				
				// validation
				let loginId = $('#loginId').val().trim();
				let password = $('#password').val();
				let confirmPassword = $('#confirmPassword').val();
				let name = $('#name').val().trim();
				let email = $('#email').val().trim();
				let nickname = $('#nickname').val().trim();
				
				if (loginId == '') {
					alert("아이디를 입력해주세요");
					return false;
				}
				
				if (password == '') {
					alert("비밀번호를 입력해주세요");
					return false;
				}
				
				// 비밀번호 길이 설정
				if (password.length < 4) {
					
					alert("비밀번호를 4자 이상 16자 이하로 입력해주세요");
					return false;
				}
				
				if (password.length > 16) {
					
					alert("비밀번호를 4자 이상 16자 이하로 입력해주세요");
					return false;
				}
				
				if (confirmPassword == '') {
					alert("비밀번호를 한번 더 입력해주세요");
					return false;
				}
				
				if (password != confirmPassword) {
					alert("비밀번호가 일치하지 않습니다");
					return false;
				}
				
				if (name == '') {
					alert("이름을 입력해주세요");
					return false;
				}
				
				if (email == '') {
					alert("이메일을 입력해주세요");
					return false;
				}
				
				if (nickname == '') {
					alert("닉네임을 입력해주세요");
					return false;
				}
				
				// 아이디, 닉네임 중복 확인 후 사용 가능한지 확인
				if ($('#idCheckOk').hasClass('d-none')) {
					
					alert("아이디 중복 확인을 다시 해주세요");
					return false;
				}
				
				if ($('#nickCheckOk').hasClass('d-none')) {
					
					alert("닉네임 중복 확인을 다시 해주세요");
					return false;
				}
				
				// 서버로 보내기
				let url = $(this).attr('action');
				
				// alert(url);
				
				let params = $(this).serialize();
				console.log(params);
				
				$.post(url, params)
				.done(function(data) {
					
					if(data.code == 200) {
						
						alert("회원가입 되셨습니다. 로그인 해주세요");
						location.href = "/user/signin";
						
					} else {
						
						alert(data.errorMessage);
					}
				});
				
			});
			
		});
		
	
	
	</script>

</body>
</html>