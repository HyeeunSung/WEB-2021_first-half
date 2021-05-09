<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>line pay is</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,700" rel="stylesheet">

    <link rel="stylesheet" href="./resources/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="./resources/css/animate.css">
    
    <link rel="stylesheet" href="./resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="./resources/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="./resources/css/magnific-popup.css">

    <link rel="stylesheet" href="./resources/css/aos.css">

    <link rel="stylesheet" href="./resources/css/ionicons.min.css">

    <link rel="stylesheet" href="./resources/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="./resources/css/jquery.timepicker.css">

    <link rel="stylesheet" href="./resources/css/flaticon.css">
    <link rel="stylesheet" href="./resources/css/icomoon.css">
    <link rel="stylesheet" href="./resources/css/style.css">

  </head>
  <body>

	<div id="colorlib-page">
		<a href="#" class="js-colorlib-nav-toggle colorlib-nav-toggle"><i></i></a>
		<aside id="colorlib-aside" role="complementary" class="js-fullheight text-center">
			<h1 id="colorlib-logo"><a href="/linepayis">라페는 말이야</a></h1>
			
			<!-- Nav -->
			<nav id="colorlib-main-menu" role="navigation">
				<ul>
					<li class="colorlib-active"><a href="/linepayis">Home</a></li>
					<li class="colorlib-active"><a href="/linepayis/blogServlet?key=list">Post List</a></li>
					<li class="colorlib-active"><a href="/linepayis/blogServlet?key=write">Upload Post</a></li>
				</ul>
			</nav>

			<div class="colorlib-footer">
				<p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
			  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved <i class="icon-heart" aria-hidden="true"></i>
				<ul>
					<li><a href="#"><i class="icon-facebook"></i></a></li>
					<li><a href="#"><i class="icon-twitter"></i></a></li>
					<li><a href="#"><i class="icon-instagram"></i></a></li>
					<li><a href="#"><i class="icon-linkedin"></i></a></li>
				</ul>
			</div>
		</aside> 
		<!-- END COLORLIB-ASIDE -->

		<div id="colorlib-main">
			<c:choose>
				<c:when test="${fn:length(blogDetail) > 0 }">
						<c:forEach items="${blogDetail}" var="blogDetail" varStatus="rowcnt">
							<section class="ftco-section contact-section">
								<div class="container" style ="margin-bottom :50px">
								  <div class="row d-flex mb-5 contact-info">
									<div class="col-md-12 mb-4">
									  <h1 class="h1 font-weight-bold">${blogDetail.blogTitle }</h1>
									</div>
									<div class="col-md-3">
									  <p><span>date:</span> ${blogDetail.writeDate }</p>
									</div>
								  	</div>
								  	<div class="col-md-12" style="color: black;" >
										${blogDetail.blogContent }
									</div>
								</div>
								<div align="center" class="row d-flex mb-5 contact-info" style="float: right">
						          <div class="col-md-3">
						            <a href="/linepayis/blogServlet?key=detail&update=Y&blogIdx=${blogDetail.blogIdx}">
										<input class="btn" type="button" value="수정">
									</a>
						          </div>
						          <div class="col-md-3">
						            <a href="/linepayis/blogServlet?key=delete&blogIdx=${blogDetail.blogIdx}"><input class="btn" type="button" value="삭제"></a>
						          </div>
						          <div class="col-md-3">
						            <a href="/linepayis/blogServlet?key=list"><input class="btn" type="button" value="목록으로"></a>
						          </div>
						        </div>
							</section>
						</c:forEach>
					</c:when>
					<c:otherwise>
						조회된 결과가 없습니다.
					</c:otherwise>
				</c:choose>
			
			<footer class="ftco-footer ftco-bg-dark ftco-section">
			<div class="container px-md-5">
				<div class="row mb-5">
				<div class="col-md">
					<div class="ftco-footer-widget mb-4 ml-md-4">
					<h2 class="ftco-heading-2">Category</h2>
					<ul class="list-unstyled categories">
						<li><a href="/linepayis">Home</a></li>
		                <li><a href="/linepayis/blogServlet?key=list">Post List</a></li>
		                <li><a href="/linepayis/blogServlet?key=write">Upload Post</a></li>
					</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
					<h2 class="ftco-heading-2">Archives</h2>
					<ul class="list-unstyled categories">
						<li><a href="#">May 2021</a></li>
					</ul>
					</div>
				</div>
				<div class="col-md">
					<div class="ftco-footer-widget mb-4">
						<h2 class="ftco-heading-2">Contacts</h2>
						<div class="block-23 mb-3">
						<ul>
			                <li><span class="icon icon-map-marker"></span><span class="text">N tech service</span></li>
			                <li><a href="#"><span class="icon icon-phone"></span><span class="text">010 1234 5678</span></a></li>
			                <li><a href="#"><span class="icon icon-envelope"></span><span class="text">NT11637@nts_corp.com</span></a></li>
						</ul>
						</div>
					</div>
				</div>
				</div>
				<div class="row">
				<div class="col-md-12">

					<p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
		Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved <i class="icon-heart" aria-hidden="true"></i>
		<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
				</div>
				</div>
			</div>
			</footer>
		</div><!-- END COLORLIB-MAIN -->
	</div><!-- END COLORLIB-PAGE -->

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


  <script src="./resources/js/jquery.min.js"></script>
  <script src="./resources/js/jquery-migrate-3.0.1.min.js"></script>
  <script src="./resources/js/popper.min.js"></script>
  <script src="./resources/js/bootstrap.min.js"></script>
  <script src="./resources/js/jquery.easing.1.3.js"></script>
  <script src="./resources/js/jquery.waypoints.min.js"></script>
  <script src="./resources/js/jquery.stellar.min.js"></script>
  <script src="./resources/js/owl.carousel.min.js"></script>
  <script src="./resources/js/jquery.magnific-popup.min.js"></script>
  <script src="./resources/js/aos.js"></script>
  <script src="./resources/js/jquery.animateNumber.min.js"></script>
  <script src="./resources/js/bootstrap-datepicker.js"></script>
  <script src="./resources/js/jquery.timepicker.min.js"></script>
  <script src="./resources/js/scrollax.min.js"></script>
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="./resources/js/main.js"></script>
  </body>
</html>