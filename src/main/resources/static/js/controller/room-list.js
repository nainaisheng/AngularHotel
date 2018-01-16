

//
// app.controller('RoomListCtrl', ['$scope', 'Room',
//         function ($scope, Room) {
//             $scope.rooms = Room.query();
//             console.log($scope.rooms);
//             $scope.orderProp = 'price';
//             console.log($scope.orderProp);
//
//         }
//     ]);
app.controller('RoomListCtrl', function ($rootScope, $scope, Room) {
        //强数据放在全局下方便其他的controller使用
        $rootScope.rooms = Room.query();
        // console.log($scope.rooms);
        $scope.orderProp = 'price';
        // console.log($scope.orderProp);

    }
);
// app.controller('RoomListCtrl', ['$scope', '$resource', function ($scope, $resource) {
//     $scope.rooms =  $resource('rooms/:roomId.json', {}, {
//         query: {
//             method: 'GET',
//             params: {roomId: 'rooms'},
//             isArray: true
//         }
//     }).query();
//     console.log($scope.rooms);
// }]);
