angular.module("bookzone.App",[])
 
.controller("buyCtrl",[ '$scope', '$http', function($scope, $http) {
    $scope.categorias = 'Bla bla';
}])

.directive("solShowBuy",function() {
  return {
    restrict: "E",
    templateUrl: '/templates/buy.html',
  };
})
