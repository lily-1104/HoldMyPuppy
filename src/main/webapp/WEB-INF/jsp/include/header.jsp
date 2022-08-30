<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


	<header>
		
		<div class="logo d-flex align-items-center justify-content-center">  
			<a href="/main"><h1>안아줄개</h1></a>
		</div>
		
		
		<nav class="sub-menu d-flex align-items-end justify-content-end">
			<ul class="nav">
				<li class="nav-item"><a href="#" class="nav-link text-dark">LOGIN</a>
				<li class="nav-item"><a href="#" class="nav-link text-dark">JOIN</a>
			</ul>
		</nav>
		
		<c:if test="${not empty userId }">
			<b><div class="mr-3">${userName }</b>님 
			<a href="/member/signout">로그아웃</a></div>
		</c:if>
		 
	</header>
	
	<nav class="main-menu mt-3">
		<ul class="nav nav-fill">
			<li class="nav-item"><a href="#" class="nav-link main-link text-dark">ABOUT</a></li>
			<li class="nav-item"><a href="#" class="nav-link main-link text-dark">입양 안내</a></li>
			<li class="nav-item"><a href="#" class="nav-link main-link text-dark">입양 후기</a></li>
			<li class="nav-item"><a href="#" class="nav-link main-link text-dark">고객센터</a></li>
		</ul>
	</nav>
	
	<div class="banner bg-success">
		<img alt="메인배너" src="">
	</div>
	
	