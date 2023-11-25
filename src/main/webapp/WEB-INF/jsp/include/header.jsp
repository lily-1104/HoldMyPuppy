<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<header>
		
    <div>
    	
    	<%-- 로고 --%>
    	<div class="d-flex justify-content-center">
    	
    		<div class="d-flex mx-5"></div>
    		
	        <div class="logo d-flex justify-content-center align-items-center mx-5">
	            <div class="mt-2 mx-5">  
	                <a href="/main">
	                    <img width="400" alt="메인 로고" src="/static/img/include/header/main_logo_blue.png">
	               	</a>
	            </div>
	        </div>
      		
      		
	        <%-- 로그인 여부 --%>
	        <div class="login d-flex justify-content-end ml-5">
		        <div class="d-flex ml-5">
		            <c:if test="${empty userId }">
		                <ul class="nav d-flex align-items-end justify-content-end">
		                    <li class="nav-item"><a href="/user/signin" class="nav-link text-dark">LOGIN</a>
		                  	<li class="nav-item"><a href="/user/signup" class="nav-link text-dark">JOIN</a>
		               	</ul>
		            </c:if>
		            
		            <c:if test="${not empty userId }">
		                <ul class="nav">
		                    <div class="d-flex align-items-center">
		                     	<b><div class="mr-1">${userNickname }</div></b>님 
				                <li class="nav-item"><a href="#" class="nav-link ml-3 text-dark">MY PAGE</a></li>
				                <li class="nav-item"><a href="/user/signout" class="nav-link text-dark">LOGOUT</a></li>
		                  	</div>
		               	</ul>
		            </c:if>
		            
		        </div>
	        </div>
	        
        </div>
    </div>
      
</header>



	<%-- 메뉴바 --%>
 	<nav id="menu" class="mt-5">
    	
        <ul class="border rounded">
        	
            <li><a href="/shelter" class="text-dark">ABOUT</a></li>
          
            <li><a>입양 안내</a>
             	<ul>
	                <li><a href="#">보호 중인 아이들</a></li>
	                <li><a href="/adoption/benefit">입양 혜택</a></li>
             	</ul>
          	</li>
       
            <li><a href="#" class="text-dark">입양 후기</a></li>
       
            <li><a>고객센터</a>
             	<ul>
	                <li><a href="#">공지사항</a></li>
	                <li><a href="#">1:1 문의</a></li>
             	</ul>
          	</li>
        </ul>
       
    </nav>
    
    
    <div class="border rounded"></div>
    
    
    <%-- 배너 --%>
    <div class="banner my-2">
    	<img width="1203" height="250" alt="메인배너" src="/static/img/include/header/main banner.png">
	</div>
		
    