<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tacos</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/main.css">
<!-- change to match your file/naming structure -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/js/app.js"></script>
<!-- change to match your file/naming structure -->
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#">Navbar</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="/home">Home</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="/logout">Logout</a>
				<li class="nav-item"><a class="nav-link" href="/my-pokemon">My
						Pokemon</a></li>

				<li>
					<form action="/search">
						<input type="text" name="pokemon" />
					</form>
				</li>
			</ul>
		</div>
	</nav>
	<h1>
		Hello
		<c:out value="${userFirstName}"></c:out>

	</h1>
	<h2>
		<c:out value="${teamFull}"></c:out>
	</h2>

	<table class="table table-dark table-hover table-striped text-center">
		<thead>
			<tr>
				<th>Id</th>
				<th>Name</th>
				<th>Attack</th>
				<th>Defense</th>
				<th>Speed</th>
				<th>Special Attack</th>
				<th>Special Defense</th>
				<th>HP</th>
				<c:if test="${myPokemonTeamSize < 6 }">
					<th>Actions</th>
				</c:if>
			</tr>
		</thead>

		<tbody>
			<c:forEach var="p" items="${allPokemon}">
				<tr>
					<td><c:out value="${p.id }"></c:out></td>
					<td><c:out value="${p.name }"></c:out></td>
					<td><c:out value="${p.attack }"></c:out></td>
					<td><c:out value="${p.defense }"></c:out></td>
					<td><c:out value="${p.speed}"></c:out></td>
					<td><c:out value="${p.specialAttack }"></c:out></td>
					<td><c:out value="${p.specialDefense }"></c:out></td>
					<td><c:out value="${p.hp }"></c:out></td>
					<c:if test="${myPokemonTeamSize < 6 }">
						<td><a href="/capture/${p.id}"class="btn btn-danger btn-outline-warning">Capture</a></td>
					</c:if>

				</tr>
			</c:forEach>
		</tbody>
	</table>


</body>
</html>