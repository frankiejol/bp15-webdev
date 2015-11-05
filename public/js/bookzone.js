angular.module("bookzone.App",[])
 
.controller("buyCtrl",[ '$scope', '$http', function($scope, $http) {
    $scope.init = function(section)
    {
        $scope.section= section;
        $http.get('/categories.json').then(function(response) {
            $scope.categories = response.data;
        });
    
        $scope.loadArticles=function() {
            alert($scope.id_category);
        }
    }
}])

.directive("solShowBuy",function() {
  return {
    restrict: "E",
    templateUrl: '/templates/buy.html',
  };
})
