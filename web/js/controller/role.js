'use strict';

app.controller('ManageRoleCtrl',function ($scope, $http, $modal, $log) {

    $scope.userRoleTypeId = 3;//初始化时显示的是超级管理员
    $scope.admins = [];//用来存放获取到的管理员数据(包括超级管理员和区域管理员)
    $scope.url1 = '/superAdmins';
    $scope.url2 = 'areaAdmins';
    $scope.error = '';//用来展示全局错误信息
    $scope.provinceId = 'aaa';
    $scope.cityId = 'bbb';


    var init = function () {
        $scope.admins = [];
        $scope.start = 0;//初始化请求参数
        $scope.maxSize = 10;
        $scope.totalItems = 99;
        $scope.currentPage = 1;
        $scope.pager = {
            draw: $scope.currentPage,
            start: $scope.start,
            length: $scope.maxSize
        };
        $scope.x = true;//复选框默认全都选中
        $scope.selected = [];//被选中也就是不需要提交的数据
        $scope.updated = [];//要改变角色的id数组
        for(var i = 0;i < $scope.admins.length; i++){
            $scope.selected[i] = $scope.admins[i].id;
        }
        console.log($scope.selected);
    };

    init();

    console.log($scope.pager);


    var getAdmins = function (url) {
        $http({
            url: url,
            method: 'POST',
            data: $scope.pager
        })
        .success(function (data) {
            if(data.resultCode == 'success'){
                $scope.admins = data.object.data;
                console.log($scope.admins);
                $scope.totalItems = data.recordsTotal;
                for(var i = 0;i < $scope.admins.length; i++){
                    $scope.selected[i] = $scope.admins[i].id;
                }
                console.log($scope.selected);
            }else{
                console.log('加载失败！');
            }
        })
        .error(function () {
            console.log('请求失败！');
        })
    };

    getAdmins($scope.url1);//初始化显示超级管理员数据

    $scope.loadAdmins = function () {
        console.log($scope.userRoleTypeId);
        if($scope.userRoleTypeId == 3){
            init();
            console.log($scope.pager);
            getAdmins($scope.url1);
        }else {
            init();
            console.log($scope.pager);
            getAdmins($scope.url2);
        }

    };

    $scope.manageAreaName = '';




    $scope.getData = function () {
        console.log($scope.currentPage);
        $scope.start = ($scope.currentPage - 1) * 10 + 1;
        console.log($scope.start);
        $scope.pager = {
            draw: $scope.currentPage,
            start: $scope.start,
            length: $scope.maxSize
        };
        console.log($scope.pager);
        console.log($scope.userRoleTypeId);
        if($scope.userRoleTypeId == 3){
            getAdmins($scope.url1);
        }else {
            getAdmins($scope.url2);
        }
    };

    $scope.provincesId = [];//存放超级管理员变成区域管理员时选择的省id
    $scope.citysId = [];//存放超级管理员变成区域管理员时选择的市id
    $scope.areasId = [];//存放超级管理员变成区域管理员时最终提交的区域id


    $scope.updateSelection = function ($event, id) {
        var checkbox = $event.target;//获取触发事件的对象
        console.log(checkbox.checked);//看点击后是选中还是没有选中
        if($scope.userRoleTypeId == 3){
            if(!checkbox.checked){//点击后是未选中
                var index = $scope.selected.indexOf(id);
                $scope.selected.splice(index,1);
                console.log($scope.selected);
                $scope.updated.push(id);
                $scope.provincesId.push('');
                $scope.citysId.push('');
                console.log($scope.updated);
                console.log($scope.provincesId);
            }else{//点击后选中
                var index1 = $scope.updated.indexOf(id);
                $scope.updated.splice(index1,1);
                $scope.provincesId.splice(index1,1);
                $scope.citysId.splice(index1, 1);
                console.log($scope.updated);
                console.log($scope.provincesId);
                console.log($scope.citysId);
                $scope.selected.push(id);
                console.log($scope.selected);
            }
            if($scope.updated != ''){
                $scope.error = '';
            }
        }
        if($scope.userRoleTypeId == 4){
            if(!checkbox.checked){
                var index2 = $scope.selected.indexOf(id);
                $scope.selected.splice(index2,1);
                console.log($scope.selected);
                $scope.updated.push(id);
                console.log($scope.updated);
            }else{
                var index3 = $scope.updated.indexOf(id);
                $scope.updated.splice(index3,1);
                console.log($scope.updated);
                $scope.selected.push(id);
                console.log($scope.selected);

            }
            if($scope.updated != ''){
                $scope.error = '';
            }
        }

    };

   $scope.getProvince = function () {
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



    //超级管理员在变成区域管理员时要选择地区
    $scope.loadCity = function (id1,id2) {
        console.log(id1);
        console.log(id2);
        var index = $scope.updated.indexOf(id1);//修改的这条数据是对应updated数组里的第几个
        if(id2 == 'aaa'){
            $scope.provincesId[index] = '';
            $scope.citysId[index] = '';//如果未选择省应该置空之前选择的市
            $scope.smallAreas = [];//如果未选择省应该清空市
            console.log($scope.provincesId);
            return;
        }else {
            $scope.provincesId[index] = id2;
            $scope.error = '';
        }
        console.log($scope.provincesId);

        $http.get('/area/city/'+id2)
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

    $scope.change = function (id1, id2) {
        console.log(id1);
        console.log(id2);
        var index = $scope.updated.indexOf(id1);
        if(id2 == 'bbb'){
            $scope.citysId[index] = '';
        }else{
            $scope.citysId[index] = id2;
        }
    };


    var validate = function () {
        for(var i = 0; i < $scope.updated.length; i++){
            if($scope.provincesId[i] == '' && $scope.citysId[i] == ''){
                return false;
            }else if($scope.provincesId[i] != '' && $scope.citysId == ''){
                $scope.areasId[i] = $scope.provincesId[i];
            }else {
                $scope.areasId[i] = $scope.citysId[i];
            }
        }
        return true;
    };

    $scope.open = function (result) {
        var modalInstance = $modal.open({
            templateUrl: 'editEnd.html',
            controller: 'ModalInstanceCtrl7',
            size: 'sm',
            resolve:{
                flag: function () {
                    return result;
                }
            }
        });

        modalInstance.result.then(function (flag) {
            console.log(flag);
            if(flag == 1){
                init();
                $scope.userRoleTypeId = 3;
                getAdmins('/superAdmins');
            }
        },function (flag) {
            console.log(flag);
            if(flag == 1){
                init();
                $scope.userRoleTypeId = 3;
                getAdmins('/superAdmins');
            }
            $log.info('Modal dismissed at :' + new Date());
        });
    };

    $scope.submit = function () {
        if($scope.updated.length == 0){
            $scope.error = '请做出修改';
            return;
        }
        if($scope.userRoleTypeId == 3){
            if(validate()){//都选择了区域验证通过
                console.log($scope.updated);
                console.log($scope.areasId);
                $http({
                    url: '/superToArea',
                    method: 'POST',
                    data: {
                        'ids' : $scope.updated,
                        'areasId' : $scope.areasId
                    }
                })
                    .success(function (data) {
                        if(data.resultCode == 'success'){
                            var result = 1;
                            $scope.open(result);
                        }else {
                            result = 2;
                            $scope.open(result);
                        }
                    })
                    .error(function () {
                        var result = 2;
                        $scope.open(result);
                    })
            }else {//没有选择好区域
                $scope.error = '请选择好区域';
            }
        }

        if($scope.userRoleTypeId == 4){
            $http({
                url: '/areaToSuper',
                method: 'POST',
                data: $scope.updated
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

        }
    };

    $scope.editArea = function (id) {//区域管理员修改管理的区域
        var modalInstance = $modal.open({
            templateUrl: 'editArea.html',
            controller: 'ModalInstanceCtrl8',
            size: 'md',
            resolve:{
                id: function () {
                    return id;
                }
            }
        });

        modalInstance.result.then(function (flag) {
            console.log(flag);
            $scope.open(flag);
        },function (){
            $log.info('Modal dismissed at :' + new Date());
        });
    };


});