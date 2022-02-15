<!DOCTYPE html>
<html lang="en"><head>
<%@include file="footer/bootstrap.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<title>[sg-moomin] lumin_daily </title>
<body>

	<div id="colorlib-page">
		<%@include file="footer/header.jsp"%>
		<div id="colorlib-main">
			<section class="ftco-section ftco-bread">
				<div class="container">
					<div
						class="row no-gutters slider-text justify-content-center align-items-center">
						<div class="col-md-8 ftco-animate">
							<p class="breadcrumbs">
												<span class="mr-2"><a href="index">Home</a></span> <span>PortPoilo</span>
							</p>
							<h1 class="bread">Lumin Blog Post</h1>
						</div>
					</div>
				</div>
			</section>
			
			<section class="ftco-section">
					<div class="row">
						<div class="col-lg-8 ftco-animate">
							<h2 class="mb-3 mt-5 font-weight-bold">${myPost.postMainTitle}</h2>
							<h3><p>${myPost.postSnTitle}</p></h3>
							<h5><p>${myPost.postSn}</p></h5>
							<p>
								<img src="resources/images/${myPost.imgTitle}" alt="" width="400" height="400" >
							</p>
							
							<div class="tag-widget post-tag-container mb-5 mt-5">
								<div class="tagcloud">
									
									<c:forEach var="tags" items="${tag}">
										<a href="#" class="tag-cloud-link">${tags}</a>
									</c:forEach>
									<!-- 
									<a href="#" class="tag-cloud-link">Tistory</a> <a href="#"
										class="tag-cloud-link">Study</a> <a href="#"
										class="tag-cloud-link">Jpa</a> <a href="#"
										class="tag-cloud-link">Java</a>
									 -->
								</div>
							</div>
							<div class="about-author d-flex p-4 bg-light">
								<div class="bio mr-5">
									<img src="resources/images/footerImage3.jpg"  width="200" height="200" alt="Image placeholder"
										class="img-fluid mb-12">
								</div>
								<div>
									<h3>Sg-moomin</h3>
									<p>Java beginner developer And Sg-moomin Tistory Operator </p>
								</div>
							</div>
						</div>
						<!-- .col-md-8 -->
						<div class="col-lg-4 sidebar ftco-animate bg-light">
							<div class="sidebar-box">
								<form action="#" class="search-form">
									<div class="form-group">
										<span class="icon icon-search"></span> <input type="text"
											class="form-control"
											placeholder="Type a keyword and hit enter">
									</div>
								</form>
							</div>
							<div class="sidebar-box ftco-animate">
								<h3 class="sidebar-heading">Categories</h3>
								<ul class="categories">
									<li><a href="#">About Me <span>(6)</span></a></li>
									<li><a href="#">IT Career <span>(8)</span></a></li>
									<li><a href="#">Startup Plan <span>(2)</span></a></li>
									<li><a href="#">Skill <span>(2)</span></a></li>
									<li><a href="#">Photography <span>(7)</span></a></li>
								</ul>
							</div>
							</div>				
							</div>
			</section>
	<%@include file="footer/footer.jsp"%>
		</div>
		<!-- END COLORLIB-MAIN -->
	</div>
	<!-- END COLORLIB-PAGE -->

</body>
</html>