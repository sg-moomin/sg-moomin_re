<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
  <head>
<title>[sg-moomin] lumin_daily </title>

    
<%@include file="footer/bootstrap.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  </head>
  <body>

	<div id="colorlib-page">
		<%@include file="footer/header.jsp"%>
		<div id="colorlib-main">
			<section class="ftco-section ftco-bread">
				<div class="container">
					<div class="row no-gutters slider-text justify-content-center align-items-center">
	          <div class="col-md-8 ftco-animate">
	            <p class="breadcrumbs"><span class="mr-2"><a href="index">Home</a></span> <span>Services</span></p>
	            <h1 class="bread">My Services</h1>
	          </div>
	        </div>
				</div>
			</section>
			<section class="ftco-section">
	      <div class="container">
	        <div class="row">
	          <c:forEach var="result" items="${myService}">
	         	<div class="col-md-4 d-flex align-self-stretch ftco-animate">
	            <div class="media block-6 services py-4 d-block">
	              <div class="d-flex justify-content-start">
	              	<div class="icon d-flex align-items-center justify-content-center">
						<span class="profile-myService-img">
						<a href="${result.urlroot}">
							<img class="profile-myService" src="resources/images/${result.imgtitle}">
						</a>
						</span>
				  	</div>
	              </div>
	              <div class="media-body p-2 mt-2">
	                <h3 class="heading mb-3">${result.title}</h3>
	                <p>${result.contents}</p>
	              </div>
	            </div>      
	          </div>
	          </c:forEach>
	          
	          
	          <!-- 
	          <div class="col-md-4 d-flex align-self-stretch ftco-animate">
	            <div class="media block-6 services py-4 d-block">
	              <div class="d-flex justify-content-start">
	              	<div class="icon d-flex align-items-center justify-content-center">
						<span class="flaticon-printing-photo"></span>
				  	</div>
	              </div>
	              <div class="media-body p-2 mt-2">
	                <h3 class="heading mb-3">네이버 맛집 블로거</h3>
	                <p>현재 인스타에서 진행하는 포스팅을 좀 더 자세하게 다루고 있습니다.</p>
	              </div>
	            </div>      
	          </div>
	          <div class="col-md-4 d-flex align-self-stretch ftco-animate">
	            <div class="media block-6 services py-4 d-block">
	              <div class="d-flex justify-content-start">
	              	<div class="icon d-flex align-items-center justify-content-center">
	              		<span class="flaticon-printing-photo"></span>
	              	</div>
	              </div>
	              <div class="media-body p-2 mt-2">
	                <h3 class="heading mb-3">네이버 일상 블로거</h3>
	                <p>취준부터 현재까지 저의 삶을 솔직하게 풀었습니다.</p>
	              </div>
	            </div>      
	          </div>
	          <div class="col-md-4 d-flex align-self-stretch ftco-animate">
	            <div class="media block-6 services py-4 d-block">
	              <div class="d-flex justify-content-start">
	              	<div class="icon d-flex align-items-center justify-content-center">
	              		<span class="flaticon-focusing-target"></span>
	              	</div>
	              </div>
	              <div class="media-body p-2 mt-2">
	                <h3 class="heading mb-3">Tistory 기술 블로거</h3>
	                <p>A small river named Duden flows by their place and supplies.</p>
	              </div>
	            </div>      
	          </div>
	          <div class="col-md-4 d-flex align-self-stretch ftco-animate">
	            <div class="media block-6 services py-4 d-block">
	              <div class="d-flex justify-content-start">
	              	<div class="icon d-flex align-items-center justify-content-center">
	              		<span class="flaticon-camera"></span>
	              	</div>
	              </div>
	              <div class="media-body p-2 mt-2">
	                <h3 class="heading mb-3">Studio Sessions</h3>
	                <p>A small river named Duden flows by their place and supplies.</p>
	              </div>
	            </div>    
	          </div>
	          <div class="col-md-4 d-flex align-sel Searchf-stretch ftco-animate">
	            <div class="media block-6 services py-4 d-block">
	              <div class="d-flex justify-content-start">
	              	<div class="icon d-flex align-items-center justify-content-center">
	              		<span class="flaticon-polaroid-pictures"></span>
	              	</div>
	              </div>
	              <div class="media-body p-2 mt-2">
	                <h3 class="heading mb-3">Polaroid Pictures</h3>
	                <p>A small river named Duden flows by their place and supplies.</p>
	              </div>
	            </div>      
	          </div>
	          <div class="col-md-4 d-flex align-self-stretch ftco-animate">
	            <div class="media block-6 services py-4 d-block">
	              <div class="d-flex justify-content-start">
	              	<div class="icon d-flex align-items-center justify-content-center">
	              		<span class="flaticon-film"></span>
              	</div>
              </div>
              <div class="media-body p-2 mt-2">
                <h3 class="heading mb-3">Old Fill Roll</h3>
                <p>A small river named Duden flows by their place and supplies.</p>
              </div>
            </div>
             -->
          </div>
        </div>
	    </section>
	   
		<%@include file="footer/footer.jsp"%>
  </body>
</html>