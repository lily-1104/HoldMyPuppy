<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


	<header>
		
		<div class="logo d-flex align-items-center justify-content-center">  
			<a href="/main">
				<img alt="메인 로고" src="/resources/img/main_logo.jpg">
						<!--  <h1>안아줄개</h1>--> 
			</a>
		</div>
		
		
		<nav class="sub-menu d-flex align-items-center justify-content-end">
			<c:if test="${empty memberId }">
				<ul class="nav">
					<li class="nav-item"><a href="/member/signin" class="nav-link text-dark">LOGIN</a>
					<li class="nav-item"><a href="/member/signup" class="nav-link text-dark">JOIN</a>
				</ul>
			</c:if>
			
			
			<c:if test="${not empty memberId }">
				<ul class="nav">
					<div class="d-flex align-items-center">
						<b><div class="mr-1">${memberNickname }</b></div>님 
						<li class="nav-item"><a href="#" class="nav-link ml-3 text-dark">MY PAGE</a>
						<li class="nav-item"><a href="/member/signout" class="nav-link text-dark">LOGOUT</a>
					</div>
				</ul>
			</c:if>
		</nav>
		 
	</header>
	
	
	<nav class="main-menu mt-4">
		<ul class="nav nav-fill">
			<li class="nav-item"><a href="/shelter" class="nav-link main-link">ABOUT</a></li>
			<li class="nav-item"><a href="#" class="nav-link main-link">입양 안내</a></li>
			<li class="nav-item"><a href="/review" class="nav-link main-link">입양 후기</a></li>
			<li class="nav-item"><a href="#" class="nav-link main-link">고객센터</a></li>
		</ul>
	</nav>
	

	
	