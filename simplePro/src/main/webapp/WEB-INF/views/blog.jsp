<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>[sg-moomin] lumin_daily</title>
<%@include file="footer/bootstrap.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<style>
.koreanFont {
	font-family: 'Jua', sans-serif
}
;
</style>
<body>

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
						<h1 class="bread">Lumin Blog</h1>
					</div>
				</div>
			</div>
		</section>
		<section class="ftco-section">
			<div class="container">
				<div class="row d-flex">
					<div class="col-lg-8">
						<div class="row">
							<c:choose>
								<c:when test="${empty myBlog}">
									<div class="col-md-12">
										<h3>Please add a blog post!</h3>
									</div>
								</c:when>
								<c:otherwise>
									<c:forEach var="blogs" items="${myBlog}">
										<div class="col-md-12">
											<div class="blog-entry ftco-animate d-md-flex">
												<a href="single.html" class="img img-2"
													style="background-image: url(resources/images/${blogs.imgtitle});"></a>
												<div class="text text-2 p-4">
													<h3 class="mb-2">${blogs.blogmaintitle}</h3>
													<div class="meta-wrap">
														<p class="meta">
															<span>${blogs.uptdt}</span> <span><a
																href="single.html">${blogs.blogsntitle}</a></span>
														</p>
													</div>
													<p class="mb-4">${blogs.blogsn}</p>
													<div id="#AjaxButton"></div>
													<a href="blogPost?findPostId=${blogs.postid}"><input
														type="button" id="checkBtn"
														class="btn btn-lg btn-primary btn-block" value="read More"></input></a>

												</div>
											</div>
										</div>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</div>
						<!-- 
							<div class="row">
								<div class="col">
									<div class="block-27">
										<ul>
											<li><a href="#">&lt;</a></li>
											<li class="active"><span>1</span></li>
											<li><a href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li><a href="#">4</a></li>
											<li><a href="#">5</a></li>
											<li><a href="#">&gt;</a></li>
										</ul>
									</div>
								</div>
							</div> 
							-->
					</div>
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
							<br>
							<h3 class="sidebar-heading">글 작성하기</h3>
							<div class="tagcloud">
								<a href="newPost" class="tag-cloud-link">New Post</a>
							</div>
						</div>
					</div>
				</div>
		</section>
		<script type="text/javascript">
									 $(document).ready(function() {	
										$('#checkBtn').click(function() {
												$.ajex({
													type:"POST",
													data: param,
													url:'/blogDetail',
													error : function(error) {
										    			console.log("error" + "  code : " + useCode);
										    		},
										    		success : function(data) {
										    			console.log("성공");
										  
										    		}
										  		  });   
										  });  
									});
										
									</script>
		<%@include file="footer/footer.jsp"%>
</body>
</html>