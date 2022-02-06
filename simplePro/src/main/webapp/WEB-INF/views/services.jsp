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
	                <h3 class="heading mb-3">���̹� ���� ��ΰ�</h3>
	                <p>���� �ν�Ÿ���� �����ϴ� �������� �� �� �ڼ��ϰ� �ٷ�� �ֽ��ϴ�.</p>
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
	                <h3 class="heading mb-3">���̹� �ϻ� ��ΰ�</h3>
	                <p>���غ��� ������� ���� ���� �����ϰ� Ǯ�����ϴ�.</p>
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
	                <h3 class="heading mb-3">Tistory ��� ��ΰ�</h3>
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