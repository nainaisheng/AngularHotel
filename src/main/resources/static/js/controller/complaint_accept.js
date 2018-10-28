'use strict';

app.controller('AcceptComplaintCtrl', function ($scope, Room, $stateParams, $http, $rootScope, $modal, $log, $state) {

    console.log($stateParams.complaintId);//受理的投诉id

    $scope.comp = {};
    $scope.reply = '';
    $scope.error = '';
    $http({//拿出这条投诉的相关信息
        url: '/complaints/' + $stateParams.complaintId,
        method: 'GET'
    })
        .success(function (data) {
            if(data.resultCode == 'success'){
                $scope.comp = data.object;

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