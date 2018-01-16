'use strict';

app.controller('RoomDetailCtrl',function ($scope, Room, $stateParams, $http) {
    $scope.index  = 0;
    // $scope.room = Room.get({roomId: $stateParams.roomId},function (room) {
    //     $scope.image = room.images[0];
    //     $scope.length = room.images.length;
    // });
    $scope.id = '';

    $scope.room = {};
    $http({
        method: 'get',
        url: '/rooms/' + $stateParams.roomId
    })
        .success(function (data) {
            $scope.room = data;
            console.log($scope.room);
            $scope.id = $scope.room.userId;
            console.log($scope.id);
        })
        .error(function () {
            console.log('加载失败！');
        });

    $scope.images = {};
    $http.get('rooms/room.json')
        .success(function (data) {
            $scope.images = data.images;
            $scope.image = $scope.images[0];
            $scope.length = $scope.images.length;
            console.log($scope.images);
            console.log($scope.images[0]);

        })
        .error(function () {
            console.log('拿图片失败');
        });

    console.log($scope.room);
    $scope.setImage = function setImage(i) {
        if(i === 0 && $scope.index>0){
            $scope.index -= 1;
            $scope.image = $scope.images[$scope.index];
            // console.log($scope.index);
            // console.log($scope.image);
        }
        if( i === 0 && $scope.index === 0){
            $scope.image = $scope.images[$scope.length-1];
        }
        if(i === 1 && $scope.index <$scope.length-1){
            $scope.index += 1;
            $scope.image = $scope.images[$scope.index];
            // console.log($scope.index);
            // console.log($scope.image);
        }
        if(i === 1 && $scope.index === ($scope.length -1)){
            $scope.image = $scope.images[0];
        }
        
    };
    
    $scope.setDirection = function setDirection(direct) {
        if(direct === 0){
            $scope.direct = true;
        }else {
            $scope.direct = false;
        }
    };

    // $scope.Supplies = {
    //     'Id': '13534564t',
    //     'IsWifi': 0,
    //     'IsHot': 0,
    //     'IsAirConditoner': 0,
    //     'IsAceBox': 0,
    //     'IsToiletries': 0,
    //     'IsWasher': 0,
    //     'IsTelevision': 0
    // };
});