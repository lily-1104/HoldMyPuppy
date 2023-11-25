<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보호소 안내 | 안아줄개</title>
</head>
<body>
	
	<div class="h-50"></div>
	
	<section>
	
		<div class="mt-5 d-flex align-items-center justify-content-center">
			<div class="intro">
				<div class="d-flex align-items-center justify-content-center">
					<img width="27" height="27" alt="강아지 발바닥" src="/static/img/about/footprint2.jpg">
                   	<h3 class="text-info font-weight-bold mt-3 ml-3 mr-3">보호소 안내</h3>
               	</div>
                
                <div class="mt-4 ml-4 text-center">
                   	<small>주요 시설과 위치를 안내합니다.</small>
                </div>
             </div>
		</div>
          
          
		<%-- 시설 안내 --%>
        <div class="d-flex justify-content-center">
			<div class="info mt-5">
				<h4 class="ml-3 mt-4 text-warning"><b>◈ 시설 안내</b></h4>
                
				<div class="mt-4 d-flex d-flex justify-content-center">
                	<img width="400" alt="루프탑" src="/static/img/about/rooftop.png">  
                  
                  	<div class="d-flex align-items-center">
                     	<div>
                        	<h3 class="ml-5"><b>Rooftop</b></h3>
                        
                        	<div class="ml-5 mt-4">
                           		산책이 가능한 마당 <br>
		                        모든 층의 건물을 사용하는 안아줄개 보호소는 <br>
		                        옥상 정원을 통해 입소된 아이들이 자유롭게 햇볕을 쬘 수 있는 공간입니다.
                        	</div>
                     	</div>
                  	</div>
               	</div>    
            </div>
		</div>
          
        <div class="mt-5 d-flex justify-content-center">
			<div class="mt-5 d-flex">
               	<div class="d-flex align-items-center mr-4">
                  	<div>
                     	<h3 class="mr-3"><b>Cozy Room</b></h3>
                        
                     	<div class="mr-5 mt-4">
							넓은 공간에서 모든 층의 건물을 사용하는 안아줄개 보호소는 <br>
		                    대형견을 위한 공간부터 소형견을 위한 공간까지 <br>
		                    개별 난방 및 환기 시스템이 가능한 시설로 운영 중입니다.
		                </div>
                  	</div>
               	</div>
               	<img width="400" alt="코지룸" src="/static/img/about/cozyroom.jpg">  
            </div>    
		</div>
          
        <div class="mt-5 d-flex justify-content-center">
			<div class="mt-5 d-flex">
               	<img width="400" alt="로얄캐닌" src="/static/img/about/royalCanin.jpg" class="mr-4">  
                  
               	<div class="d-flex align-items-center">
                  	<div>
                     	<h3 class="ml-5"><b>Trust</b></h3>
                        
                     	<div class="ml-5 mt-4">
							믿을 수 있는 사료 <br>
		                    사료 중에서 증명된 최고의 품질 로얄캐닌을 제공하고 있습니다.
		                </div>
                  	</div>
               	</div>
            </div>
		</div>
        <%-- /시설 안내 --%>
          
          
        <br>
          
          
        <div class="ml-3 mt-5">
        
        	<%-- 위치 안내 --%>
			<div class="info ml-5 d-flex justify-content-start">
				<h4 class="ml-5 mt-4 text-warning"><b class="ml-5">◈ 위치 안내</b></h4> 
            </div>
             
             
            <div class="ml-5 d-flex justify-content-center">
                <div id="map" class="mt-4 ml-5" style="width:1000px; height:500px;"></div>
                
                
                
                
                
                
			</div>
            <%-- /위치 안내 --%>
             
            <div class="mt-5">　</div>
             
             
            <%-- 오시는 길 --%>
            <div class="ml-5 mt-5 p-4">
                <h4 class="ml-5 d-flex justify-content-start text-warning"><b class="ml-4">◈ 오시는 길</b></h4>
                
	            <div class="ml-5">
					<table border="2" class="table w-75 ml-4 mt-4">
						<tbody>
							<tr>
								<th class="text-center">주소</th>
		                        <td>서울시 송파구 석촌호수로 111</td>
		                    </tr>
		                      
		                    <tr>
		                    	<th class="text-center">전화</th>
		                        <td>010-9923-4469</td>
		                    </tr>
		                      
		                    <tr>
		                    	<th class="text-center">이메일</th>
		                        <td>jon00141@naver.com</td>
		                    </tr>
						</tbody>
					</table>
				</div>
             </div>
             <%-- /오시는 길 --%>
             
             <br>
             
		</div>
		
	</section>

</body>
</html>