<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    response.setCharacterEncoding("UTF-8");
    request.setCharacterEncoding("UTF-8");
%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="static java.lang.System.out"%>
<!-- -Menu -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<img src="<c:url value="/resources/image/kodowanie.png" />" alt="image"
		height="120" />
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbar1" aria-controls="navbarNav" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbar1">
		<ul class="navbar-nav ml-auto">
			<li class="nav-item active"><a class="nav-link"
				href="http://localhost:8088/Quiz/">Home <span class="sr-only">(current)</span></a>
			</li>
			<li class="nav-item"><a class="nav-link"
				href="http://localhost:8088/Quiz/szyfr"> Szyfr Cezara </a></li>
				<li class="nav-item"><a class="nav-link"
				href="http://localhost:8088/Quiz/szyfr"> Szyfr Xor </a></li>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item"
						href="http://localhost:8088/Quiz/szyfr"> Szyfr Cezara</a></li>
					<li><a class="dropdown-item" href="#"> Menu item 2 </a></li>
				</ul></li>
			
		</ul>
	</div>
</nav>