<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<title>[sg-moomin] lumin_daily </title>
<%@include file="footer/bootstrap.jsp"%>
</head>
<body>
 	<div id="colorlib-page">
		<%@include file="footer/header.jsp"%>
		<!-- END COLORLIB-ASIDE -->
		<div id="colorlib-main">
			<section class="ftco-section-no-padding bg-light">
				<div class="hero-wrap">
					<div class="overlay"></div>
					<div class="d-flex align-items-center js-fullheight">
						<div class="author-image text img d-flex">
							<section class="home-slider js-fullheight owl-carousel">
								<div class="slider-item js-fullheight"
									style="background-image: url(resources/images/author.jpg);">
								</div>
								<div class="slider-item js-fullheight"
									style="background-image: url(resources/images/author-1.jpg);">
								</div>
								<div class="slider-item js-fullheight"
									style="background-image: url(resources/images/author-2.jpg);">
								</div>
								<div class="slider-item js-fullheight"
									style="background-image: url(resources/images/author-3.jpg);">
								</div>
							</section>
						</div>
						<div class="author-info text p-3 p-md-5">
							<div class="desc">
								<span class="subheading">Hello! I'm</span>
								<h1 class="big-letter">Lumin_Daily</h1>
								<h1 class="mb-4">
									<span>Lumin_Daily</span><br> <span>A Programmer </span><br>
								</h1>
								<p class="mb-3">
									<c:forEach var="result" items="${main}">
										<span>${result.contents}</span>
										<br>
									</c:forEach>
								</p>
								<p class="mb-4">
									Intro : IT �̽��� ������ �ϰ� �ִ� ���ػ��̸� ����� ������� �ϻ��̶�� ��α׸� ��ϸ鼭 ������
									��ư��� �ִ� û���Դϴ�.<br> ��� : ������ �Ƹ޸�ī�븦 Ž���Ϸ� �ٴϴ� �� �����մϴ�.<br>
									NaverBlog : https://blog.naver.com/rooney9325 <br>
									TistoryBlog : https://sg-moomin.tistory.com <br> instagram
									: Romin_pic (���� �����߾��~) <br>
									#���ػ�#IT#��������#�ϻ�#�����#�����ϱ�#Ŀ��#���� #���Ļ���
								</p>
								<h3 class="signature h1">Lumin</h3>
								<ul class="ftco-social mt-3">
									<li class="ftco-animate"><a href="#"><span
											class="icon-gitlab"></span></a></li>
									<li class="ftco-animate"><a href="#"><span
											class="icon-instagram"></span></a></li>
									<li class="ftco-animate"><a href="https://sg-moomin.tistory.com/"><span
											class="icon-edit"></span></a></li>
									<li class="ftco-animate"><a href="login"><span
											class="icon-edit"></span></a></li>
									<li class="ftco-animate"><a href="blogDetail"><span
											class="icon-edit"></span></a></li>
									
								</ul>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section class="ftco-section instagram">
				<div class="container">
					<div class="row justify-content-center mb-2 pb-3">
						<div
							class="col-md-7 heading-section heading-section-2 text-center ftco-animate">
							<h2 class="mb-4">Follow me on Instagram</h2>
						</div>
					</div>
					<div class="row no-gutters">
						<div class="col-sm-12 col-md ftco-animate">
							<a href="resources/images/footerImage1.jpg" class="insta-img image-popup"
								style="background-image: url(resources/images/footerImage1.jpg);">
								<div class="icon d-flex justify-content-center">
									<span class="icon-instagram align-self-center"></span>
								</div>
							</a>
						</div>
						<div class="col-sm-12 col-md ftco-animate">
							<a href="resources/images/footerImage2.jpg" class="insta-img image-popup"
								style="background-image: url(resources/images/footerImage2.jpg);">
								<div class="icon d-flex justify-content-center">
									<span class="icon-instagram align-self-center"></span>
								</div>
							</a>
						</div>
						<div class="col-sm-12 col-md ftco-animate">
							<a href="resources/images/footerImage3.jpg" class="insta-img image-popup"
								style="background-image: url(resources/images/footerImage3.jpg);">
								<div class="icon d-flex justify-content-center">
									<span class="icon-instagram align-self-center"></span>
								</div>
							</a>
						</div>
						<div class="col-sm-12 col-md ftco-animate">
							<a href="resources/images/footerImage4.jpg" class="insta-img image-popup"
								style="background-image: url(resources/images/footerImage4.jpg);">
								<div class="icon d-flex justify-content-center">
									<span class="icon-instagram align-self-center"></span>
								</div>
							</a>
						</div>
						<div class="col-sm-12 col-md ftco-animate">
							<a href="resources/images/footerImage5.jpg" class="insta-img image-popup"
								style="background-image: url(resources/images/footerImage5.jpg);">
								<div class="icon d-flex justify-content-center">
									<span class="icon-instagram align-self-center"></span>
								</div>
							</a>
						</div>
					</div>
				</div>
			</section>
			<%@include file="footer/footer.jsp"%>
		</div>
	</div>
	
	 	<div id="like_button_container"></div>
	 
	  <!-- React�� ����. -->
	  <!-- ����: ����Ʈ�� ������ ���� "development.js"�� "production.min.js"�� ��ü�ϼ���. -->
	  <script src="https://unpkg.com/react@17/umd/react.development.js" crossorigin></script>
	  <script src="https://unpkg.com/react-dom@17/umd/react-dom.development.js" crossorigin></script>
	
	  <!-- ���� React ������Ʈ�� ����. -->
	  <script src="js/like_button.js"></script>
	  const domContainer = document.querySelector('#like_button_container');
	  ReactDOM.render(e(LikeButton), domContainer);


</body>
</html>