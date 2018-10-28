'use strict';

app.controller('SetAdminCtrl',
    function ($rootScope, $scope, $http, $modal, $log) {
        $scope.open = function (template, ctrl, size) {
            console.log("进来了没？");
            var modalInstance = $modal.open({
                templateUrl: template,
                controller: ctrl,
                size: size
            });

            modalInstance.result.then(function (flag) {
                var modalInstance = $modal.open({
                    templateUrl: 'opreateEnd.html',
                    controller: 'ModalInstanceCtrl7',
                    size: 'sm',
                    resolve:{
                        flag: function () {
                            return flag
                        }
                    }
                });

                modalInstance.result.then(function () {

                },function () {
                    $log.info('Modal dismissed at :' + new Date());
                });

            },function () {
                $log.info('Modal dismissed at :' + new Date());
            });
        }
    })
    .controller('ModalInstanceCtrl2',
        function ($scope, $rootScope, $http, $modalInstance, $window) {
            $scope.newAdmin = {};
            //从本地缓存去管理员id传到后台取数据
            var flag = 2;
            $http.get('/user/getinfo')
                .success(function (data) {
                    console.log(data);
                    $scope.user = data;
                    console.log($scope.user);
                });
            // $scope.selected = $rootScope.admin.sex;
            // $scope.user = {
            //     id: $rootScope.admin.id,
            //     username: $rootScope.admin.username,
            //     password: $rootScope.admin.password,
            //     sex: $scope.selected
            // };
                $scope.ok = function () {
                    console.log($rootScope.admin);
                    console.log($scope.newAdmin);

                    $http({
                        method: 'post',
                        url: '/user/update',
                        data: $scope.user
                    }).success(function (data) {
                        if(data.resultCode === 'success'){
                            flag = 1;
                            $modalInstance.close(flag);
                        }else {
                            flag = 2;
                            $modalInstance.close(flag);
                        }
                    }).error(function () {
                        flag = 2;
                        $modalInstance.close(flag);
                    });

            };
            $scope.cancel = function () {
                console.log($rootScope.admin);
                console.log($scope.newAdmin);
                $modalInstance.dismiss('cancel');
            };
    })
    .controller('ModalInstanceCtrl3',
        function ($scope, $rootScope, $http, $modalInstance, $window) {
        var flag = 2;
        $scope.password = '';
        $scope.passwordAgain = '';
        $scope.ok = function () {
            console.log($scope.password);
            console.log($scope.passwordAgain);
            console.log($rootScope.admin);
            $http({
                method: 'post',
                url: '/user/editPassword/'+$scope.password
            }).success(function (data) {
                if(data.resultCode === 'success'){
                    flag = 1;
                    $modalInstance.close(flag);
                }else{
                    flag = 2;
                    $modalInstance.close(flag);
                }
            }).error(function () {
                flag = 2;
                $modalInstance.close(flag);
            });
            console.log(flag);
            // $modalInstance.close(flag);
        };
        $scope.cancel = function () {
            $modalInstance.dismiss('cancel');
        };
    });
