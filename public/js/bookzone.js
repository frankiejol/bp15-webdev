angular.module("bookzone.App",[])
 
.controller("buyCtrl",[ '$scope', '$http', function($scope, $http) {
    $scope.show_articles_list=false;
    $scope.show_article=false;
        $scope.section= 'hola';
        $http.get('/categories.json').then(function(response) {
            $scope.categories = response.data;
        });
    
        $scope.loadArticles=function() {
            $http.get('/articles_list/'+$scope.id_category+'.json').then(function(response) {
                $scope.articles = response.data;
                $scope.show_articles_list=true;
            });
        }

        $scope.showArticle=function() {
            $http.get('/article/'+$scope.id_article+'.json').then(function(response) {
                $scope.article = response.data;
                $scope.show_article=true;
            });
        }
}])

.directive("solShowBuy",function() {
  return {
    restrict: "E",
    templateUrl: '/templates/buy.html',
  };
})
