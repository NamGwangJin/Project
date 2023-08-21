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
        <title>상품 상세 보기</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="resources/assets/favicon.ico" />
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
                    <form class="d-flex">
                    	<c:if test="${name == null }">
	                        <button class="btn btn-outline-dark" type="button" id="noLoginCart">
	                            <i class="bi-cart-fill me-1"></i>
	                            장바구니
	                            <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
	                        </button>
	                    </c:if>
	                    <c:if test="${name != null}">
                		    <button class="btn btn-outline-dark" type="submit" id="okLoginCart">
	                            <i class="bi-cart-fill me-1"></i>
	                            장바구니
	                            <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
	                        </button>
	                    </c:if>
                    </form>
                </div>
            </div>
        </nav>
        <!-- Header-->
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">남씨네</h1>
                    <p class="lead fw-normal text-white-50 mb-0">상품 상세 보기 페이지입니다.</p>
                </div>
            </div>
        </header>
		<!-- Section-->
		<section class="py-5" style='width:2000px;height:1000px;'>
		<b><a href='/'>홈</a></b> > <b><a href="/showAll">전체 상품</a></b> > <b><a href="/${product.category}">${product.category}</a></b><br>
		<hr>
			<div>
				<div class="text-center px-4 px-lg-5 my-5">
					<table>
						<tr>
							<td>
								<img src="img/${product.product_img}" style='width:500px; height:500px'></img>
							</td>
							<td>
								<h1>${product.product_name}</h1>
								<h2 style="text-align:right" id=price>${product.product_price} 원</h2>
								<select size=1 id="size">
									<option>사이즈 선택</option>
									<c:forEach items="${productSize}" var="size">
										<option>${size}</option>
									</c:forEach>
								</select>
								<hr>
								<div id='qtyAndPrice'>
									
								</div>
								<hr>
								<button class="btn btn-outline-dark" id="order">
	                            	구매하기
	                        	</button>
	                        	<button class="btn btn-outline-dark" type="submit" id="okLoginCart">
		                            <i class="bi-cart-fill me-1"></i>
		                            장바구니 담기
	                        	</button>
							</td>
						</tr>
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
        <script src="resources/js/viewProductScripts.js"></script>
    </body>
</html>