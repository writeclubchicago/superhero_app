(function() {
  "use strict";
  angular.module("app").controller("pageCtrl", function($scope, $http){
  	$scope.fetchData = function() {
  		$http.get("/api/v1/superheros.json").then(function(response) {
  			$scope.superheros = response.data["superheros"];
  		});
  	};

 $scope.toggleVisible = function(superhero) { superhero.nameVisible = !superhero.nameVisible;
  	};
  	window.scope = $scope;
  });
}()); 