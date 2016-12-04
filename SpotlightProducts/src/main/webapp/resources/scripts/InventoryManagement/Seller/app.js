var inventoryManagementApp = angular.module("InventoryManagementApp",[])
inventoryManagementApp.controller("InventoryManagementCtrl", function($scope,$location,$http, $rootScope, $timeout){
	$scope.isAlert = false;
	$scope.showAlert = function(){
		$scope.isAlert = true;
	}
	
	$scope.hideAlert = function(){
		$scope.isAlert = false;
	}
	
	$scope.showTable = false;
	
	$scope.getSellerProducts = function(){
		var url = $location.absUrl().replace(window.location.pathname + window.location.hash,'/GetSellerInventoryProducts');
		$http.get(url)
				.success(function(data, status, headers, config){
					if(data.status == "Success"){
						if(data.data.length > 0){
							$scope.sellerProducts = data.data;
							$scope.showTable = true;
							$scope.isEmpty = false;
						}
						else{
							$scope.isEmpty = true;
						}
						
						
					}
					else{
						$scope.showTable = false;
						$scope.alertMessage = data.message;
						$scope.showAlert();
					}
					
				})
				.error(function(data, status, headers, config){
					$scope.alertMessage = "Technical Error. Please contact the customer service.";
					$scope.showAlert();
					$scope.showTable = false;
				});
	}
	
	var url = $location.absUrl().replace(window.location.pathname + window.location.hash,'/GetUniqueUserId');
	$http.get(url)
				.success(function(data, status, headers, config){
					$rootScope.userId = data.data[0];
					$scope.showTable = true;
					$scope.getSellerProducts();
				})
				.error(function(data, status, headers, config){
					$scope.alertMessage = "Technical Error. Please contact the customer service.";
					$scope.showAlert();
					$scope.showTable = false;
				});
	
	$scope.viewProduct = function(productId){
		window.location.href = $location.absUrl().replace(window.location.pathname + window.location.hash,'/ProductDetails?id=')+productId;
	}
	
	$scope.deleteProduct = function(productId){
		$scope.hideAlert();
		var url = 	$location.absUrl().replace(window.location.pathname + window.location.hash, '/POSTRemoveProduct');
		var data = {}
		for (i = 0; i < $scope.sellerProducts.length; i++){
			if($scope.sellerProducts[i].productId == productId){
				data = $scope.sellerProducts[i];
			}
		}
		$http.post(url, data)
							.success(function(data, status, headers, config){
								if(data.status == "Success"){
									for (i = 0; i < $scope.sellerProducts.length; i++){
										if($scope.sellerProducts[i].productId == productId){
											$scope.sellerProducts[i].isDeleted = true;
										}
									}
									$scope.alertMessage = "The Item was successfully deleted";
									$scope.showAlert();
									$timeout(function(){
										$scope.hideAlert();
									}, 3000)
								}
								else{
									$scope.alertMessage = "Technical Error. Please contact the customer service.";
									$scope.showAlert();
								}
							})
							.error(function(data, status, headers, config){
								$scope.alertMessage = "Technical Error. Please contact the customer service.";
								$scope.showAlert();
							});
	
	}
})