'use strict';

app.controller('AdminCtrl', function ($scope, $localStorage, $rootScope) {
    $rootScope.admin = $localStorage.admin;//用户登录后，本地存储用户信息
    console.log($rootScope.admin);
    $scope.$watch('admin', function (newVal, oldVal) {
        $rootScope.admin = newVal;
        $rootScope.userRoleTypeId = $rootScope.admin.userRoleTypeId;
        if($rootScope.userRoleTypeId == 4){
            $rootScope.areaName = $rootScope.admin.area.areaName;
        }
        console.log($rootScope.userRoleTypeId);

    });
    $scope.clearStorage = function clearStorage() {
        // $localStorage.clear('admin');
        // $localStorage.clear();
        delete $localStorage.admin;
        console.log($scope.admin);//输出0
        console.log($localStorage.admin);//什么都没输出，$localStorage没有admin
    }
});
