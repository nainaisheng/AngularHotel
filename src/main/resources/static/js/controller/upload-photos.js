'use strict';

app.controller( 'UploadPhotosCtrl', function($scope, Upload, $http, $modal, $log){

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

    // $scope.mulImages = [];
    // $scope.watch('files',function () {
    //     $scope.selectImage($scope.files);
    //     console.log("来过吗");
    // });
    // //根据选择的图片来判断 是否为一下子选择了多张
    // //一下子选择多张的数据格式为一个数组中有多个对象，而一次只选择一张的数据格式为一个数组中有一个对象//根据
    // $scope.selectImage = function (files) {
    //     if (!files || !files.length) {
    //         console.log('???0');
    //         return;
    //     }
    //     if (files.length > 1) {
    //         angular.forEach(files, function (item) {
    //             var image = [];
    //             image.push(item);
    //             console.log(item.name);
    //             $scope.mulImages.push(image);
    //         })
    //     } else {
    //         $scope.mulImages.push(files);
    //     }
    // };
    //
    // $scope.myLoad = function () {
    //     if ($scope.mulImages.length === 0) {
    //         console.log('???');
    //         return;
    //
    //     }
    //
    //     var files = $scope.mulImages;
    //
    //     Upload.upload({
    //         url: '/area/uploadPhotos',
    //         data: files
    //     }).success(function (data) {
    //         $scope.hide(data);
    //         console.log('success');
    //     }).error(function () {
    //         console.log('error');
    //     });
    //
    // };

    $scope.submit = function() {
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
        if(!$scope.file){
            $scope.errorMessage = '请选择图片';
            return;
        }else {
            console.log($scope.file);
            $scope.errorMessage = '';
        }
        console.log('到这儿了吗');
        if ($scope.form.file.$valid && $scope.file) {
            $scope.upload($scope.file, id);
            console.log('这里呢1');
            console.log($scope.file.name);
        }
        // console.log($scope.files.length);
        // if($scope.files.length !== 0){
        //     for(var j = 0;j < $scope.files.length; j++){
        //         console.log($scope.files[j].name);
        //     }
        //     $scope.uploadFiles($scope.files);
        //     console.log('这里呢2');
        // }

    };

    $scope.upload = function (file, id) {
        console.log(id);
        var flag = 2;
        Upload.upload({
            url: '/area/uploadPhotos',
            data: {file: file, 'areaId': id}
        }).then(function (data) {
            console.log(data);
            if(data.data.resultCode == 'success'){
                console.log('Success');
                flag = 1;
                $scope.file = '';
                open(flag);
            }else{
                flag = 2;
                open(flag);
            }
        }, function (data) {
            console.log('Error');
            flag = 2;
            open(flag);
        }, function (evt) {
            var progressPercentage = parseInt(100.0 * evt.loaded / evt.total);
            console.log('progress: ' + progressPercentage + '% ' + evt.config.data.file.name);
        });
    };

    $scope.reset = function () {
       $scope.file = '';
    };

    $scope.uploadFiles = function (files) {
        if (files && files.length) {
            for (var i = 0; i < files.length; i++) {
                console.log(files[i].name);
                Upload.upload({
                    url: 'upload/url',
                    data: {file: files[i]}
                }).then(function (resp) {
                    console.log('Success ' + resp.config.data.file.name + 'uploaded. Response: ' + resp.data);
                }, function (resp) {
                    console.log('Error status: ' + resp.status);
                }, function (evt) {
                    var progressPercentage = parseInt(100.0 * evt.loaded / evt.total);
                    console.log('progress: ' + progressPercentage + '% ' + evt.config.data.file.name);
                });
            }
            // or send them all together for HTML5 browsers:
            // Upload.upload({..., data: {file: files}, ...});
        }
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
});