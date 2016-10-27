'use strict';

app.controller('ModalInstanceCtrl4', function ($scope, $http, $modalInstance, $window) {//服务端模式要加dtInstance
    $scope.user = {
        sex: '男'
    };
    $scope.flag = 2;
    // $scope.dtInstance = dtInstance;
    $scope.ok = function () {
        console.log($scope.user);
        // $http({
        //     method: 'post',
        //     url: '',
        //     data: $scope.user
        // }).success(function (resp) {
        //     if(resp.status === 'success'){
        //         $window.alert("添加成功！");
        //         dtInstance.reloadData();
        //     }else{
        //         $window.alert("添加失败！");
        //     }
        // }).error(function () {
        //     $window.alert("系统异常，添加失败！");
        // });

        $modalInstance.close($scope.flag);
    };

    $scope.cancel = function () {
        $modalInstance.dismiss('cancel');
        console.log("发生了什么？");
    };
})
    .controller('ModalInstanceCtrl5', function ($scope, $http, $modalInstance, url1, url2) {

        $scope.flag = 2;
        console.log(url1);
        console.log(url2);
        $http.get(url1)
            .success(function (data) {
                $scope.user = data;
                console.log($scope.user);
            })
            .error(function () {
                $modalInstance.close();
            });

        $scope.ok = function () {
            // console.log(id);
            console.log($scope.user);

            $http({
                method: 'post',
                url: url2,
                data: $scope.user
            }).success(function (data) {
                if(data.resultCode === 'success'){
                    var flag = 1;
                    $modalInstance.close(flag);
                }else {
                    flag = 2;
                    $modalInstance.close(flag);
                }
            }).error(function () {
                var flag = 2;
                $modalInstance.close(flag);
            });

        };

        $scope.cancel = function () {
            $modalInstance.dismiss('cancel');
        };
    })
    .controller('ModalInstanceCtrl6', function ($scope, $modalInstance, $http, selected, message, url) {
        console.log(url);
        $scope.message = message;
        $scope.selected = selected;//要删除的数据
        $scope.flag = 2;//显示问号
        $scope.ok = function () {
            console.log($scope.selected);
            delObj();
        };

        $scope.cancel = function () {
            $modalInstance.dismiss('cancel');
        };

        var delObj = function () {


            if($scope.selected != " "){
                $http({
                    method: 'post',
                    url: url,
                    data: $scope.selected
                }).success(function (data) {
                    if(data.resultCode == 'success'){
                        message = "删除成功！";
                        var flag = 1;
                        $modalInstance.close(flag);

                    }else{
                        message = "删除失败！";
                        flag = 2;
                        $modalInstance.close(flag);
                    }
                }).error(function () {
                    var flag = 2;
                    $modalInstance.close(flag);
                })
            }


        }
    })
    .controller('ModalInstanceCtrl7', function ($scope, $modalInstance, flag) {
        $scope.message = '';
        $scope.flag = flag;
        if($scope.flag === 1) {
            $scope.message = "操作成功！";
        }else {
            $scope.message = "操作失败！";
        }

        $scope.ok = function () {
            console.log($scope.message);
            console.log($scope.flag);
            $modalInstance.close($scope.flag);
        };

        $scope.cancel = function () {
            $modalInstance.dismiss($scope.flag);
        };
    })
    .controller('ModalInstanceCtrl8', function ($scope, $http, $modalInstance, id) {
        $scope.id = id;//要改变管理区域的区域管理员的id
        $scope.provinceId = 'aaa';
        $scope.cityId = 'bbb';
        $scope.areas = [];
        $scope.smallAreas = [];
        $scope.areaId = '';
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
            });

        $scope.loadCity = function (id) {
            console.log(id);
            $http.get('/area/city/'+id)
                .success(function (data) {
                    if(data.resultCode == 'success'){
                        $scope.smallAreas = data.object;
                        console.log($scope.smallAreas);
                    }else{
                        console.log('加载失败');
                    }
                })
                .error(function () {
                    console.log('请求失败');
                })
        };

        $scope.ok = function () {
            if($scope.provinceId == 'aaa' && $scope.cityId == 'bbb'){
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
            console.log($scope.areaId);
             var ids = [$scope.id];
             var areasId = [$scope.areaId];
            console.log(ids);
            console.log(areasId);
            $scope
            $http({
                url: '/admin/areaUpdate',//区域管理员修改负责区域
                method: 'POST',
                data: {
                    'ids': ids,
                    'areasId' : areasId
                }
            })
                .success(function (data) {
                    if(data.resultCode == 'success'){
                        var flag = 1;
                        $modalInstance.close(flag);
                    }else{
                        flag = 2;
                        $modalInstance.close(flag);
                    }
                })
                .error(function () {
                    var flag = 2;
                    $modalInstance.close(flag);
                })
        };

        $scope.cancel = function () {
            $modalInstance.dismiss();
        };
    });
