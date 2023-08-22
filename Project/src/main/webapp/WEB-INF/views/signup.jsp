<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang=ko>
<head>
	<meta charset="UTF-8">
	<title>남씨네 회원가입</title>
     	<!-- Favicon-->
      <link rel="icon" type="image/x-icon" href="resources/assets/favicon.png" />
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
                    <p class="lead fw-normal text-white-50 mb-0">회원가입 화면입니다.</p>
                </div>
            </div>
        </header>
		<!-- Section -->
		<section class="py-5">
			<div style="text-align:center; font-size:50px;" class="container px-4 px-lg-5 mt-5">
				<strong class="navbar-brand">NAMCNE</strong>
			</div>
			<div class="container px-4 px-lg-5 mt-5">
				<form method="post" action="/signUpOk" id="formSignUp">
				<table align=center>
					<tr><td>로그인 아이디</td><td><input type=text name=logid id=id></td></tr>
					<tr><td colspan=2 id="idvd"><small style='color:red;'><img src="/img/redcheck.png" style="width:20px;">아이디는 8자 이상, 16자 이하 영소문자+숫자만 입력 가능합니다.</small></td></tr>
					<tr><td>비 밀 번 호</td><td><input type=password name=pwd id=pw1></td></tr>
					<tr><td>비밀번호 확인</td><td><input type=password name=pwd id=pw2></td></tr>
					<tr><td colspan=2 id="pwvd"><small style='color:red;'><img src="/img/redcheck.png" style="width:20px;">비밀번호는 8자 이상, 16자 이하 영대소문자+숫자의 형태로 이루어져야 합니다.</small></td></tr>
					<tr><td>실 &nbsp; 명</td><td><input type=text name=name id=name></td></tr>
					<tr><td>휴대폰 번호</td><td><input type=text name=mobile id=mobile placeholder='ex)010-1234-5678'></td></tr>
					<tr><td>성 &nbsp; 별</td><td><input type=radio name=gender id=male value='남성' checked>남성&nbsp;<input type=radio name=gender id=female value='여성'>여성</td></tr>
					<tr><td>생 년 월 일</td><td><input type=date name=birthday id=birthday></td></tr>
					<tr><td align=center colspan=2><input type=submit value="가입하기" class="btn btn-outline-dark">&nbsp;&nbsp;
				</table>
				</form>
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
        <script src="resources/js/headerScripts.js"></script>
        <script src="resources/js/signUpScripts.js"></script>
</body>
</html>