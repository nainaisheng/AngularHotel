'use strict';

app.controller('AddAdminCtrl', function ($scope, $http , $modal, $log) {

    $scope.userRoleTypeId = 3;//初始化是下拉框是选择的超级管理员
    $scope.user= {};
    $scope.passwordAgain = '';
    $scope.provinceId = 'aaa';
    $scope.cityId = 'bbb';
    $scope.areaId = '';
    $scope.areas = [];
    $scope.smallAreas = [];
    $scope.sex = -1;

    var getProvince = function () {
        $http.get('/area/provinces')
            .success(function (data) {
                if(data.resultCode == 'success') {
                    $scope.areas = data.object.sonAreaList;
                    console.log($scope.areas);
                }else{
                    console.log('请求失败');
                }
            })
            .error(function () {
                console.log('请求失败');
            })
    };

    $scope.flag = true;//初始化时下拉框选择是超级管理员时不能选择省份
    $scope.showArea = function () {
        console.log($scope.userRoleTypeId);
        if($scope.userRoleTypeId == 3){
            $scope.flag = true;
            $scope.areaId = '';
            $scope.provinceId = 'aaa';
            $scope.cityId = 'bbb';
        }else{
            $scope.flag = false;
            getProvince();

        }
    };

    $scope.loadCity = function (id) {
        console.log(id);
        if(id == 'aaa'){
            $scope.cityId = 'bbb';
            return;
        }

        $http.get('/area/city/'+id)
            .success(function (data) {
                if(data.resultCode == 'success') {
                    $scope.smallAreas = data.object;
                    console.log($scope.smallAreas);
                }else{
                    console.log('请求失败');
                    $scope.smallAreas = [];
                    $scope.cityId = 'bbb';
                }

            })
            .error(function () {
                console.log('请求失败');
            })
    };

    $scope.reset = function () {
        $scope.user = {};
        $scope.passwordAgain = '';
        console.log($scope.user);
    };

    $scope.submit = function () {
        console.log($scope.userRoleTypeId);
        if($scope.userRoleTypeId == '请选择'){
            $scope.errorMessage1 = '请选择管理员等级';
            return;
        }
        if($scope.userRoleTypeId == 4 && $scope.provinceId == 'aaa' && $scope.cityId == 'bbb'){
            $scope.errorMessage = '请选择地区';
            return;
        }else if($scope.provinceId != 'aaa' && $scope.cityId == 'bbb'){
            $scope.errorMessage = '';
            $scope.areaId = $scope.provinceId;
        }else if($scope.provinceId != 'aaa' && $scope.cityId != 'bbb'){
            $scope.errorMessage = '';
            $scope.areaId = $scope.cityId;
        }else{
            $scope.errorMessage = '';
        }

        if($scope.sex == -1){
            console.log($scope.sex);
            $scope.errorMessage = '请选择性别';
            return;
        }else{
            $scope.errorMessage = '';
        }
        $scope.user.userRoleTypeId = $scope.userRoleTypeId;
        $scope.user.areaId = $scope.areaId;
        $scope.user.sex = $scope.sex;
        console.log($scope.user);
        $http({
            url: '/admin/add',
            method: 'POST',
            data: $scope.user
        })
            .success(function (data) {
                if(data.resultCode == 'success'){
                    var result = 1;
                    $scope.open(result);
                }else{
                     result = 2;
                    $scope.open(result);
                }
            })
            .error(function () {
                var result = 2;
                $scope.open(result);
            })
    };


    $scope.open = function (result) {
        var modalInstance = $modal.open({
            templateUrl: 'addEnd.html',
            controller: 'ModalInstanceCtrl7',
            size: 'sm',
            resolve:{
                flag: function () {
                    return result;
                }
            }
        });

        modalInstance.result.then(function (flag) {
            if(flag == 1){
                $scope.user = {};
                $scope.passwordAgain = null;
                $scope.userRoleTypeId = 3;
                $scope.provinceId = 'aaa';
                $scope.cityId = 'bbb';
                $scope.smallAreas = [];
                $scope.sex = -1;

            }
        },function (flag) {
            if(flag == 1){
                $scope.user = {};
                $scope.passwordAgain = null;
                $scope.userRoleTypeId = 3;
                $scope.provinceId = 'aaa';
                $scope.cityId = 'bbb';
                $scope.smallAreas = [];
                $scope.sex = -1;
            }
                $log.info('Modal dismissed at :' + new Date());
        });
    };


});