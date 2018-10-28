'use strict';

app.controller('EditArticleCtrl', function ($scope, $http, $stateParams, $modal, $log, $state) {

    var id = $stateParams.articleId;

    $scope.article = {};

    var init = function () {
        $http.get('/articles/'+ id)
            .success(function (data) {
                if(data.resultCode == 'success'){
                    console.log(data);
                    $scope.article = data.object;
                }else{
                    console.log('请求失败');
                }
            })
            .error(function () {
                console.log('请求失败');
            });
    };
    init();



    $scope.clear = function () {
        init();
    };

    var open = function (flag) {
        var modalInstance = $modal.open({
            templateUrl: 'uploadEnd.html',
            controller: 'ModalInstanceCtrl7',
            size: 'sm',
            resolve: {
                flag: function () {
                    return flag;
                }
            }
        });

        modalInstance.result.then(function (flag) {
            if(flag == 1){
                $state.go('app.articles.areaArticles');
            }
        },function (flag) {
            if(flag == 1){
                $state.go('app.articles.areaArticles');
            }
            $log.info('Modal dismissed at :' + new Date());
        });
    };

    $scope.submit = function () {
        console.log($scope.article);
        $http({
            url: 'article/edit',
            method: 'POST',
            data: $scope.article
        })
            .success(function (data) {
                if(data.resultCode == 'success'){
                    var flag = 1;
                    open(flag);
                }else {
                    flag = 2;
                    open(flag);
                }
            })
            .error(function () {
                var flag = 2;
                open(flag);
            })
    };

});
