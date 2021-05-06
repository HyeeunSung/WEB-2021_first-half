<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
	    </section>
		<section class="ftco-section">
	    	<div class="container">
	    		<div class="row">
	    			<div class="col-lg-8">
	    				<div class="row">
	    				<c:choose>
							<c:when test="${fn:length(blogList) > 0 }">
								<c:forEach items="${blogList}" var="blogList" varStatus="rowcnt">
									<div class="col-md-12">
			    						<div class="blog-entry ftco-animate">
			    							<a href="/linepayis/blogServlet?key=detail&blogIdx=${blogList.blogIdx}" class="img" style="background-image: url(resources/images/linepay_logo.png);"></a>
			    							<div class="text pt-2 mt-3">
												<span class="category mb-1 d-block">Technology</span>
												<h3 class="mb-4"><a href="/linepayis/blogServlet?key=detail&blogIdx=${blogList.blogIdx}">${blogList.blogTitle }</a></h3>
												<p class="mb-4">${blogList.blogContent }</p>
												<div class="author mb-4 d-flex align-items-center">
													<a href="/linepayis/blogServlet?key=detail&blogIdx=${blogList.blogIdx}" class="img" style="background-image: url(resources/images/Ogu.jpg);"></a>
													<div class="ml-3 info">
														<span>Written by</span>
														<h3>${blogList.writer }, <span>${blogList.writeDate }</span></h3>
													</div>
												</div>
												<div class="meta-wrap d-md-flex align-items-center">
													<div class="half order-md-last text-md-right">
														<p class="meta">
															<span><i class="icon-heart"></i>3</span>
															<span><i class="icon-eye"></i>100</span>
															<span><i class="icon-comment"></i>5</span>
														</p>
													</div>
													<div class="half">
														<p><a href="/linepayis/blogServlet?key=detail&blogIdx=${blogList.blogIdx}" class="btn btn-primary p-3 px-xl-4 py-xl-3">Continue Reading</a></p>
													</div>
												</div>
											</div>
			    						</div>
			    					</div>
								</c:forEach>
							</c:when>
							<c:otherwise>
								조회된 결과가 없습니다.
							</c:otherwise>
						</c:choose>
						
	    				</div>
<!-- 		    			<div class="row mt-5">
							<div class="col">
								<div class="block-27">
									<ul>
										<li><a href="#">&lt;</a></li>
										<li class="active"><span>1</span></li>
										<li><a href="#">2</a></li>
										<li><a href="#">&gt;</a></li>
									</ul>
								</div>
							</div>
						</div> -->
					</div><!-- END-->
					<!-- ì¤ë¥¸ìª½ ì¬ì´ë ë° -->
					<div class="col-lg-4 sidebar ftco-animate">
						<!-- ê²ì ë°ì¤ -->
						<div class="sidebar-box">
							<form action="#" class="search-form">
								<div class="form-group">
								<span class="icon icon-search"></span>
								<input type="text" class="form-control" placeholder="Type a keyword and hit enter">
								</div>
							</form>
						</div>

						<!-- ì¹´íê³ ë¦¬ -->
						<div class="sidebar-box ftco-animate">
							<h3 class="sidebar-heading">Categories</h3>
							<ul class="categories">
								<li><a href="#">Home <span>(2)</span></a></li>
								<li><a href="#">Line Pay <span>(2)</span></a></li>
							</ul>
						</div>

						<div class="sidebar-box ftco-animate">
							<h3 class="sidebar-heading">Tag Cloud</h3>
							<ul class="tagcloud">
								<a href="#" class="tag-cloud-link">line</a>
								<a href="#" class="tag-cloud-link">pay</a>
								<a href="#" class="tag-cloud-link">test</a>
								<a href="#" class="tag-cloud-link">qa</a>
								<a href="#" class="tag-cloud-link">bug</a>
								<a href="#" class="tag-cloud-link">ipass</a>
								<a href="#" class="tag-cloud-link">point coupone</a>
								<a href="#" class="tag-cloud-link">taxi qr</a>
							</ul>
						</div>
					</div>
					<!-- ì¤ë¥¸ìª½ ì¬ì´ëë° ë -->
	    		</div>
			</div>
	    </section>

	    <footer class="ftco-footer ftco-bg-dark ftco-section">
	      <div class="container px-md-5">
	        <div class="row mb-5">
	          <div class="col-md">
	            <div class="ftco-footer-widget mb-4 ml-md-4">
	              <h2 class="ftco-heading-2">Category</h2>
	              <ul class="list-unstyled categories">
	                <li><a href="#">Home</a></li>
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
