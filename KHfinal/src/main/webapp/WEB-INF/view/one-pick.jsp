<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>원픽</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free HTML Templates" name="keywords">
<meta content="Free HTML Templates" name="description">

<!-- Favicon -->
<link href="${pageContext.request.contextPath}/resources/favicon.ico"
	rel="icon">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700;800&family=Rubik:wght@400;500;600;700&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link
	href="${pageContext.request.contextPath}/resources/css/one-pick/owl.carousel.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/resources/css/one-pick/animate.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link
	href="${pageContext.request.contextPath}/resources/css/one-pick/bootstrap.min.css"
	rel="stylesheet">

<!-- Template Stylesheet -->
<link
	href="${pageContext.request.contextPath}/resources/css/one-pick/style.css"
	rel="stylesheet">
	
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<style>
	.display-1 {
		font-family: 'Noto Sans KR', Arial, sans-serif;
	}
	
	.mb-00, .mb-11, .text-uppercase, .pt-4 {
		font-family: 'Noto Sans KR', Arial, sans-serif;
	}
</style>
<body>
	<!-- Spinner Start -->
	<div id="spinner"
		class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
		<div class="spinner"></div>
	</div>
	<!-- Spinner End -->


	<!-- Navbar & Carousel Start -->
	<div class="container-fluid position-relative p-0">
		<nav class="navbar navbar-expand-lg navbar-dark px-5 py-3 py-lg-0">
			<a href="${pageContext.request.contextPath}/index"
				class="navbar-brand p-0">
				<h1 class="m-0">
					<i class="fa fa-user-tie me-2"></i>JJAPKOREA
				</h1>
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
				<span class="fa fa-bars"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarCollapse">
				<div class="navbar-nav ms-auto py-0">
					<a href="${pageContext.request.contextPath}/one-pick"
						class="nav-item nav-link active">Home</a>
					<a href="${pageContext.request.contextPath}/jobPostingList/date"
						class="nav-item nav-link">Jobs</a>
					<a href="${pageContext.request.contextPath}/businessList"
						class="nav-item nav-link">Companies</a>
					<a href="${pageContext.request.contextPath}/login/"
						class="nav-item nav-link">Chats</a>
					<a href="${pageContext.request.contextPath}/board/list"
						class="nav-item nav-link">JobTalk</a>
				</div>
				<butaton type="button" class="btn text-primary ms-3"
					data-bs-toggle="modal" data-bs-target="#searchModal"> <i
					class="fa fa-search"></i></butaton>
			</div>
		</nav>

		<div id="header-carousel" class="carousel slide carousel-fade"
			data-bs-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="w-100"
						src="${pageContext.request.contextPath}/resources/images/one-pick/carousel-1.jpg"
						alt="Image">
					<div
						class="carousel-caption d-flex flex-column align-items-center justify-content-center">
						<div class="p-3" style="max-width: 900px;">
							<h5 class="text-white text-uppercase mb-3 animated slideInDown">Most
								Popular Job Listings</h5>
							<c:choose>
								<c:when test="${not empty mostScrappedJob}">
									<c:forEach items="${mostScrappedJob}" var="item">
										<h1 class="display-1 text-white mb-md-4 animated zoomIn">${item.RE_TITLE}</h1>
										<a href="quote.html"
											class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Free
											Quote</a>
										<a
											href="<c:url value='/jobpostinginfo'><c:param name='jid' value='${item.JID}'/></c:url>"
											class="btn btn-outline-light py-md-3 px-md-5 animated slideInRight">View
											Details</a>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<h1 class="display-1 text-white mb-md-4 animated zoomIn">Creative
										& Innovative Digital Solution</h1>
									<a href="quote.html"
										class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Free
										Quote</a>
									<a href=""
										class="btn btn-outline-light py-md-3 px-md-5 animated slideInRight">Contact
										Us</a>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img class="w-100"
						src="${pageContext.request.contextPath}/resources/images/one-pick/carousel-2.jpg"
						alt="Image">
					<div
						class="carousel-caption d-flex flex-column align-items-center justify-content-center">
						<div class="p-3" style="max-width: 900px;">
							<h5 class="text-white text-uppercase mb-3 animated slideInDown">Most
								Clicked Job Listings</h5>
							<c:choose>
								<c:when test="${not empty mostClickedJob}">
									<c:forEach items="${mostClickedJob}" var="item">
										<h1 class="display-1 text-white mb-md-4 animated zoomIn">${item.RE_TITLE}</h1>
										<a href="quote.html"
											class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Free
											Quote</a>
										<a
											href="<c:url value='/jobpostinginfo'><c:param name='jid' value='${item.JID}'/></c:url>"
											class="btn btn-outline-light py-md-3 px-md-5 animated slideInRight">View
											Details</a>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<h1 class="display-1 text-white mb-md-4 animated zoomIn">Creative
										& Innovative Digital Solution</h1>
									<a href="quote.html"
										class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Free
										Quote</a>
									<a href=""
										class="btn btn-outline-light py-md-3 px-md-5 animated slideInRight">Contact
										Us</a>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img class="w-100"
						src="${pageContext.request.contextPath}/resources/images/one-pick/carousel-2.jpg"
						alt="Image">
					<div
						class="carousel-caption d-flex flex-column align-items-center justify-content-center">
						<div class="p-3" style="max-width: 900px;">
							<h5 class="text-white text-uppercase mb-3 animated slideInDown">Highest-Paying
								Job Listings</h5>
							<c:choose>
								<c:when test="${not empty highestSalaryJob}">
									<c:forEach items="${highestSalaryJob}" var="item">
										<h1 class="display-1 text-white mb-md-4 animated zoomIn">${item.RE_TITLE}</h1>
										<a href="quote.html"
											class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Free
											Quote</a>
										<a
											href="<c:url value='/jobpostinginfo'><c:param name='jid' value='${item.JID}'/></c:url>"
											class="btn btn-outline-light py-md-3 px-md-5 animated slideInRight">View
											Details</a>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<h1 class="display-1 text-white mb-md-4 animated zoomIn">Creative
										& Innovative Digital Solution</h1>
									<a href="quote.html"
										class="btn btn-primary py-md-3 px-md-5 me-3 animated slideInLeft">Free
										Quote</a>
									<a href=""
										class="btn btn-outline-light py-md-3 px-md-5 animated slideInRight">Contact
										Us</a>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#header-carousel" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#header-carousel" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
	</div>
	<!-- Navbar & Carousel End -->


	<!-- Full Screen Search Start -->
	<div class="modal fade" id="searchModal" tabindex="-1">
		<div class="modal-dialog modal-fullscreen">
			<div class="modal-content" style="background: rgba(9, 30, 62, .7);">
				<div class="modal-header border-0">
					<button type="button" class="btn bg-white btn-close"
						data-bs-dismiss="modal" aria-label="Close"></button>
				</div>
				<div
					class="modal-body d-flex align-items-center justify-content-center">
					<div class="input-group" style="max-width: 600px;">
						<input type="text"
							class="form-control bg-transparent border-primary p-3"
							placeholder="Type search keyword">
						<button class="btn btn-primary px-4">
							<i class="bi bi-search"></i>
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Full Screen Search End -->


	<!-- Facts Start -->
	<div class="container-fluid facts py-5 pt-lg-0">
		<div class="container py-5 pt-lg-0">
			<div class="row gx-0">
				<div class="col-lg-4 wow zoomIn" data-wow-delay="0.1s">
					<div
						class="bg-primary shadow d-flex align-items-center justify-content-center p-4"
						style="height: 150px;">
						<div
							class="bg-white d-flex align-items-center justify-content-center rounded mb-2"
							style="width: 60px; height: 60px;">
							<i class="fa fa-users text-primary"></i>
						</div>
						<div class="ps-4">
							<h5 class="text-white mb-0">Scrap Count</h5>
							<c:choose>
								<c:when test="${not empty mostScrappedJob}">
									<c:forEach items="${mostScrappedJob}" var="item">
										<h1 class="text-white mb-0" data-toggle="counter-up">${item.SCRAP_COUNT}</h1>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<h1 class="text-white mb-0" data-toggle="counter-up">12345</h1>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
				<div class="col-lg-4 wow zoomIn" data-wow-delay="0.3s">
					<div
						class="bg-light shadow d-flex align-items-center justify-content-center p-4"
						style="height: 150px;">
						<div
							class="bg-primary d-flex align-items-center justify-content-center rounded mb-2"
							style="width: 60px; height: 60px;">
							<i class="fa fa-check text-white"></i>
						</div>
						<div class="ps-4">
							<h5 class="text-primary mb-0">View Count</h5>
							<c:choose>
								<c:when test="${not empty mostClickedJob}">
									<c:forEach items="${mostClickedJob}" var="item">
										<h1 class="text-white mb-0" data-toggle="counter-up"
											style="color: #091E3E !important;">${item.COUNT}</h1>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<h1 class="text-white mb-0" data-toggle="counter-up">12345</h1>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
				<div class="col-lg-4 wow zoomIn" data-wow-delay="0.6s">
					<div
						class="bg-primary shadow d-flex align-items-center justify-content-center p-4"
						style="height: 150px;">
						<div
							class="bg-white d-flex align-items-center justify-content-center rounded mb-2"
							style="width: 60px; height: 60px;">
							<i class="fa fa-award text-primary"></i>
						</div>
						<div class="ps-4">
							<h5 class="text-white mb-0">Salary</h5>
							<c:choose>
								<c:when test="${not empty highestSalaryJob}">
									<c:forEach items="${highestSalaryJob}" var="item"
										varStatus="vs">
										<h1 class="text-white mb-0" data-toggle="counter-up"
											id="salaryValue_${vs.count }" data-salary="${item.SALARY}"
											style="white-space: nowrap; overflow: hidden; text-overflow: ellipsis;">
											${item.SALARY}</h1>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<h1 class="text-white mb-0" data-toggle="counter-up">12345</h1>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Facts Start -->


	<!-- About Start -->
	<!-- About End -->


	<!-- Features Start -->
	<!-- Features Start -->


	<!-- Service Start -->
	<!-- Service End -->


	<!-- Pricing Plan Start -->
	<!-- Pricing Plan End -->


	<!-- Quote Start -->
	<!-- Quote End -->


	<!-- Testimonial Start -->
	<div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
		<div class="container py-5">
			<div
				class="section-title text-center position-relative pb-3 mb-4 mx-auto"
				style="max-width: 600px;">
				<h5 class="fw-bold text-primary text-uppercase">Jobs</h5>
				<h1 class="mb-00">지금 바로 짭코리아의 채용 공고들을 만나보세요.</h1>
			</div>
			<div class="owl-carousel testimonial-carousel wow fadeInUp"
				data-wow-delay="0.6s">
				<c:choose>
					<c:when test="${not empty list}">
						<c:forEach items="${list}" var="item"
							varStatus="vs">
							<div class="testimonial-item bg-light my-4">
								<a href="<c:url value='/jobpostinginfo'><c:param name='jid' value='${item.JID}'/></c:url>">
									<div class="d-flex align-items-center border-bottom pt-5 pb-4 px-5">
										<img class="img-fluid rounded"
											src="${item.LOGO_IMAGE}"
											style="width: 60px; height: 60px;">
										<div class="ps-4">
											<h4 class="text-primary mb-11">${item.RE_TITLE}</h4>
											<small class="text-uppercase">${item.BIZNAME}</small>
										</div>
									</div>
									<div class="pt-4 pb-5 px-5">${item.JPOSTDETAIL}</div>
								</a>
							</div>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<div class="testimonial-item bg-light my-4">
							<div class="d-flex align-items-center border-bottom pt-5 pb-4 px-5">
								<img class="img-fluid rounded"
									src="${pageContext.request.contextPath}/resources/images/one-pick/testimonial-1.jpg"
									style="width: 60px; height: 60px;">
								<div class="ps-4">
									<h4 class="text-primary mb-1">Client Name</h4>
									<small class="text-uppercase">Profession</small>
								</div>
							</div>
							<div class="pt-4 pb-5 px-5">Dolor et eos labore, stet justo
								sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam</div>
						</div>
						<div class="testimonial-item bg-light my-4">
							<div class="d-flex align-items-center border-bottom pt-5 pb-4 px-5">
								<img class="img-fluid rounded"
									src="${pageContext.request.contextPath}/resources/images/one-pick/testimonial-2.jpg"
									style="width: 60px; height: 60px;">
								<div class="ps-4">
									<h4 class="text-primary mb-1">Client Name</h4>
									<small class="text-uppercase">Profession</small>
								</div>
							</div>
							<div class="pt-4 pb-5 px-5">Dolor et eos labore, stet justo
								sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam</div>
						</div>
						<div class="testimonial-item bg-light my-4">
							<div class="d-flex align-items-center border-bottom pt-5 pb-4 px-5">
								<img class="img-fluid rounded"
									src="${pageContext.request.contextPath}/resources/images/one-pick/testimonial-3.jpg"
									style="width: 60px; height: 60px;">
								<div class="ps-4">
									<h4 class="text-primary mb-1">Client Name</h4>
									<small class="text-uppercase">Profession</small>
								</div>
							</div>
							<div class="pt-4 pb-5 px-5">Dolor et eos labore, stet justo
								sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam</div>
						</div>
						<div class="testimonial-item bg-light my-4">
							<div class="d-flex align-items-center border-bottom pt-5 pb-4 px-5">
								<img class="img-fluid rounded"
									src="${pageContext.request.contextPath}/resources/images/one-pick/testimonial-4.jpg"
									style="width: 60px; height: 60px;">
								<div class="ps-4">
									<h4 class="text-primary mb-1">Client Name</h4>
									<small class="text-uppercase">Profession</small>
								</div>
							</div>
							<div class="pt-4 pb-5 px-5">Dolor et eos labore, stet justo
								sed est sed. Diam sed sed dolor stet amet eirmod eos labore diam</div>
						</div>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
	<!-- Testimonial End -->


	<!-- Team Start -->
	<!-- Team End -->


	<!-- Blog Start -->
	<!-- Blog Start -->


	<!-- Vendor Start -->
	<div class="container-fluid py-5 wow fadeInUp" data-wow-delay="0.1s">
		<div class="container py-5 mb-5">
			<div class="bg-white">
				<div class="owl-carousel vendor-carousel">
					<img
						src="${pageContext.request.contextPath}/resources/images/one-pick/vendor-1.jpg"
						alt=""> <img
						src="${pageContext.request.contextPath}/resources/images/one-pick/vendor-2.jpg"
						alt=""> <img
						src="${pageContext.request.contextPath}/resources/images/one-pick/vendor-3.jpg"
						alt=""> <img
						src="${pageContext.request.contextPath}/resources/images/one-pick/vendor-4.jpg"
						alt=""> <img
						src="${pageContext.request.contextPath}/resources/images/one-pick/vendor-5.jpg"
						alt=""> <img
						src="${pageContext.request.contextPath}/resources/images/one-pick/vendor-6.jpg"
						alt=""> <img
						src="${pageContext.request.contextPath}/resources/images/one-pick/vendor-7.jpg"
						alt=""> <img
						src="${pageContext.request.contextPath}/resources/images/one-pick/vendor-8.jpg"
						alt=""> <img
						src="${pageContext.request.contextPath}/resources/images/one-pick/vendor-9.jpg"
						alt="">
				</div>
			</div>
		</div>
	</div>
	<!-- Vendor End -->


	<!-- Footer Start -->
	<div class="container-fluid bg-dark text-light mt-5 wow fadeInUp"
		data-wow-delay="0.1s">
		<div class="container">
			<div class="row gx-5">
				<div class="col-lg-4 col-md-6 footer-about">
					<div
						class="d-flex flex-column align-items-center justify-content-center text-center h-100 bg-primary p-4">
						<a href="index.html" class="navbar-brand">
							<h1 class="m-0 text-white">
								<i class="fa fa-user-tie me-2"></i>JJAPKOREA
							</h1>
						</a>
						<p class="mt-3 mb-4">Lorem diam sit erat dolor elitr et, diam
							lorem justo amet clita stet eos sit. Elitr dolor duo lorem, elitr
							clita ipsum sea. Diam amet erat lorem stet eos. Diam amet et kasd
							eos duo.</p>
					</div>
				</div>
				<div class="col-lg-8 col-md-6">
					<div class="row gx-5">
						<div class="col-lg-4 col-md-12 pt-5 mb-5">
							<div
								class="section-title section-title-sm position-relative pb-3 mb-4">
								<h3 class="text-light mb-0">Get In Touch</h3>
							</div>
							<div class="d-flex mb-2">
								<i class="bi bi-geo-alt text-primary me-2"></i>
								<p class="mb-0">123 Street, New York, USA</p>
							</div>
							<div class="d-flex mb-2">
								<i class="bi bi-envelope-open text-primary me-2"></i>
								<p class="mb-0">info@example.com</p>
							</div>
							<div class="d-flex mb-2">
								<i class="bi bi-telephone text-primary me-2"></i>
								<p class="mb-0">+012 345 67890</p>
							</div>
							<div class="d-flex mt-4">
								<a class="btn btn-primary btn-square me-2" href="#">
									<i class="fab fa-twitter fw-normal"></i>
								</a>
								<a class="btn btn-primary btn-square me-2" href="#">
									<i class="fab fa-facebook-f fw-normal"></i>
								</a>
								<a class="btn btn-primary btn-square me-2" href="#">
									<i class="fab fa-linkedin-in fw-normal"></i>
								</a>
								<a class="btn btn-primary btn-square" href="#">
									<i class="fab fa-instagram fw-normal"></i>
								</a>
							</div>
						</div>
						<div class="col-lg-4 col-md-12 pt-0 pt-lg-5 mb-5">
							<div
								class="section-title section-title-sm position-relative pb-3 mb-4">
								<h3 class="text-light mb-0">Quick Links</h3>
							</div>
							<div
								class="link-animated d-flex flex-column justify-content-start">
								<a class="text-light mb-2" href="${pageContext.request.contextPath}/one-pick">
									<i class="bi bi-arrow-right text-primary me-2"></i>Home
								</a>
								<a class="text-light mb-2" href="${pageContext.request.contextPath}/jobPostingList/date">
									<i class="bi bi-arrow-right text-primary me-2"></i>Jobs
								</a>
								<a class="text-light mb-2" href="${pageContext.request.contextPath}/businessList">
									<i class="bi bi-arrow-right text-primary me-2"></i>Companies
								</a>
								<a class="text-light mb-2" href="${pageContext.request.contextPath}/login/">
									<i class="bi bi-arrow-right text-primary me-2"></i>Chats
								</a>
								<a class="text-light mb-2" href="${pageContext.request.contextPath}/board/list">
									<i class="bi bi-arrow-right text-primary me-2"></i>JobTalk
								</a>
							</div>
						</div>
						<div class="col-lg-4 col-md-12 pt-0 pt-lg-5 mb-5">
							<div
								class="section-title section-title-sm position-relative pb-3 mb-4">
								<h3 class="text-light mb-0">Popular Links</h3>
							</div>
							<div
								class="link-animated d-flex flex-column justify-content-start">
								<a class="text-light mb-2" href="${pageContext.request.contextPath}/one-pick">
									<i class="bi bi-arrow-right text-primary me-2"></i>Home
								</a>
								<a class="text-light mb-2" href="${pageContext.request.contextPath}/jobPostingList/date">
									<i class="bi bi-arrow-right text-primary me-2"></i>Jobs
								</a>
								<a class="text-light mb-2" href="${pageContext.request.contextPath}/businessList">
									<i class="bi bi-arrow-right text-primary me-2"></i>Companies
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container-fluid text-white" style="background: #061429;">
		<div class="container text-center">
			<div class="row justify-content-end">
				<div class="col-lg-8 col-md-6">
					<div class="d-flex align-items-center justify-content-center"
						style="height: 75px;">
						<p class="mb-0">
							&copy;
							<a class="text-white border-bottom" href="#">JJAPKOREA</a>
							. All Rights Reserved.

							<!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
							Designed by
							<a class="text-white border-bottom" href="https://htmlcodex.com">HTML
								Codex</a>
						</p>
						<br>Distributed By:
						<a class="border-bottom" href="https://themewagon.com"
							target="_blank">ThemeWagon</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer End -->


	<!-- Back to Top -->
	<a href="#"
		class="btn btn-lg btn-primary btn-lg-square rounded back-to-top">
		<i class="bi bi-arrow-up"></i>
	</a>


	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/one-pick/wow.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/one-pick/easing.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/one-pick/waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/one-pick/counterup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/one-pick/owl.carousel.min.js"></script>

	<!-- Template Javascript -->
	<script
		src="${pageContext.request.contextPath}/resources/js/one-pick/main.js"></script>
</body>
</html>