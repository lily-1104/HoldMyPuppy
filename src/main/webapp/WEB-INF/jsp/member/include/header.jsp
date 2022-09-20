<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


	<header>
		
        <div>
            <div class="logo d-flex justify-content-center">
            	<div class="mt-2  d-flex align-items-center justify-content-center mr-5">  
                	<a href="/main">
                    	<img width="400" alt="메인 로고" src="/static/css/image/main_logo_blue.png">
               		</a>
            	</div>
         	</div>
      
         	<div class="login d-flex justify-content-end">
            	<c:if test="${empty memberId }">
                	<ul class="nav d-flex align-items-end justify-content-end">
                    	<li class="nav-item"><a href="/member/signin" class="nav-link text-dark">LOGIN</a>
                  		<li class="nav-item"><a href="/member/signup" class="nav-link text-dark">JOIN</a>
               		</ul>
            	</c:if>
            
            	<c:if test="${not empty memberId }">
                	<ul class="nav">
                    	<div class="d-flex align-items-center">
                     		<b><div class="mr-1">${memberNickname }</b></div>님 
		                    	<li class="nav-item"><a href="#" class="nav-link ml-3 text-dark">MY PAGE</a></li>
		                     	<li class="nav-item"><a href="/member/signout" class="nav-link text-dark">LOGOUT</a></li>
                  		</div>
               		</ul>
            	</c:if>
         	</div>
         	
        </div>
      
    </header>
    
    
    <br>  <br>  
    <%-- <div class="mt-3">　</div> --%>
    
    
    <nav id="menu" class="mt-5">
    	
        <ul class="border rounded">
        	
            <li><a href="/shelter" class="text-dark">ABOUT</a></li>
          
            <li><a>입양 안내</a>
             	<ul>
	                <li><a href="/adoption">보호 중인 아이들</a></li>
	                <li><a href="/adoption/benefit">입양 혜택</a></li>
             	</ul>
          	</li>
       
            <li><a href="/review" class="text-dark">입양 후기</a></li>
       
            <li><a>고객센터</a>
             	<ul>
	                <li><a href="/notice">공지사항</a></li>
	                <li><a href="/qna">1:1 문의</a></li>
             	</ul>
          	</li>
        </ul>
       
    </nav>

    
    <div class="border rounded"></div>
    
	