<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>[sg-moomin] lumin_daily </title>
<%@include file="footer/bootstrap.jsp"%>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">

<style>

.koreanFont {
	font-family: 'Jua', sans-serif
};

</style>
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
			<section class="ftco-section contact-section">
				<div class="container">
						<div class="col-md-12 mb-4">
							<h2 class="h3 font-weight-bold">New Post</h2>
						</div>
						<div class="row block-9">
							<div class="col-md-12 d-flex">
								<form name="newCreatePost" id="newCreatePost" method="post" class="bg-light p-5 contact-form">
									<div class="form-group">
										<h5 class="koreanFont">블로그 포스트 제목</h5>
										<input type="text" class="form-control" id="blogmaintitle" name="blogmaintitle" placeholder="postMainTitle & blogMainTitle">
									</div>
									<div class="form-group">
										<h5 class="koreanFont">블로그 포스트 소제목</h5>
										<input type="text" class="form-control" id="blogsntitle" name="blogsntitle"
											placeholder="blogSnTitle & postSnTitle">
									</div>
									<div class="form-group">
										<h5 class="koreanFont">블로그 포스트 태그(구분 : &)</h5>
										<input type="text" class="form-control" id="blogtag" name="blogtag" placeholder="blogTag&postTag">
									</div>
									<div class="form-group">
										<h5 class="koreanFont">이미지 링크</h5>
										<input type="text" class="form-control" id="imgtitle" name="imgtitle" placeholder="imgTitle">
									</div>
									<div class="form-group">
										<h5 class="koreanFont">사이트 링크</h5>
										<input type="text" class="form-control" id="posturl" name="posturl" placeholder="postUrl">
									</div>
									<div class="form-group">
										<h5 class="koreanFont">블로그 포스팅 내용</h5>
										<textarea name="blogsn" id="blogsn" cols="30" rows="7" class="form-control"
										 	placeholder="blogsn"></textarea>
									</div>
									<div class="form-group">
									<input type="button" value ="create new post" class="btn btn-primary py-3 px-5" onclick="createPost(); return false;" >
									</div>
								</form>
	
							</div>
					</div>
				</div>
			</section>
			<%@include file="footer/footer.jsp"%>
			</div>
			</div>
			<script type="text/javascript">
				function createPost(){
					var successMsg = "저장되었습니다";
					var errorMsg = "저장 중 오류가 발생하였습니다.";
					
					var dataset = {};
					dataset["blogmaintitle"] = $("#blogmaintitle").val();
					dataset["blogsntitle"] = $("#blogsntitle").val();
					dataset["blogtag"] = $("#blogtag").val();
					dataset["blogsn"] = $("#blogsn").val();
					dataset["imgtitle"] = $("#imgtitle").val();
					dataset["posturl"] = $("#posturl").val();
					
					$.ajax({
						type: "POST",
						url:"<%=request.getContextPath()%>/newPost",
						data: JSON.stringify(dataset),
						dataType: "text",
						contentType:"application/json;charset=UTF-8",
						beforeSend : function() {
							console.log("start");
						},
						success: function (data, status, xhr) {
							console.log("success");
							alert(successMsg);
							window.location.href = data;
								
						},
						error: function (e) {
							console.log("ERROR : ", e);
							alert(errorMsg);
						}
					});
				}
			</script>

</body>
</html>