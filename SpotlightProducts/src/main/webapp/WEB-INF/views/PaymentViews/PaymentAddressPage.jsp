<div class="row">
	<div class="col-xs-8 col-md-offset-4 col-md-4">
		<h1>SpotlightProducts</h1>
	</div>
</div>
<div class="row">
	<div class="col-xs-8 col-md-offset-4 col-md-4">
		<div role="alert" class="alert alert-danger" ng-class="{hideElement: !isAlert, showElement: isAlert}">
  				<button type="button" class="close" aria-label="Close" ng-click="hideAlert()"><span aria-hidden="true">&times;</span></button>
  				{{alertMessage}}
			</div>
		<div class="panel panel-default">


			<div class="row">
				<div class="col-xs-8 col-md-offset-1 col-md-10">


					<form>
						<h3>Personal Information</h3>
						<div class="form-group">
							<label for="Full Name" class="control-label">First Name</label> <input
								type="text" class="form-control" id="Full Name"
								placeholder="Full Name">
						</div>

						<div class="form-group">
							<label for="Address Line 1" class="control-label">Address
								Line 1</label> <input type="text" class="form-control"
								id="Address line 1" placeholder="Address line 1">
						</div>

						<div class="form-group">
							<label for="Address Line 2" class="control-label">Address
								Line 2</label> <input type="text" class="form-control"
								id="exampleInputEmail1" placeholder="Address line 2">
						</div>

						<div class="form-group">
							<label for="City" class="control-label">City</label> <input
								type="text" class="form-control" id="city" placeholder="City">
						</div>

						<div class="form-group">
							<label for="state" class="control-label">State</label>
							<select class="form-control" id="state" name="state" ng-model="payment.country" ng-cloak>
								<option value="">Select Country</option>
								<option ng-repeat="reference in referenceData | filter:{id:10}" value="{{reference.objectId}}">{{reference.name}}</option>
							</select>
						</div>

						<div class="form-group">
							<label for="Country" class="control-label">Country</label> <input
								type="text" class="form-control" id="Country" placeholder="City"
								value="United States">
						</div>

						<div class="form-group">
							<label for="ZIP" class="control-label">State/Province/Region</label>
							<input type="text" class="form-control" id="ZIP"
								placeholder="ZIP">
						</div>

						<label for="Type Of Payment" class="control-label">Type of
							Payment Option</label> </br> <label class="radio-inline"> <input
							type="radio" name="inlineRadioOptions" id="inlineRadio1"
							value="CashOnDelivery"> Cash On Delivery
						</label> <label class="radio-inline"> <input type="radio"
							name="inlineRadioOptions" id="inlineRadio2" value="Credit">
							Credit/Debit Card
						</label> <br> <br>

						<div class="form-group">
							<button type="Submit" class="btn btn-primary">Continue
								to Payment</button>
						</div>
					</form>

					<br> <br>
				</div>
			</div>
		</div>
	</div>
</div>