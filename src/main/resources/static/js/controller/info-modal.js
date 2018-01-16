'use strict';

// app.controller('InfoModalCtrl',['$scope', '$modal', '$log',
//     function ($scope, $modal, $log) {
//         $scope.items = ['item1', 'item2', 'item3'];
//         $scope.open = function () {
//             var modalInstance = $modal.open({
//                 templateUrl: 'myModalContent.html',
//                 controller: ModalInstanceCtrl,
//                 resolve: {
//                     items: function () {
//                         return $scope.items;
//                     }
//                 }
//             });
//
//             modalInstance.opened.then(function () {
//                 console.log('Modal is opened');
//             });
//
//             modalInstance.result.then(function (result) {
//                 console.log(result);
//             },function (reason) {
//                 console.log(reason);
//                 $log.info('Modal dimissed at: ' + new Date());
//             });
//         };
//     }
// ])
//
// app.controller('ModalInstanceCtrl', function ($scope, $modalInstance, items) {
//     $scope.items = items;
//     $scope.selected = {
//         item : $scope.items[0]
//     };
//     $scope.ok = function () {
//         $modalInstance.close($scope.selected);
//     };
//     $scope.cancel = function () {
//         $modalInstance.dismiss('cancel');
//     };
// });

app.controller('InfoModalCtrl', function ($scope, $modal, $log) {
    $scope.items = ['mingren', 'zuozhu', 'chutian', 'xiaoying', 'woailuo'];
    $scope.open = function (size) {
        var modalInstance = $modal.open({
            templateUrl: 'myModalContent.html',
            controller: 'ModalInstanceCtrl',
            size: size,
            resolve:{
                items: function () {
                    return $scope.items
                }
            }
        });

        modalInstance.result.then(function (selectedItem) {
            $scope.item = selectedItem;
        },function () {
            $log.info('Modal dismissed at :' + new Date());
        });
    }
})
.controller('ModalInstanceCtrl', function ($scope, $modalInstance, items) {
    $scope.items = items;
    $scope.selected = {
        item: $scope.items[0]
    };
    $scope.ok = function () {
        $modalInstance.close($scope.selected.item);
    };
    $scope.cancel = function () {
        $modalInstance.dismiss('cancel');
    };
});