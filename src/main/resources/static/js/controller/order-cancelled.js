'use strict';

app.controller('FetchOrderCancelledCtrl', function ($scope, $http, $modal, $log) {

    $scope.orderProp = 'id';

    $scope.orders = [];
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
            url: '/orders/cancelled',
            method: 'POST',
            dataType: 'json',
            data: $scope.pager
        })
            .success(function (data) {
                console.log(data);
                $scope.orders = data.data;
                $scope.totalItems = data.recordsTotal;
            })
            .error(function () {
                console.log('请求失败！');
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


});