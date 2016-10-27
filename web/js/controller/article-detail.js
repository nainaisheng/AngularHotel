'use strict';

app.controller('FetchArticleCtrl', function ($scope, $http, $stateParams) {
    var id = $stateParams.articleId;
    $scope.article = {};
    $http.get('/articles/'+ id)
        .success(function (data) {
            if(data.resultCode == 'success'){
                $scope.article = data.object;
            }else{
                console.log('请求失败');
            }
        })
        .error(function () {
            console.log('请求失败');
        })
});
