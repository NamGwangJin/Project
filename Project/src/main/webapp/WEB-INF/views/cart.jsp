<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>남씨네 장바구니</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="resources/assets/favicon.png" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="resources/css/styles.css" rel="stylesheet" />
    </head>
<body>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
                <a class="navbar-brand" href="/">NAMCNE</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">NOTICE</a></li>
                        <li class="nav-item"><a class="nav-link active" href="#!">ABOUT</a></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" style='font-weight:bold;'>SHOP</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="/showAll">전체 상품</a></li>
                                <li><hr class="dropdown-divider" /></li>
                                <li><a class="dropdown-item" href="/top">상의</a></li>
                                <li><a class="dropdown-item" href="/bottom">하의</a></li>
                                <li><a class="dropdown-item" href="/shoes">신발</a></li>
                                <li><a class="dropdown-item" href="/acc">ACC</a></li>
                            </ul>
                        </li>
                    </ul>
                    <c:if test="${name == null}">
                    	<button class="btn btn-outline-dark" id='btnLogin'>로그인</button> &nbsp;
                    </c:if>
                    <c:if test="${name != null}">
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    </div>
                    	<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
	                    	<li class="nav-item dropdown">
		                    	<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style='font-weight:bold;'><Strong>${name}</Strong> 님</a>
		                    	<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
		                    		<li><a class="dropdown-item" href="/mypage">마이페이지</a></li>
		                    		<li><hr class="dropdown-divider" /></li>
		                    		<li><a class="dropdown-item" href="/logout">로그아웃</a></li>
		                    	</ul>
		                    </li>
	                    </ul>
                    </c:if>
                   	<c:if test="${name == null }">
                        <button class="btn btn-outline-dark" id="noLoginCart">
                            <i class="bi-cart-fill me-1"></i>
                            장바구니
                            <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                        </button>
                    </c:if>
                    <c:if test="${name != null}">
               		    <button class="btn btn-outline-dark" id="okLoginCart">
                            <i class="bi-cart-fill me-1"></i>
                            장바구니
                            <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
                        </button>
                    </c:if>
                </div>
            </div>
        </nav>
                <!-- Header-->
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">남씨네</h1>
                    <p class="lead fw-normal text-white-50 mb-0">장바구니 화면입니다.</p>
                </div>
            </div>
        </header>
		<!--Section -->
        <section class="py-5">
        	<div class="container px-4 px-lg-5 mt-5">
        		<div class="text-center">
        			<h1>CART</h1>
        			<hr class="hrbold">
        			<table border="1" cellspacing="0" cellpadding="0" width="90%" align="center">
        				<thead style="background-color:beige;">
        					<tr width="90%"><td width="60%"><b>제품</b></td><td><b>수량</b></td><td><b>가격</b></td><td><b>취소</b></td></tr>
        				</thead>
        					<tr><td colspan=4><hr></td></tr>
        				<tbody>
        					<tr><td>제품사진/제품명/옵션</td><td>수량</td><td>가격</td><td>삭제하기</td></tr>
        				</tbody>
        			</table>
        		</div>
        	</div>
        </section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; NAMCNE Website 2023</p></div>
        </footer>
        <!-- JQuery core JS -->
        <script src="https://code.jquery.com/jquery-latest.js"></script>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="resources/js/headerScripts.js"></script>
        <script src="resources/js/cartScripts.js"></script>
</body>
</html>