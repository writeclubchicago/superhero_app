(function() {
  "use strict";
  angular.module("app").controller("pageCtrl", function($scope, $http){
  	$scope.fetchData = function() {
  		$http.get("/api/v1/superheros.json").then(function(response) {
  			$scope.superheros = response.data["superheros"];
  		});
  	};


$scope.addSuperhero = function(newName) {
  var superhero = 
  {name: newName
};

$http.post('/api/v1/superheros.json', superhero).then (function(response) {
  $scope.superheros.push(superhero);
  $scope.name = "";

}, function (error) {
});
}
 $scope.toggleVisible = function(superhero) { superhero.nameVisible = !superhero.nameVisible;
  	}
  	window.scope = $scope;
  });
})(); 