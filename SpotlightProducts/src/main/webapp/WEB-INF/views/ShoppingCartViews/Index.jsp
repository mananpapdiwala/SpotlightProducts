<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>

<head>

<title>Shopping Cart</title>
<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
<spring:url value="/resources/custom.css" var="customCSS"/>
<link href="${customCSS}" rel="stylesheet" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<spring:url value="/resources/AngularJS/angular.js" var="angularJS" />
<spring:url value="/resources/ShoppingCart/app.js" var="appJS" />
<script src="${angularJS}"></script>
<script src="${appJS}"></script>


</head>

<body>
	<div class="container">
		<div class="row">
			<div class="col-xs-offset-2 col-xs-8 col-md-offset-2 col-md-8 login-header">
				<h1>SpotLightProducts.com</h1>
			</div>
			<div class="col-xs-offset-2 col-xs-8 col-md-offset-2 col-md-8">
				<div class="panel panel-info">
					<div class="panel-heading">
						<div class="panel-title">
							<div class="row">
								<div class="col-xs-6">
									<h5>
										<span class="glyphicon glyphicon-shopping-cart"></span>
										Shopping Cart
									</h5>
								</div>
								<div class="col-xs-6">
									<button type="button" class="btn btn-primary btn-sm btn-block">
										<span class="glyphicon glyphicon-share-alt"></span> Continue
										shopping
									</button>
								</div>
							</div>
						</div>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-xs-2">
								<img class="img-responsive" src="http://placehold.it/100x70">
							</div>
							<div class="col-xs-4">
								<h4 class="product-name">
									<strong>Product name</strong>
								</h4>
								<h4>
									<small>Product description</small>
								</h4>
							</div>
							<div class="col-xs-6">
								<div class="col-xs-6 text-right">
									<h6>
										<strong>25.00 <span class="text-muted">x</span></strong>
									</h6>
								</div>
								<div class="col-xs-4">
									<input type="text" class="form-control input-sm" value="1">
								</div>
								<div class="col-xs-2">
									<button type="button" class="btn btn-link btn-xs">
										<span class="glyphicon glyphicon-trash"> </span>
									</button>
								</div>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="col-xs-2">
								<img class="img-responsive" src="http://placehold.it/100x70">
							</div>
							<div class="col-xs-4">
								<h4 class="product-name">
									<strong>Product name</strong>
								</h4>
								<h4>
									<small>Product description</small>
								</h4>
							</div>
							<div class="col-xs-6">
								<div class="col-xs-6 text-right">
									<h6>
										<strong>25.00 <span class="text-muted">x</span></strong>
									</h6>
								</div>
								<div class="col-xs-4">
									<input type="text" class="form-control input-sm" value="1">
								</div>
								<div class="col-xs-2">
									<button type="button" class="btn btn-link btn-xs">
										<span class="glyphicon glyphicon-trash"> </span>
									</button>
								</div>
							</div>
						</div>
						<hr>
						<div class="row">
							<div class="text-center">
								<div class="col-xs-9">
									<h6 class="text-right">Added items?</h6>
								</div>
								<div class="col-xs-3">
									<button type="button" class="btn btn-default btn-sm btn-block">
										Update cart</button>
								</div>
							</div>
						</div>
					</div>
					<div class="panel-footer">
						<div class="row text-center">
							<div class="col-xs-9">
								<h4 class="text-right">
									Total <strong>$50.00</strong>
								</h4>
							</div>
							<div class="col-xs-3">
								<button type="button" class="btn btn-success btn-block">
									Checkout</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>