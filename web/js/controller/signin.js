'use strict';

//signin controller
app.controller('SigninFormCtrl',['$scope', '$http', '$state', '$localStorage', '$rootScope',
    function ($scope, $http, $state, $localStorage, $rootScope) {
    $scope.user = {};
    $rootScope.$storage = $localStorage.$default({
        admin: {}
    });
    $scope.authError = null;
    $scope.login = function () {
      /*  $http.get('api/signin.json')
            .success(function (response) {
                console.log(response);
                console.log(response.user);
                if(response.user.loginName === $scope.user.username && response.user.loginpPassword === $scope.user.password){
                    // console.log($scope.user);
                    // $scope.user = response.user;
                    // console.log($scope.user);
                    $rootScope.$storage.admin = response.user;//用户登录后，将用户信息存储在本地，以达到页面刷新时用户数据不会丢失
                    // console.log($scope.$storage.admin);
                    $state.go('app.dashboard');
                }else {
                    $scope.authError = "用户名或密码错误";
                }
            });*/
        $http({
            url: '/user/login',
            method: 'POST',
            data: $scope.user
        }).success(function (data) {
            if(data.resultCode === 'success'){
                $rootScope.$storage.admin = data.object;
                console.log(data.object);
                $state.go('app.dashboard');
            }else if(data.resultCode === 'exception'){
                $scope.authError = '账户异常,登陆失败!';
            }else {
                $scope.authError = '登录名或密码错误!';
            }
        }).error(function () {
            $scope.authError = '登录失败！'
        })
    };
}]);