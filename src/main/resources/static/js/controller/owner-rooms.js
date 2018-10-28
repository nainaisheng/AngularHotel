'use strict';

app.controller('FetchOwnerRoomsCtrl', function ($scope, $http, $stateParams,  $modal, $log) {
    $scope.id = $stateParams.userId;
    $scope.rooms = [];

    console.log($scope.id);//房主的id

    $scope.start = 0;
    $scope.maxSize = 10;
    $scope.totalItems = 0;
    $scope.currentPage = 1;
    $scope.pager = {
        draw: $scope.currentPage,
        start: $scope.start,
        length: $scope.maxSize
    };

    var init = function () {
        $http({
            url: '/owner/rooms/' + $scope.id,
            method: 'POST',
            data: $scope.pager
        })
            .success(function (data) {
                console.log(data);
                $scope.rooms = data.data;
                $scope.totalItems = data.recordsTotal;
                angular.forEach($scope.rooms, function (room) {
                    console.log(room);
                    if(room.roomState == 1){
                        room.type = true;//通过
                        room.typeName = '通过';
                    }else{
                        room.type = false;//未通过
                        room.typeName = '未通过';
                    }
                })
            })
            .error(function () {
                console.log('加载失败');
            })
    };

    init();

    $scope.getData = function () {
        console.log('到这了');
        console.log($scope.currentPage);
        $scope.start = ($scope.currentPage - 1) * 10 + 1;
        console.log($scope.start);
        $scope.pager = {
            draw: $scope.currentPage,
            start: $scope.start,
            length: $scope.maxSize
        };
        console.log($scope.pager);
        init();

    };

    $scope.changeState = function (id, type) {
        console.log(id);
        console.log(type);
        if(type == true){
            var state = 1;
        }else{
            state = 0;
        }
        console.log(state);
        $http({
            url: '/room/edit',//修改房间状态的路径
            method: 'POST',
            data: {
                'roomState': state,
                'id': id
            }
        })
            .success(function (data) {
                if(data.resultCode == 'success'){
                    init();
                }else{
                    console.log('修改失败');
                }
            })
            .error(function () {
                console.log('修改失败');
            })
    };

    //编辑确认框
    $scope.editSelected = function (id, state) {
        var url = '/room/edit';
        var modalInstance = $modal.open({
            templateUrl: 'editRoom.html',
            controller: 'ModalInstanceCtrl10',
            size: 'sm',
            resolve: {
                id: function () {
                    return id;
                },
                url: function () {
                    return url;
                },
                state: function () {
                    return state;
                }
            }

        });

        modalInstance.result.then(function (flag) {
            console.log(flag);
            var modalInstance = $modal.open({
                templateUrl: 'editEnd.html',
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
                    console.log("修改成功");
                    init();
                }
                console.log("结束！");
            },function (flag) {
                if(flag === 1){
                    console.log("修改成功");
                    init();
                }
                $log.info('Modal dismissed at :' + new Date());
            });
            // $scope.dtInstance.reloadData();
        },function () {
            $log.info('Modal dismissed at :' + new Date());
        });
    };


});
