<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<%@include file="footer/bootstrap.jsp"%>
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
								<div class="col-md-12">
									<div class="blog-entry ftco-animate d-md-flex">
										<a href="single.html" class="img img-2"
											style="background-image: url(resources/images/image_2.jpg);"></a>
										<div class="text text-2 p-4">
											<h3 class="mb-2">
												<a href="single.html">2020년도 나의 활동들을 돌아보다.</a>
											</h3>
											<div class="meta-wrap">
												<p class="meta">
													<span>Dec 14, 2020</span> <span><a
														href="single.html">programmer</a></span>
												</p>
											</div>
											<p class="mb-4">2020년도 저의 삶을 공개합니다. 간략하게 2020년도는 공무원 시험 도전부터 현재는 공공데이터 인턴까지 다양한 도전들로 살아가고 있습니다.</p>
											<div id="#AjaxButton"></div>
											<a href="blogPost?findPostId=P00000301"><input type="button" id="checkBtn" class="btn btn-lg btn-primary btn-block"
											 value="read More"></input></a>
											 
											<!-- 
											<a href="#" id="checkBtn">Read More</a>
											
											<script>
												$('checkBtn').click(function()){
													$.ajex({
															url:"blog",
															type:"POST",
															dataType : "text"
															data: {"id", id},
															success:function(json){
																alert("성공");
															}
													})						
												});
											</script>
											 -->
										</div>
									</div>
								</div>
						
								
								<div class="col-md-12">
									<div class="blog-entry ftco-animate d-md-flex">
										<a href="single.html" class="img img-2"
											style="background-image: url(resources/images/image_3.jpg);"></a>
										<div class="text text-2 p-4">
											<h3 class="mb-2">
												<a href="single.html">2019년도 나의 활동들을 돌아보다.</a>
											</h3>
											<div class="meta-wrap">
												<p class="meta">
													<span>Dec 14, 2018</span> <span><a
														href="single.html">Photography</a></span> <span>5 Comment</span>
												</p>
											</div>
											<p class="mb-4">A small river named Duden flows by their
												place and supplies it with the necessary regelialia.</p>
											<p>
												<a href="#" class="btn-custom">Read More <span
													class="ion-ios-arrow-forward"></span></a>
											</p>
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="blog-entry ftco-animate d-md-flex">
										<a href="single.html" class="img img-2"
											style="background-image: url(resources/images/image_4.jpg);"></a>
										<div class="text text-2 p-4">
											<h3 class="mb-2">
												<a href="single.html">2018년도 나의 활동들을 돌아보다.</a>
											</h3>
											<div class="meta-wrap">
												<p class="meta">
													<span>Dec 14, 2018</span> <span><a
														href="single.html">Photography</a></span> <span>5 Comment</span>
												</p>
											</div>
											<p class="mb-4">A small river named Duden flows by their
												place and supplies it with the necessary regelialia.</p>
											<p>
												<a href="#" class="btn-custom">Read More <span
													class="ion-ios-arrow-forward"></span></a>
											</p>
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="blog-entry ftco-animate d-md-flex">
										<a href="single.html" class="img img-2"
											style="background-image: url(resources/images/image_5.jpg);"></a>
										<div class="text text-2 p-4">
											<h3 class="mb-2">
												<a href="single.html">2017년도 나의 활동들을 돌아보다.</a>
											</h3>
											<div class="meta-wrap">
												<p class="meta">
													<span>Dec 14, 2018</span> <span><a
														href="single.html">Photography</a></span> <span>5 Comment</span>
												</p>
											</div>
											<p class="mb-4">A small river named Duden flows by their
												place and supplies it with the necessary regelialia.</p>
											<p>
												<a href="#" class="btn-custom">Read More <span
													class="ion-ios-arrow-forward"></span></a>
											</p>
										</div>
									</div>
								</div>
								</div> 
								
								
								
								
								
								
								
								
								
								
								
								
								
								
								
								
								
								
								
								
								
								
								<!-- 
								<div class="col-md-12">
									<div class="blog-entry ftco-animate d-md-flex">
										<a href="single.html" class="img img-2"
											style="background-image: url(images/image_5.jpg);"></a>
										<div class="text text-2 p-4">
											<h3 class="mb-2">
												<a href="single.html">The Photography Technique</a>
											</h3>
											<div class="meta-wrap">
												<p class="meta">
													<span>Dec 14, 2018</span> <span><a
														href="single.html">Photography</a></span> <span>5 Comment</span>
												</p>
											</div>
											<p class="mb-4">A small river named Duden flows by their
												place and supplies it with the necessary regelialia.</p>
											<p>
												<a href="#" class="btn-custom">Read More <span
													class="ion-ios-arrow-forward"></span></a>
											</p>
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="blog-entry ftco-animate d-md-flex">
										<a href="single.html" class="img img-2"
											style="background-image: url(images/image_6.jpg);"></a>
										<div class="text text-2 p-4">
											<h3 class="mb-2">
												<a href="single.html">The Photography Technique</a>
											</h3>
											<div class="meta-wrap">
												<p class="meta">
													<span>Dec 14, 2018</span> <span><a
														href="single.html">Photography</a></span> <span>5 Comment</span>
												</p>
											</div>
											<p class="mb-4">A small river named Duden flows by their
												place and supplies it with the necessary regelialia.</p>
											<p>
												<a href="#" class="btn-custom">Read More <span
													class="ion-ios-arrow-forward"></span></a>
											</p>
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="blog-entry ftco-animate d-md-flex">
										<a href="single.html" class="img img-2"
											style="background-image: url(images/image_7.jpg);"></a>
										<div class="text text-2 p-4">
											<h3 class="mb-2">
												<a href="single.html">The Photography Technique</a>
											</h3>
											<div class="meta-wrap">
												<p class="meta">
													<span>Dec 14, 2018</span> <span><a
														href="single.html">Photography</a></span> <span>5 Comment</span>
												</p>
											</div>
											<p class="mb-4">A small river named Duden flows by their
												place and supplies it with the necessary regelialia.</p>
											<p>
												<a href="#" class="btn-custom">Read More <span
													class="ion-ios-arrow-forward"></span></a>
											</p>
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="blog-entry ftco-animate d-md-flex">
										<a href="single.html" class="img img-2"
											style="background-image: url(images/image_8.jpg);"></a>
										<div class="text text-2 p-4">
											<h3 class="mb-2">
												<a href="single.html">The Photography Technique</a>
											</h3>
											<div class="meta-wrap">
												<p class="meta">
													<span>Dec 14, 2018</span> <span><a
														href="single.html">Photography</a></span> <span>5 Comment</span>
												</p>
											</div>
											<p class="mb-4">A small river named Duden flows by their
												place and supplies it with the necessary regelialia.</p>
											<p>
												<a href="#" class="btn-custom">Read More <span
													class="ion-ios-arrow-forward"></span></a>
											</p>
										</div>
									</div>
								</div>
							</div> -->
							<!-- END-->
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
									<a href="blogPost?findPostId=P00000301" class="tag-cloud-link">New Post</a>
									</div>
							</div>
							<!-- 
			    <div class="sidebar-box ftco-animate">
	              <h3 class="sidebar-heading">Popular Articles</h3>
	              <div class="block-21 mb-4 d-flex">
	                <a class="blog-img mr-4" style="background-image: url(images/image_1.jpg);"></a>
	                <div class="text">
	                  <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control</a></h3>
	                  <div class="meta">
	                    <div><a href="#"><span class="icon-calendar"></span> Dec. 14, 2018</a></div>
	                    <div><a href="#"><span class="icon-person"></span> Dave Lewis</a></div>
	                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
	                  </div>
	                </div>
	              </div>
	              <div class="block-21 mb-4 d-flex">
	                <a class="blog-img mr-4" style="background-image: url(images/image_2.jpg);"></a>
	                <div class="text">
	                  <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control</a></h3>
	                  <div class="meta">
	                    <div><a href="#"><span class="icon-calendar"></span> Dec. 14, 2018</a></div>
	                    <div><a href="#"><span class="icon-person"></span> Dave Lewis</a></div>
	                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
	                  </div>
	                </div>
	              </div>
	              <div class="block-21 mb-4 d-flex">
	                <a class="blog-img mr-4" style="background-image: url(images/image_3.jpg);"></a>
	                <div class="text">
	                  <h3 class="heading"><a href="#">Even the all-powerful Pointing has no control</a></h3>
	                  <div class="meta">
	                    <div><a href="#"><span class="icon-calendar"></span> Dec. 14, 2018</a></div>
	                    <div><a href="#"><span class="icon-person"></span> Dave Lewis</a></div>
	                    <div><a href="#"><span class="icon-chat"></span> 19</a></div>
	                  </div>
	                </div>
	              </div>
	            </div>

	            <div class="sidebar-box ftco-animate">
	              <h3 class="sidebar-heading">Tag Cloud</h3>
	              <ul class="tagcloud">
	                <a href="#" class="tag-cloud-link">animals</a>
	                <a href="#" class="tag-cloud-link">human</a>
	                <a href="#" class="tag-cloud-link">people</a>
	                <a href="#" class="tag-cloud-link">cat</a>
	                <a href="#" class="tag-cloud-link">dog</a>
	                <a href="#" class="tag-cloud-link">nature</a>
	                <a href="#" class="tag-cloud-link">leaves</a>
	                <a href="#" class="tag-cloud-link">food</a>
	              </ul>
	            </div>

							<div class="sidebar-box subs-wrap img"
								style="background-image: url(images/bg_1.jpg);">
								<div class="overlay"></div>
								<h3 class="mb-4 sidebar-heading">Newsletter</h3>
								<p class="mb-4">Far far away, behind the word mountains, far
									from the countries Vokalia</p>
								<form action="#" class="subscribe-form">
									<div class="form-group">
										<input type="text" class="form-control"
											placeholder="Email Address"> <input type="submit"
											value="Subscribe" class="mt-2 btn btn-white submit">
									</div>
								</form>
							</div>

							<div class="sidebar-box ftco-animate">
								<h3 class="sidebar-heading">Archives</h3>
								<ul class="categories">
									<li><a href="#">Decob14 2018 <span>(10)</span></a></li>
									<li><a href="#">September 2018 <span>(6)</span></a></li>
									<li><a href="#">August 2018 <span>(8)</span></a></li>
									<li><a href="#">July 2018 <span>(2)</span></a></li>
									<li><a href="#">June 2018 <span>(7)</span></a></li>
									<li><a href="#">May 2018 <span>(5)</span></a></li>
								</ul>
							</div>


							<div class="sidebar-box ftco-animate">
								<h3 class="sidebar-heading">Paragraph</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
									Ducimus itaque, autem necessitatibus voluptate quod mollitia
									delectus aut.</p>
							</div>
						</div>
						
 -->
						<!-- END COL -->
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