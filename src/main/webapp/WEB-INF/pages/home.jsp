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

<link rel="stylesheet" href="<c:url value="/resources/css/d.css"/>" />
<link rel="stylesheet" href="<c:url value="/resources/css/home.css"/>" />

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

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
	<div id="text1">
		<p>Szyfruj</p>
	</div>
	<div id="text2">
		<p>Deszyfruj</p>
	</div>
	<div id="text3">
		<p>Szyfruj</p>
	</div>
	<div id="text5">
		<p>Deszyfruj</p>
	</div>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
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