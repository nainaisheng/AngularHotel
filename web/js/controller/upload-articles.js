'use strict';

app.controller('UploadArticlesCtrl',function ($scope, $http, $modal, $log) {


    $scope.areas = [];
    $scope.provinceId = 'aaa';
    $scope.cityId = 'bbb';
    $scope.smallAreas = [];
    $scope.errorMessage = '';//用来显示提示地区未选择
    $scope.data = {};
    $http.get('/area/provinces')
        .success(function (data) {
            if(data.resultCode == 'success'){
                $scope.data = data;
                console.log('请求成功');
                console.log(data.object.type);
                if(data.object.type == '国家级'){
                    $scope.areas = data.object.sonAreaList;//所有的省
                    // console.log($scope.areas);
                }else if(data.object.type == '省级'){
                    console.log(data);
                    $scope.areas[0] = data.object.self;//一个省
                    console.log($scope.areas);
                    $scope.provinceId = data.object.self.id;
                    console.log($scope.provinceId);
                    $scope.smallAreas = data.object.sonAreaList;//这个省下面的市
                }else {//市级
                    console.log(data);
                    console.log(data.object.type);
                    $scope.areas[0] = data.object.parentArea;//市所在的省
                    $scope.provinceId = data.object.parentArea.id;
                    console.log($scope.areas);
                    $scope.smallAreas[0] = data.object.self;
                    $scope.cityId = data.object.self.id;
                    console.log($scope.cityId);
                    console.log($scope.smallAreas);
                }
            }else{
                console.log('fail');
            }
        })
        .error(function () {
            console.log('请求失败');
        });


    // 当选择省份时动态的加载市
    $scope.loadCity = function (id) {
        console.log(id);
        $http.get('/area/city/' +id)
            .success(function (data) {
                $scope.smallAreas = data.object;
                console.log($scope.smallAreas);
            })
            .error(function () {

            })
    };

    $scope.title = '';
    $scope.htmlVariable = '';
    $scope.areaId = '';
    $scope.test = function () {
        if($scope.title === '' || $scope.htmlVariable === ''){

        }
        console.log($scope.title);
        console.log($scope.htmlVariable);


    };

    $scope.clear = function () {

        $scope.title = '';
        $scope.htmlVariable = '';
        console.log($scope.title);
        console.log($scope.htmlVariable);
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

        modalInstance.result.then(function () {

        },function () {
            $log.info('Modal dismissed at :' + new Date());
        });
    };

    $scope.submit = function () {
        console.log($scope.title);
        console.log($scope.htmlVariable);
        var id = '';
        console.log($scope.provinceId);
        console.log($scope.cityId);
        if($scope.provinceId === 'aaa' && $scope.cityId === 'bbb'){
            $scope.errorMessage = '请选择地区！';
            return;
        }else if($scope.provinceId != 'aaa' && $scope.cityId === 'bbb'){
            id = $scope.provinceId;
            console.log(id);
        }else if($scope.provinceId != 'aaa' && $scope.cityId != 'bbb'){
            id = $scope.cityId;
            console.log(id);
        }else{
            $scope.errorMessage = '';
        }
        $http({
            url: '/area/uploadArticles',
            method: 'POST',
            data: {
                'areaId': id,
                'title':  $scope.title ,
                'content': $scope.htmlVariable
            }
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
    }
});