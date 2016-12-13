'use strict';

app.controller('ComplaintDetailCtrl', function ($scope, Room, $stateParams, $http, $rootScope, $modal, $log, $state) {


    console.log($rootScope.admin.userName);
    console.log($stateParams.complaintId);

    $scope.comp = {};

    $scope.reply = '';//回复
    $scope.error = '';

    $http({
        method: 'GET',
        url: '/complaints/' + $stateParams.complaintId
    })
        .success(function (data) {
            if(data.resultCode == 'success'){
                $scope.comp = data.object;
                $scope.reply = $scope.comp.reply;
                if($scope.comp.complaintStateId == '1'){
                    $scope.complaintState = '已处理';
                }else if($scope.comp.complaintStateId == '2'){
                    $scope.complaintState = '待处理';
                }else {
                    $scope.complaintState = '处理中';
                }
            }

        })
        .error(function () {
            console.log('加载失败');
        });

    $scope.why = function (id) {
        $scope.error = '';
        console.log(id);
        console.log($scope.reply);
        if($scope.reply != ''){
            $http({
                url: '/complaint/editSolved/' + id,
                method: 'POST',
                data: {'reply': $scope.reply}
            })
                .success(function (data) {
                    if(data.resultCode == 'success'){
                        var flag = 1;
                        $scope.open(flag);
                    }else{
                        flag = 2;
                        $scope.open(flag);
                    }
                })
                .error(function () {
                    var flag = 2;
                    $scope.open(flag);
                })
        }else{
            $scope.error = '回复内容不能为空';
        }
    };

    $scope.open = function (flag) {
        console.log(flag);
        var modalInstance = $modal.open({
            templateUrl: 'removeEnd.html',
            controller: 'ModalInstanceCtrl7',
            size: 'sm',
            resolve: {
                flag: function () {
                    return flag
                }
            }
        });

        modalInstance.result.then(function (flag) {

            if(flag === 1){
                console.log("提交成功");
                $state.go('app.complaints.solved');
            }else {
                console.log("提交失败！");
            }
            console.log("结束！");
        },function (flag) {
            console.log("取消");

            if(flag === 1){
                console.log("提交成功");
                $state.go('app.complaints.solved');
            }else {
                console.log("提交失败！");
            }
            $log.info('Modal dismissed at :' + new Date());
        });


    };

    $scope.wait = function (id) {
        console.log(id);
        $scope.reply = '';
        $http({
            url: '/complaint/editHanding/' + id,//将投诉变成已处理
            method: 'GET'
        })
            .success(function (data) {
                if(data.resultCode == 'success'){
                    $state.go('app.complaints.handing');
                }else{
                    $scope.error = '受理失败';
                }
            })
            .error(function () {
                $scope.error = '受理失败';
            })
    }

});