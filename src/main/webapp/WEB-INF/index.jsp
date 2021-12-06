<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--/////////////////////////////////////////////////////
//	INDEX JSP
///////////////////////////////////////////////////////// -->

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- ---- CSS LINKS --------------------------------- -->
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
	<title>Ninja Gold</title>
</head>
<body>
    	<!-- //// HEADER //////// -->
	<header>
		<div class="navbar navbar-dark bg-dark box-shadow">
			<div class="container d-flex justify-content-between">
				<a href="/" class="navbar-brand d-flex align-items-center"> <strong
					class="text-warning">NINJA GOLD</strong>
				</a> <a class="btn btn-secondary " href="/">HOME</a>
			</div>
		</div>
	</header>

	<!-- //// MAIN AREA //////// -->
	<main role="main">
		<div class="container mt-4">
			<h2>
				Your Gold: <c:out value="${ ninjagold.getGold() }"></c:out>
			</h2>
			<div class="row justify-content-around">
				<div class="col-2 d-flex flex-column m-1 p-1 justify-content-center align-items-center rounded bg-info">
					<h2>Farm</h2>
					<p>(earns 10-20 gold)</p>
					<button class="btn btn-success" onclick="window.location.href='/gold/farm';">Find Gold!</button>
				</div>
				<div class="col-2 d-flex flex-column m-1 p-1 justify-content-center align-items-center rounded bg-info">
					<h2>Cave</h2>
					<p>(earns 5-10 gold)</p>
					<button class="btn btn-success" onclick="window.location.href='/gold/cave';">Find Gold!</button>
				</div>
				<div class="col-2 d-flex flex-column m-1 p-1 justify-content-center align-items-center rounded bg-info">
					<h2>House</h2>
					<p>(earns 2-5 gold)</p>
					<button class="btn btn-success" onclick="window.location.href='/gold/house';">Find Gold!</button>
				</div>
				<div class="col-2 d-flex flex-column m-1 p-1 justify-content-center align-items-center rounded bg-info">
					<h2>Casino!</h2>
					<p>(earns/takes 0-50 gold)</p>
					<button class="btn btn-success" onclick="window.location.href='/gold/casino';">Find Gold!</button>
				</div>
			</div>
			<br>
			<h2>Activities</h2>
			<div class="row">
				<div class="col round bg-secondary">
					<c:forEach var="event" items="${ events }">
						<p>${ event }</p>
					</c:forEach>
					<p>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae quaerat rerum possimus. Quam maiores soluta a reiciendis nisi quaerat nihil odit recusandae fuga aliquam repellendus sequi ipsa sapiente! Perspiciatis voluptates.
					</p>
					<p>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae quaerat rerum possimus. Quam maiores soluta a reiciendis nisi quaerat nihil odit recusandae fuga aliquam repellendus sequi ipsa sapiente! Perspiciatis voluptates.
					</p>
					<p>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestiae quaerat rerum possimus. Quam maiores soluta a reiciendis nisi quaerat nihil odit recusandae fuga aliquam repellendus sequi ipsa sapiente! Perspiciatis voluptates.
					</p>
				</div>
			</div>

		</div>
	</main>


    <!-- ---- JAVASCRIPT LINKS ---------------------------- -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</body>