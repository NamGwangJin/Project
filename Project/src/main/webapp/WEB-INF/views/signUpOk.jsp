<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang=ko>
<head>
	<meta charset="UTF-8">
	<title>남씨네 회원가입</title>
     	<!-- Favicon-->
      <link rel="icon" type="image/x-icon" href="resources/assets/favicon.ico" />
      <!-- Bootstrap icons-->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
      <!-- Core theme CSS (includes Bootstrap)-->
      <link href="resources/css/styles.css" rel="stylesheet" />
</head>
<body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="/">NAMCNE</a>
            </div>
        </nav>
         <!-- Header-->
		 <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">남씨네</h1>
                    <p class="lead fw-normal text-white-50 mb-0">회원가입 완료 화면입니다.</p>
                </div>
            </div>
        </header>
		<!-- Section -->
		<section class="py-5">
			<div style="text-align:center; font-size:50px;" class="container px-4 px-lg-5 mt-5">
				<strong class="navbar-brand">NAMCNE</strong>
			</div>
			<div class="container px-4 px-lg-5 mt-5" align="center">
				<strong style="font-size:50px;color:green;"><u>회원가입이 완료되었습니다 !</u></strong><br>
				<button id='goLogin' class="btn btn-outline-dark">로그인 하러가기</button>
			</div>
			<div class="container px-4 px-lg-5 mt-5 py-5">
			</div>
		</section>
        <!-- Footer-->
        <footer class="py-5">
            <div class="container"><p class="m-0 text-center">Copyright &copy; NAMCNE Website 2023</p></div>
        </footer>
        <!-- JQuery core JS -->
        <script src="https://code.jquery.com/jquery-latest.js"></script>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="resources/js/signUpOkScripts.js"></script>
</body>
</html>