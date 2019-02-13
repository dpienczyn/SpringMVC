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
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="<c:url value="/resources/css/quiz.css"/>" />
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<div class="row">
			<br> <br>
			<div class="col-sm-8 col-sm-offset-2">
				<div class="loader">
					<div class="col-xs-3 col-xs-offset-5">
						<div id="loadbar" style="display: none;">
							<img
								src="http://schoolsearch.co.ke/systems/img/loader.gif_large.gif"
								alt="Loading" class="center-block loanParamsLoader" style="">
						</div>
					</div>
					<div id="quiz">

						<div class="question">
							<c:forEach var="pytanie" items="${lista}">

								<div class="container">
									<div class="col-md-12">
										<h1>
											<h3>
												<span class="label label-warning" id="qid"
													value=${pytanie
													} name="pytanie">1</span>${pytanie.opis }
										</h1>
									</div>
								</div>

								<span id="question"> </span>
								</h3>
						</div>
						<ul>
							<li><input type="radio" class="inputoption" id="f-option"
								name="action" value="odp1"> <label for="f-option"
								class="element-animation">${pytanie.odp1}</label>
								<div class="check"></div></li>

							<li><input type="radio" class="inputoption" id="s-option"
								name="action" value="odp2"> <label for="s-option"
								class="element-animation">${pytanie.odp2}</label>
								<div class="check">
									<div class="inside"></div>
								</div></li>

							<li><input type="radio" class="inputoption" id="t-option"
								name="action" value="odp3"> <label for="t-option"
								class="element-animation">${pytanie.odp3}</label>
								<div class="check">
									<div class="inside"></div>
								</div></li>
						</ul>
					</div>
				</div>

				<div class="hint">
					<a href="${pageContext.request.contextPath}/quiz/${pytanie.pytanieId}">Click
			Here</a>
					<br> <span class="hidden show-hint">
						<p>
							Comment for single line //<br> comment for multi line
							!--ok--
						<p>
					</span>
				</div>
				<h2>
					<center>
						<td>${r}</td>
					</center>
				</h2>
				<div class="text-muted">
					<span id="answer"></span>
				</div>
			</div>
		</div>
		</c:forEach>
		<div class="row">
			<div class="col-sm-8 col-sm-offset-2">
				<div id="result-of-question" style="display: none;">
					<span id="totalCorrect" class="pull-right"></span>
					<table class="table table-hover table-responsive">
						<thead>
							<tr>
								<th>${pytanie }</th>
								<th>Our answer</th>
								<th>Your answer</th>
								<th>Result</th>
							</tr>
						</thead>
						<tbody id="quizResult"></tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

</body>
</html>