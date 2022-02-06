<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
  <head>
<title>[sg-moomin] lumin_daily </title>
   
<%@include file="footer/bootstrap.jsp"%>
  </head>
  <body>

	<div id="colorlib-page">
		<%@include file="footer/header.jsp"%>
		<div id="colorlib-main">
			<section class="ftco-section ftco-bread">
				<div class="container">
					<div class="row no-gutters slider-text justify-content-center align-items-center">
	          <div class="col-md-8 ftco-animate">
	            <p class="breadcrumbs"><span class="mr-2"><a href="index">Home</a></span> <span>Collection</span></p>
	            <h1 class="bread">My Portfolio Collection</h1>
	          </div>
	        </div>
				</div>
			</section>
			 <script type="text/javascript">
	   		function autoSize()
	   		{
	   		 var the_height=
	   			 document.getElementById('myframe').contentWindow.
	   			 document.body.scrollHeight;

	   			 //change the height of the iframe
	   			 document.getElementById('myframe').height=
	   			 the_height;

	   			 //document.getElementById('the_iframe').scrolling = "no";
	   			 document.getElementById('myframe').style.overflow = "hidden";
	   		}
	   		</script>
			
			<section class="ftco-section">
				<div>
						<h3 class="heading mb-3">세기 무민의 포트폴리오</h3>
				</div>
				<div>
					<iframe 
					id="myframe" 
					width="100%" 
					height="100%"
					marginwidth="0" 
					marginheight="0" 
					frameborder="no"
					onload="autoSize();"
     				scroll="no"
					src="resources/images/collection.pdf"
					style="overflow-x:hidden; overflow:auto; width:100%; min-height:800px;"></iframe>
				</div>
			</section>						
		<!--  
		onload="this.style.height=(this.contentWindow.document.body.scrollHeight+20)+'px';"
					
				<div class="photograhy">
					<div class="row">
						<div class="col-md-4 ftco-animate">
							<a href="resources/images/image_1.jpg" class="photography-entry img image-popup d-flex justify-content-start align-items-end" style="background-image: url(resources/images/image_1.jpg);">
								<div class="overlay"></div>
								<div class="text ml-4 mb-4">
									<h3>Photo 01</h3>
									<span class="tag">Model</span>
								</div>
							</a>
						</div>
						<div class="col-md-4 ftco-animate">
							<a href="resources/images/image_2.jpg" class="photography-entry img image-popup d-flex justify-content-start align-items-end" style="background-image: url(resources/images/image_2.jpg);">
								<div class="overlay"></div>
								<div class="text ml-4 mb-4">
									<h3>Photo 02</h3>
									<span class="tag">Nature</span>
								</div>
							</a>
						</div>
						<div class="col-md-4 ftco-animate">
							<a href="resources/images/image_3.jpg" class="photography-entry img image-popup d-flex justify-content-start align-items-end" style="background-image: url(resources/images/image_3.jpg);">
								<div class="overlay"></div>
								<div class="text ml-4 mb-4">
									<h3>Photo 03</h3>
									<span class="tag">Fashion</span>
								</div>
							</a>
						</div>
						<div class="col-md-4 ftco-animate">
							<a href="resources/images/image_4.jpg" class="photography-entry img image-popup d-flex justify-content-start align-items-end" style="background-image: url(resources/images/image_4.jpg);">
								<div class="overlay"></div>
								<div class="text ml-4 mb-4">
									<h3>Photo 04</h3>
									<span class="tag">Travel</span>
								</div>
							</a>
						</div>
						<div class="col-md-4 ftco-animate">
							<a href="resources/images/image_5.jpg" class="photography-entry img image-popup d-flex justify-content-start align-items-end" style="background-image: url(resources/images/image_5.jpg);">
								<div class="overlay"></div>
								<div class="text ml-4 mb-4">
									<h3>Photo 05</h3>
									<span class="tag">Travel</span>
								</div>
							</a>
						</div>
						<div class="col-md-4 ftco-animate">
							<a href="resources/images/image_6.jpg" class="photography-entry img image-popup d-flex justify-content-start align-items-end" style="background-image: url(resources/images/image_6.jpg);">
								<div class="overlay"></div>
								<div class="text ml-4 mb-4">
									<h3>Photo 06</h3>
									<span class="tag">Travel</span>
								</div>
							</a>
						</div>
						<div class="col-md-4 ftco-animate">
							<a href="resources/images/image_7.jpg" class="photography-entry img image-popup d-flex justify-content-start align-items-end" style="background-image: url(resources/images/image_7.jpg);">
								<div class="overlay"></div>
								<div class="text ml-4 mb-4">
									<h3>Photo 07</h3>
									<span class="tag">Fashion, Model</span>
								</div>
							</a>
						</div>
						<div class="col-md-4 ftco-animate">
							<a href="resources/images/image_8.jpg" class="photography-entry img image-popup d-flex justify-content-start align-items-end" style="background-image: url(resources/images/image_8.jpg);">
								<div class="overlay"></div>
								<div class="text ml-4 mb-4">
									<h3>Photo 08</h3>
									<span class="tag">Nature</span>
								</div>
							</a>
						</div>
						<div class="col-md-4 ftco-animate">
							<a href="resources/images/image_9.jpg" class="photography-entry img image-popup d-flex justify-content-start align-items-end" style="background-image: url(resources/images/image_9.jpg);">
								<div class="overlay"></div>
								<div class="text ml-4 mb-4">
									<h3>Photo 09</h3>
									<span class="tag">Technology</span>
								</div>
							</a>
						</div>
						<div class="col-md-4 ftco-animate">
							<a href="images/image_10.jpg" class="photography-entry img image-popup d-flex justify-content-start align-items-end" style="background-image: url(images/image_10.jpg);">
								<div class="overlay"></div>
								<div class="text ml-4 mb-4">
									<h3>Photo 10</h3>
									<span class="tag">Model</span>
								</div>
							</a>
						</div>
						<div class="col-md-4 ftco-animate">
							<a href="images/image_11.jpg" class="photography-entry img image-popup d-flex justify-content-start align-items-end" style="background-image: url(images/image_11.jpg);">
								<div class="overlay"></div>
								<div class="text ml-4 mb-4">
									<h3>Photo 11</h3>
									<span class="tag">Fashion</span>
								</div>
							</a>
						</div>
						<div class="col-md-4 ftco-animate">
							<a href="images/image_12.jpg" class="photography-entry img image-popup d-flex justify-content-start align-items-end" style="background-image: url(images/image_12.jpg);">
								<div class="overlay"></div>
								<div class="text ml-4 mb-4">
									<h3>Photo 12</h3>
									<span class="tag">Photography</span>
								</div>
							</a>
						</div>
					</div>
				</div>
			</section>
					-->
	   </div>
	   </div>
	  
	   
		<%@include file="footer/footer.jsp"%>
  </body>
</html>