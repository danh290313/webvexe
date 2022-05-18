<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Signin</title>
	<base href="${pageContext.servletContext.contextPath }/" />
	<link rel="stylesheet" type="text/css" href="<c:url value='/resource2/fontawesome/css/all.min.css' />">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resource2/assets/css/style-starter.css' />">
	<link rel="stylesheet" type="text/css" href="<c:url value='/resource2/assets/css/sign-in.css' />">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid px-xl-5">
			<img
				src="<c:url value='/resources/img/tiger left.png' />"
				class="img-fluid d-none d-xl-inline" style="width: 100px;" alt="">
			<a class="pe-1" href="${pageContext.request.contextPath }"><img
				src="<c:url value='/resources/img/logo.png' />"
				alt="" style="width: 200px;"></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#mainNavbar">
				<span class="navbar-toggler-icon"></span>
			</button>


			<div class="collapse navbar-collapse" id="mainNavbar">
				<ul class="navbar-nav w-100 justify-content-lg-between">
					<li class="nav-item mx-2"><a
						class="nav-link px-0 fw-bolder text-uppercase" href="site/index.htm">Trang
							Chủ</a></li>
					<li class="nav-item mx-3 "><a
						class="nav-link  px-0 fw-bolder text-uppercase" href="#">Lịch
							trình</a></li>
					<li class="nav-item mx-3"><a
						class="nav-link  px-0 fw-bolder text-uppercase" href="#">Tin
							tức</a></li>

					<li class="nav-item mx-3"><a
						class="nav-link  px-0 fw-bolder text-uppercase" href="#">Liên
							hệ</a></li>

					<li class="nav-item mx-3 mr-5"><a
						class="nav-link  px-0 fw-bolder text-uppercase" href="#">Về
							chúng tôi</a></li>
					<!-- //////////////// nút đăng nhập -->

					<!-- Chưa đăng nhập thì hiện cái này -->
					
						<a href="site/sign_in.htm"
							class="btn btn-warning d-inline-block mr-auto fw-bold"> <i
							class="fas fa-user-circle"></i> Đăng nhập
						</a>
					


					<!-- Nếu đã đăng nhập mà là khách hàng rồi thì hiện cái này -->
					
					<!--  Nếu đã đăng nhập mà là nhân viên thanh toán thì hiện cái này -->
					

				</ul>
			</div>
			<img
				src="<c:url value='/resources/img/tiger right.png' />"
				class="img-fluid d-none d-xl-inline" style="width: 100px;" alt="">
		</div>


	</nav>

	<div class="container_signup_signin" id="container_signup_signin">
		<div class="form-container sign-up-container">
			<form name="sign-up-form" action="site/sign_up.htm" method="post"  modelAttribute="khach_hang">
				<h1>Create Account</h1>
				<div class="social-container">
					<a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
					<a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
					<a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
				</div>
				<span>or use your email for registration</span>
				<input path="ho_ten"  placeholder="Name" />
				<input path="email"  placeholder="Email" />
			
				<input  path="mat_khau" placeholder="Password" />
				<div class="form-field-wrapper">
									<div style="color: green;">${message }</div>
								</div>
				<button  name="btnAdd">Sign Up</button>
			</form>
			
		</div>
		<div class="form-container sign-in-container">
			<form name="sign-in-form" style="color: var(--theme-title);" method="post"  action="site/sign_in.htm">
				<h1>Sign in</h1>
				<div class="social-container">
					<a href="#" class="social" style="color: var(--theme-title);"><i class="fab fa-facebook-f"></i></a>
					<a href="#" class="social" style="color: var(--theme-title);"><i
							class="fab fa-google-plus-g"></i></a>
					<a href="#" class="social" style="color: var(--theme-title);"><i class="fab fa-linkedin-in"></i></a>
				</div>
				<span>or use your account</span>
				<input name="ho_ten"  placeholder="Username" />
				<input name="mat_khau"  type="password"   placeholder="Password" />
				<a href="site/forgotPassword.htm">Forgot your password?</a>
				<button type="submit">Sign In</button>
			</form>
		</div>
		<div class="overlay-container">
			<div class="overlay">
				<div class="overlay-panel overlay-left">
					<h1>Welcome Back!</h1>
					<p>To keep connected with us please login with your login details</p>
					<button class="ghost" id="signIn">Sign In</button>
				</div>
				<div class="overlay-panel overlay-right">
					<h1>Hello, Friend!</h1>
					<p>Register and book your tickets now!!!</p>
					<button class="ghost" id="signUp">Sign Up</button>
				</div>
			</div>
		</div>
	</div>
	
	<p>${message }</p>
	
	<script type="text/javascript" src="<c:url value='/resource2/assets/js/as-alert-message.min.js' />"></script>
	<script src="<c:url value='/resource2/assets/js/jquery-3.3.1.min.js' />"></script>
	<!--/theme-change-->
	<script src="<c:url value='/resource2/assets/js/theme-change.js' />"></script>
	<!-- disable body scroll which navbar is in active -->
	<script>
		$(function () {
			$('.navbar-toggler').click(function () {
				$('body').toggleClass('noscroll');
			})
		});
	</script>
	<!-- disable body scroll which navbar is in active -->
	<!--/MENU-JS-->
	<script>
		$(window).on("scroll", function () {
			var scroll = $(window).scrollTop();

			if (scroll >= 80) {
				$("#site-header").addClass("nav-fixed");
			} else {
				$("#site-header").removeClass("nav-fixed");
			}
		});

		//Main navigation Active Class Add Remove
		$(".navbar-toggler").on("click", function () {
			$("header").toggleClass("active");
		});
		$(document).on("ready", function () {
			if ($(window).width() > 991) {
				$("header").removeClass("active");
			}
			$(window).on("resize", function () {
				if ($(window).width() > 991) {
					$("header").removeClass("active");
				}
			});
		});
	</script>
	<script src="<c:url value='/resource2/assets/js/bootstrap.min.js' />"></script>

	<script type="text/javascript" src="<c:url value='/resource2/assets/js/sign-in.js' />"></script>

</body>

</html>