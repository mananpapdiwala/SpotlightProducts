<!DOCTYPE html>
<html>

<head>

<title>Inventory Management</title>
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<spring:url value="/resources/AngularJS/angular.js" var="angularJS" />
<spring:url value="/resources/InventoryManagement/Seller/app.js"
	var="appJS" />
<script src="${angularJS}"></script>
<script src="${appJS}"></script>
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
</style>



</head>

<div class="row">
	<div class="col-xs-8 col-md-offset-4 col-md-4">
		<h1>SpotLightProducts</h1>
	</div>
</div>

<div ng-app="InventoryManagementApp" ng-controller="InventoryManagementCtrl">
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
				id="navBarSearchForm">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="Search">
				</div>
				<button type="button" class="btn btn-primary btn">
					<i class="fa fa-search"></i>
				</button>
			</form>




			<ul class="nav navbar-nav navbar-right">

				<li><button type="button" class="btn btn-primary navbar-btn">
						<i class="fa fa-shopping-cart"></i> Shopping Cart
					</button></li>



				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">User Dropdown <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="#">Dashboard</a></li>
						<li><a href="#">Setting</a></li>
						<li role="separator" class="divider"></li>
						<li><a href="#">Logout</a></li>
					</ul></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
</div>
<!-- /.container-fluid -->
</nav>


<!-- <ul class="nav nav-pills">
  <li role="presentation" class="active"><a href="#">Home</a></li>
  <li role="presentation"><a href="#">Electronics</a></li>
  <li role="presentation"><a href="#">Clothes</a></li>
  <li role="presentation"><a href="#">Movies, Music, Games</a></li>
  <li role="presentation"><a href="#">Books</a></li>
  <li role="presentation"><a href="#">Furniture</a></li>
  <li role="presentation"><a href="#">Home and Garden</a></li>
  <li role="presentation"><a href="#">SpotLightProducts</a></li>
</ul>

<ol class="breadcrumb">
  <li><a href="#">Home</a></li>
</ol> -->


<!-- Page Content -->
<!-- <div class="container"> -->

<div class="row">





	<div class="col-md-offset-1 col-md-8 col-xs-offset-1 col-xs-8">

		<table class="table table-striped">
			<h2>Inventory</h2>
			<thead>
				<tr>
					<th>Product ID</th>
					<th>Product Name</th>
					<th>Quantity</th>
					<th>Price</th>
					<th></th>
				</tr>
			</thead>
			<!-- These are the seller's product -->
			<tbody>
				<tr>
					<th scope="row">22223</th>
					<td>Coffee Maker</td>
					<td>33</td>
					<td>75</td>
					<td><div>
							<button type="button" class="btn btn-primary navbar-btn">
								Edit</button>
							<button type="button" class="btn btn-primary navbar-btn">
								Delete</button>
						</div></td>
				</tr>
				<tr>
					<th scope="row">48862</th>
					<td>Cabbage Cutter</td>
					<td>44</td>
					<td>5</td>
					<td><div>
							<button type="button" class="btn btn-primary navbar-btn">
								Edit</button>
							<button type="button" class="btn btn-primary navbar-btn">
								Delete</button>
						</div></td>
				</tr>
				<tr>
					<th scope="row">33421</th>
					<td>Cake maker</td>
					<td>1000</td>
					<td>1</td>
					<td><div>
							<button type="button" class="btn btn-primary navbar-btn">
								Edit</button>
							<button type="button" class="btn btn-primary navbar-btn">
								Delete</button>
						</div></td>
				</tr>
			</tbody>
		</table>



		<div>
			<button type="button" class="btn btn-primary navbar-btn">
				Add Product</button>
		</div>



	</div>
</div>
<!-- </div> -->






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

</div>

</html>
