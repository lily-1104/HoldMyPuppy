<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인 | 안아줄개</title>

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
					<h4 class="text-info font-weight-bold mt-4 mb-3">로그인</h4>
				</div>
				
				<form id="loginForm">
					<input type="text" id="loginIdInput" class="form-control mt-5" placeholder="관리자 아이디">
					<input type="password" id="passwordInput" class="form-control mt-4" placeholder="관리자 비밀번호">
				
				
					<div class="mt-4 ml-2 d-flex justify-content-start align-items-center">
						 <small class="d-flex align-items-center"><input type="checkbox" class="mr-1">자동 로그인</small>
					</div>
					
					<div>
						<button type="submit" id="loginBtn" class="btn btn-info btn-block mt-5">관리자 로그인</button>
						<button type="button" class="btn btn-block mt-4 mb-5">관리자 계정 생성하기</button>
					</div>
				</form>
				
				
				
				<div class="d-flex justify-content-center">
					<a href="#"><small class="text-secondary mr-5 d-flex justify-content-center">아이디 찾기</small></a>
					<small class="text-secondary mr-3 ml-3"> | </small>
					<a href="#"><small class="text-secondary ml-5 d-flex justify-content-center">비밀번호 찾기</small></a>
				</div>
				
				<div class="mt-5"></div>
			
			</div>
			
		</section>
		
		
		<c:import url="/WEB-INF/jsp/include/footer.jsp" />
	
	
	</div>
	
	
	<script>
	
		$(document).ready(function() {
			
			
			$("#loginForm").on("submit", function(e) {
				
				// 해당 이벤트가 가지고 있는 기능을 비활성화
				e.preventDefault();
				
				// 로그인 api 호출 (loginId와 password를 통해서 로그인 진행)
				let loginId = $("#loginIdInput").val();
				let password = $("#passwordInput").val();
				
				if(loginId == "") {
					alert("아이디를 입력해주세요");
					return;
				}
				
				if(password == "") {
					alert("비밀번호를 입력해주세요");
					return;
				}
				
				$.ajax({
					type:"post",
					url:"/admin/signin",
					data:{"loginId":loginId, "password":password},
					success:function(data) {
						if(data.result == "success") {
							location.href = "/main";
						} else {
							alert("아이디와 비밀번호를 확인해주세요");
						}
						
					},
					error:function() {
						alert("로그인 에러");
					}
					
				});
				
			});
			
		});
	
	</script>

</body>
</html>