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
						<div class="col-xs-6 wow animated slideInLeft"
							data-wow-delay=".5s">
							<div class="klucz">
								<i>WYNIK:</i> ${klu}
							</div>
							<!-- Bottom Submit -->
							<div class="relative fullwidth col-xs-12">
								<!-- Send Button -->
								<button type="submit" id="submit" name="action"
									class="form-btn semibold">Zaszyfruj</button>
							</div>
							<!-- End Bottom Submit -->
							<div class="relative fullwidth col-xs-12">
								<!-- Send Button -->
								<button type="submit" id="submit" name="action"
									class="form-btn semibold">Odszyfruj</button>
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
</body>
</html>