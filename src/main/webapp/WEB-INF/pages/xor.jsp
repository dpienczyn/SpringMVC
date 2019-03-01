<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    response.setCharacterEncoding("UTF-8");
    request.setCharacterEncoding("UTF-8");
%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="static java.lang.System.out"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Szyfrowanie</title>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/d.css"/>" />
<!------ Include the above in your HEAD tag ---------->

<link href="http://fonts.googleapis.com/css?family=Arimo:400"
	rel="stylesheet">
</head>
<body>
	 <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <div class="container">
            <img src="<c:url value="/resources/image/kodowanie.png" />" alt="image"
		height="120" />
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                <ul class="navbar-nav ml-auto">
                   
                    <li class="nav-item ">
                        <a class="nav-link href="http://szyfrowanie.herokuapp.com/">HOME</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="http://szyfrowanie.herokuapp.com/szyfr">SZYFR CEZARA</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link " href="http://szyfrowanie.herokuapp.com/xor">SZYFR XOR</a>
                    </li> 
                </ul>
            </div>
        </div>
</nav>

	<section>
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2 text-center">
				<h2 class="text-uppercase">Szyfr XOR</h2>
				<div class="divider"></div>

			</div>
		</div>
	</div>
	</section>

	<form method="post" action="${pageContext.request.contextPath}/xor">
		<div class="inner contact">
			<!-- Form Area -->
			<div class="contact-form">
				<!-- Form -->
				<form id="contact-us" method="post" action="#">
					<!-- Left Inputs -->
					<div class="col-xs-6 wow animated slideInLeft" data-wow-delay=".5s">

						<!-- Subject -->
						<input name="klucz" id="subject" class="form"
							placeholder="Wpisz ciąg liczb który musi być dłuższy niż tekst"
							value=${klucz} ></input>
					</div>
					<!-- End Left Inputs -->
					<!-- Right Inputs -->
					<div class="col-xs-6 wow animated slideInRight"
						data-wow-delay=".5s">
						<!-- Message -->
						<textarea name="haslo" id="message" class="form textarea"
							placeholder="Wpisz tekst który chcesz zaszyfrować">${haslo}</textarea>
					</div>
					<!-- End Right Inputs -->
					<div class="col-xs-6 wow animated slideInLeft" data-wow-delay=".5s">
						<div class="wynik">
							<i>WYNIK:</i> ${ t }
						</div>
							<!-- Bottom Submit -->
							<div class="relative fullwidth col-xs-12">
								<!-- Send Button -->
								<button type="submit" id="submit" name="action"
									class="form-btn semibold">Zaszyfruj</button>
							</div>
							</br>
							<!-- End Bottom Submit -->
							<div class="relative fullwidth col-xs-12">
								<!-- Send Button -->
								<button type="submit" id="submit" name="action"
									class="form-btn semibold">Odszyfruj</button>
							</div>
							<!-- End Bottom Submit -->
							<!-- Clear -->
				</form>

				<div class="container">
			<br>
			<p>

				<strong><i>Szyfr XOR</i></strong> jest odmianą szyfru Vigenère'a. Różni się od niej tym, że zamiast manipulować na literach i znakach, zmienia bity i bajty elektronicznej wiadomości przechowywanej w pamięci komputera.
			<center>
				</br> <i>Szyfrowanie i deszyfrowanie można przedstawić za pomocą następujących wzorów:
    </br><strong>M XOR K = C</strong>
    </br><strong>C XOR K = M</strong></i></br>
			</center>

			</br>Zamiast dodawać do siebie dwie litery alfabetu, jak w oryginalnej wersji szyfru Vigenère'a, w szyfrze <strong><i>XOR</i></strong> algorytm sumuje kolejne bajty tekstu jawnego i sekretnego klucza o dowolnej długości za pomocą działania <strong><i>XOR</i></strong>. Po wykorzystaniu ostatniego bajtu klucza, przechodzi się z powrotem do pierwszego bajtu <i>(analogicznie jak w klasycznej wersji)</i>.

W celu odszyfrowania postępuje się w taki sam sposób, czyli dodaje się kolejne bajty klucza do kolejnych bajtów szyfrogramu za pomocą operacji <strong><i>XOR</i></strong>.
			</p>
		</div>
		<!-- .//container -->

		<br> <br> <br> <br> <br> <br> <br>
		<br> <br> <br>
		<article class="bg-secondary mb-3">
		<div class="card-body text-center">
			<h4 class="text-white">
				<br> Dominika Pienczyn
			</h4>
			<a class="nav-link" href="https://github.com/dpienczyn"><img
				src="<c:url value="/resources/image/logo.png" />" alt="image"
				height="50" /> </a>
			<p class="h5 text-white">November 2018</p>
			<br>
		</div>
		<br>
		<br>
		</article>
</body>
</html>