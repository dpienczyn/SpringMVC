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
<html lang="pl-PL">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/d.css"/>" />
<!------ Include the above in your HEAD tag ---------->

<link href="http://fonts.googleapis.com/css?family=Arimo:400"
	rel="stylesheet">
</head>
<body>
	<header> <jsp:include page="menu.jsp" /> </header>

	<section>
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2 text-center">
				<h2 class="text-uppercase">Szyfr Cezara</h2>
				<div class="divider"></div>

			</div>
		</div>
	</div>
	</section>

	<form method="post" action="${pageContext.request.contextPath}/szyfr">
		<div class="inner contact">
			<!-- Form Area -->
			<div class="contact-form">
				<!-- Form -->
				<form id="contact-us" method="post" action="#">
					<!-- Left Inputs -->
					<div class="col-xs-6 wow animated slideInLeft" data-wow-delay=".5s">

						<!-- Subject -->
						<input name="klucz" id="subject" class="form"
							placeholder="Wpisz klucz od 1 do 25" value=${klu} ></input>
					</div>
					<!-- End Left Inputs -->
					<!-- Right Inputs -->
					<div class="col-xs-6 wow animated slideInRight"
						data-wow-delay=".5s">
						<!-- Message -->
						<textarea name="litera" id="message" class="form textarea"
							placeholder="Wpisz tekst który chcesz zaszyfrować">${t}</textarea>
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
								class="form-btn semibold">Koduj</button>
						</div>
						<!-- End Bottom Submit -->
						</br>
						<div class="relative fullwidth col-xs-12">
							<!-- Send Button -->
							<button type="submit" id="submit" name="action"
								class="form-btn semibold">Dekoduj</button>
						</div>
						<!-- End Bottom Submit -->
						<!-- Clear -->
				</form>

				<!-- Your Mail Message -->
				<div class="mail-message-area">
					<!-- Message -->
					<div class="alert gray-bg mail-message not-visible-message">
						<strong>Thank You !</strong> Your email has been delivered.
					</div>
				</div>

			</div>
			<!-- End Contact Form Area -->
		</div>
		<!-- End Inner -->

		<div class="container">
			<br>
			<p>

				<strong>Szyfr Cezara</strong> lub cykliczny. Zasada szyfrowania i
				deszyfrowania tego szyfru jest taka sama. Do szyfrowania używamy
				alfabetu
			<center>
				</br> <i>A B C D E F G H I J K L M N O P Q R S T U V W X Y Z</i></br>
			</center>

			</br>Daną literę zamieniamy na literę, która jest od niej o <strong>k</strong>
			pozycji dalej w alfabecie. Jeśli brakuje liter, wracamy do początku
			(stąd ,,cykliczny''). Liczbę pozycji <strong>k</strong> nazywamy <strong>kluczem</strong>.
			Klucz oznaczamy liczbą od 0 do 26 lub literą, na którą przechodzi a.
			Taka konwencja jest dość wygodna, zwłaszcza, kiedy chcemy przejść do
			bardziej skomplikowanych szyfrów Vigenere'a. Jeśli chcemy zaszyfrować
			tekst <i>KOD LEONARDA</i> kluczem <strong>3 (d)</strong>, zamieniamy
			każdą literę na trzecią po niej, tj, <i>K</i> przechodzi na <i>N</i>,
			<i>O</i> na <i>R</i> itd. W rezultacie otrzymujemy <i>NRG
				OHRQDUGD</i>. Rozszyfrowujemy według tej samej zasady, przy czym kluczem
			jest liczba <strong>26-k</strong>, gdzie <strong>k</strong> jest
			kluczem, którym szyfrowany był tekst. Na przykład, jeśli tekst <i>BEQMZLHI
				AHGNZZZE</i> był zaszyfrowany kluczem <strong>8</strong>, to kluczem
			rozszyfrowującym jest <strong>18</strong>. Stosując ten klucz
			otrzymujemy tekst jawny <i>TWIERDZA SZYFROW</i>.
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