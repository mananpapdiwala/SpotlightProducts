<!DOCTYPE html>

<%@page import="java.util.Iterator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>

<title>SpotLightProducts_Main_Page.html</title>
<!-- <link rel="stylesheet" type="text/css" -->
<!-- 	href="bootstrap-3.3.7-dist/css/bootstrap.min.css" /> -->
<!-- <link rel="stylesheet" type="text/css" -->
<!-- 	href="font-awesome-4.7.0/css/font-awesome.min.css" /> -->
<!-- <script src="scripts/jquery-3.1.1.min.js"></script> -->
<!-- <script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script> -->

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>-->
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script
	src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<!--   <![endif] -->



<style>
#navBarSearchForm input[type=text] {
	width: 500px !important;
}

.navbar {
	margin-bottom: 0;
}

.borderless li {
	border-top: none;
}

.welcomeMessage {
	margin-top: 15px;
	color: white;
}
</style>



</head>

<div class="row">
	<div class="col-xs-8 col-md-offset-4 col-md-4">
		<h1 align="center">Books</h1>
	</div>
</div>

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">SP</a>
		</div>

		<form class="navbar-form navbar-left" role="search"
			id="navBarSearchForm" method="POST" action="/search">
			<div class="form-group">
				<input type="text" name="searchQuery" class="form-control"
					placeholder="Search">
			</div>
			<button type="submit" class="btn btn-primary btn">
				<i class="fa fa-search"></i>
			</button>
		</form>




		<ul class="nav navbar-nav navbar-right">

			<li><p class="welcomeMessage">Welcome, ${email}</p></li>

			<li><button type="button" class="btn btn-primary navbar-btn">
					<i class="fa fa-shopping-cart"></i> Shopping Cart
				</button></li>



			<li class="dropdown"><a href="#" class="dropdown-toggle"
				data-toggle="dropdown" role="button" aria-haspopup="true"
				aria-expanded="false">User Dropdown <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="/Dashboard">Dashboard</a></li>
					<li><a href="/ChangePassword">Change Password</a></li>
					<li role="separator" class="divider"></li>
					<li><a href="/Logout">Logout</a></li>
				</ul></li>
		</ul>
	</div>
	<!-- /.navbar-collapse -->
	<!-- /.container-fluid -->
</nav>


<ul class="nav nav-pills">
	<li role="presentation"><a href="/homepage">Home</a></li>
	<li role="presentation"><a href="/filterByElectronics">Electronics</a></li>
	<li role="presentation"><a href="/filterByMobiles">Mobiles</a></li>
	<li role="presentation"><a href="/filterByShoes">Shoes</a></li>
	<li role="presentation"><a href="/filterByWatches">Watches</a></li>
	<li role="presentation" class="active"><a href="/filterByBooks">Books</a></li>
	<li role="presentation"><a href="/filterBySpotlightProducts">SpotLightProducts</a></li>
</ul>

<ol class="breadcrumb">
	<li><a href="#">Home</a></li>
</ol>


<!-- Page Content -->
<div class="container">

	<div class="row">

		<div class="col-md-3">
			<p class="lead">Filter</p>

			<div class="list-group">
				<form action="/sortByBooksPriceAsc">
					<button type="submit"
						class="list-group-item list-group-item-action">Price Low
						to High</button>
				</form>
				<form action="/sortByBooksPriceDesc">
					<button type="submit"
						class="list-group-item list-group-item-action">Price High
						to Low</button>
				</form>
				<form action="/sortByBooksNameAsc">
					<button type="submit"
						class="list-group-item list-group-item-action">A to Z</button>
				</form>
				<form action="/sortByBooksNameDesc">
					<button type="submit"
						class="list-group-item list-group-item-action">Z to A</button>
				</form>
				
			</div>


			<p class="lead">User Review</p>

			<div class="list-group">
				<button type="button" class="list-group-item list-group-item-action">
					<p>
						<span class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span>
					</p>
				</button>
				<button type="button" class="list-group-item list-group-item-action">
					<p>
						<span class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star-empty"></span> & up
					</p>
				</button>
				<button type="button" class="list-group-item list-group-item-action">
					<p>
						<span class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star-empty"></span> <span
							class="glyphicon glyphicon-star-empty"></span> & up
					</p>
				</button>
				<button type="button" class="list-group-item list-group-item-action">
					<p>
						<span class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star-empty"></span> <span
							class="glyphicon glyphicon-star-empty"></span> <span
							class="glyphicon glyphicon-star-empty"></span> & up
					</p>
				</button>
				<button type="button" class="list-group-item list-group-item-action">
					<p>
						<span class="glyphicon glyphicon-star"></span> <span
							class="glyphicon glyphicon-star-empty"></span> <span
							class="glyphicon glyphicon-star-empty"></span> <span
							class="glyphicon glyphicon-star-empty"></span> <span
							class="glyphicon glyphicon-star-empty"></span> & up
					</p>
				</button>
			</div>

		</div>



		<div class="col-md-9">

			<%-- 		<% Iterator itr = {productList}.iterator  %> --%>

			<div class="row">
				<c:forEach items="${productList}" var="product">
					<a
						href="http://localhost:8080/ProductDetails?id=${product.productId}">
						<div class="col-sm-4 col-lg-4 col-md-4">
							<div class="thumbnail">
								<!--  <img src="http://placehold.it/320x150" alt=""> -->
								<img src="/resources/${product.productName}.jpg" alt="">
								<div class="caption">
									<h4 class="pull-right">$${product.price}</h4>
									<h4>${product.productName}</h4>
									<p>${product.description}</p>
								</div>
								<div class="ratings">
									<p class="pull-right">${product.reviewCount}reviews</p>
									<p>

										<span class="glyphicon glyphicon-star"></span> <span
											class="glyphicon glyphicon-star"></span> <span
											class="glyphicon glyphicon-star"></span> <span
											class="glyphicon glyphicon-star"></span> <span
											class="glyphicon glyphicon-star"></span>

									</p>
								</div>
							</div>
						</div>
					</a>
				</c:forEach>

			</div>
		</div>
	</div>

</div>
<!-- /.container -->

<div class="container">

	<hr>

	<!-- Footer -->
	<footer>
		<div class="row">
			<div class="col-lg-12">
				<p>Copyright &copy; SpotlightProducts.com 2016</p>
			</div>
		</div>
	</footer>

</div>
<!-- /.container -->




</html>
