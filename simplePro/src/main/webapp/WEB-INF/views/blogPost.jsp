<!DOCTYPE html>
<html lang="en"><head>
<%@include file="footer/bootstrap.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
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
							<c:forEach var="myPosts" items="${myPost}">
							<h2 class="mb-3 mt-5 font-weight-bold">${myPosts.postmaintitle}</h2>
							<h3><p>${myPosts.postsntitle}</p></h3>
							<h5><p>${myPosts.postsn}</p></h5>
							<p>
								<img src="resources/images/footerImage1.jpg" alt="" class="img-fluid">
							</p>
							
							</c:forEach>
							<div class="tag-widget post-tag-container mb-5 mt-5">
								<div class="tagcloud">
									<a href="#" class="tag-cloud-link">Tistory</a> <a href="#"
										class="tag-cloud-link">Study</a> <a href="#"
										class="tag-cloud-link">Jpa</a> <a href="#"
										class="tag-cloud-link">Java</a>
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
		</div>
		<!-- END COLORLIB-MAIN -->
	</div>
	<!-- END COLORLIB-PAGE -->
	<%@include file="footer/footer.jsp"%>

</body>
</html>