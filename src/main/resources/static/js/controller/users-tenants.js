'use strict';

app.controller('FetchDataCtrl', function ($scope, $resource,  $http,  $modal, $log) {

    $scope.orderProp = 'createDate';

        $scope.users = [];
        $scope.start = 0;
        $scope.maxSize = 10;
        $scope.totalItems = 0;
        $scope.currentPage = 1;
        $scope.state = '正常';
        $scope.pager = {
            draw: $scope.currentPage,
            start: $scope.start,
            length: $scope.maxSize
        };

        var init = function () {
            $http({
                url: '/tenants',
                method: 'POST',
                dataType: 'json',
                data: $scope.pager
            })
                .success(function (data) {
                    console.log(data);
                    $scope.users = data.data;
                    $scope.totalItems = data.recordsTotal;
                    angular.forEach($scope.users,function (user) {
                        console.log(user);
                        if(user.userStateId == 1){
                            user.state = '正常';
                        }else if(user.userStateId == 2){
                            user.state = '冻结';
                        }else {
                            user.state = '异常';
                        }
                    });
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

        $scope.state = function (userStateId) {
            if(userStateId == 1){
                $scope.state = '正常';
            }else if(userStateId == 2){
                $scope.state = '冻结';
            }else {
                $scope.state = '异常';
            }
        };

        //复选框
        $scope.selected = []; //复选框被选择的项
        var str = '';
        var f = '';//是否点击了全选，是为a
        $scope.x = false;//默认未选中

        $scope.all = function (c,v) {//全选
            console.log(c);
            if(c==true){
                $scope.x = true;
                for(var i=0;i<v.length;i++){
                    $scope.selected[i] =  v[i].id;
                }
                f = 'a';
            }else{
                $scope.x = false;
                $scope.selected= [];
                f = '';

            }
            console.log(f);
            console.log($scope.selected);
        };

        $scope.select = function (id,x) {//单选或多选
            // if(f == 'a'){//在全选的基础上操作
            //     str = $scope.selected.join(',') ;
            // }
            // if(x == true){//选中
            //     str = str.replace(z + ',', '');//取消选中
            // }
            console.log(f);
            console.log(x);
            if(f == 'a'){//如果是全选状态下
                var index = $scope.selected.indexOf(id);
                $scope.selected.splice(index,1);
            }else{
                if(x == false){//之前就是选中状态
                    var index = $scope.selected.indexOf(id);
                    $scope.selected.splice(index,1);
                }else{//之前是未选中状态
                    $scope.selected.push(id);
                }
            }
            // $scope.selected = (str.substr(0,str.length-1)).split(',');
            console.log($scope.selected);
        };

        $scope.open = function (template, ctrl, size) {
            var modalInstance = $modal.open({
                templateUrl: template,
                controller: ctrl,
                size: size,
                resolve:{
                    message: function () {
                        return $scope.message
                    },
                    flag: function () {
                        return $scope.flag
                    }
                }
            });

            modalInstance.result.then(function () {

            },function () {
                $log.info('Modal dismissed at :' + new Date());
            });
        };



        $scope.user = {};
        $scope.addUser = function (size) {

            console.log("addUser");
            // $scope.user.id = 5;
            // console.log($scope.user);
            // $scope.tenants.push(angular.copy($scope.user));
            //先提交数据到后台进行添加，再重新加载数据带表格，重新渲染
            // $scope.reloadData();重新加载数据

            var modalInstance = $modal.open({
                templateUrl: 'addUser.html',
                controller: 'ModalInstanceCtrl4',
                size: size
                // resolve: {
                //     dtInstance: function () {
                //         return $scope.dtInstance
                //     }
                // }

            });

            modalInstance.result.then(function (flag) {


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
                        console.log("删除成功");
                        // $scope.dtInstance.reloadData();
                    }
                    console.log("结束！");
                },function () {
                    $log.info('Modal dismissed at :' + new Date());
                });
            },function () {
                $log.info('Modal dismissed at :' + new Date());
            });


        };

        $scope.openDelObj = function (template, ctrl, size) {
            var url = '/users/delete';
            var modalInstance = $modal.open({
                templateUrl: template,
                controller: ctrl,
                size: size,
                resolve: {
                    message: function () {
                        return $scope.message
                    },
                    selected: function () {
                        return $scope.selected
                    },
                    url: function () {
                        return url;
                    }
                }
            });

            modalInstance.result.then(function (flag) {

                console.log("什么时候进入这里");

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
                        console.log("删除成功");
                        init();
                    }else {
                        console.log("删除失败！");
                    }
                    console.log("结束！");
                },function (flag) {
                    console.log("取消");

                    if(flag === 1){
                        console.log("删除成功");
                        init();
                    }else {
                        console.log("删除失败！");
                    }
                    $log.info('Modal dismissed at :' + new Date());
                });

            },function () {
                $log.info('Modal dismissed at :' + new Date());
            });
        };

        $scope.deleteSelected = function () {
            if($scope.selected.length == 0){
                $scope.message = '请选择一条数据！';
                $scope.flag = 1;
                $scope.open('myModalContent.html', 'ModalInstanceCtrl', 'sm');
            }else{
                $scope.message = '是否确定删除？';
                $scope.flag = 2;
                $scope.openDelObj('myModalContent.html', 'ModalInstanceCtrl6', 'sm');
            }
            console.log($scope.flag);
            console.log($scope.message);
        };

        // 此外还有个更换请求的数据源的方法$scope.dtInstance.changeData(newSource);

        $scope.editUser = function (id) {
            //先提交数据到到后台修改，然后再重新加载数据，这时候配置信息不变
            // $scope.reloadData();

            var url1 = '/user/' + id;
            var url2 = '/user/update';

            console.log("editUser");
            var modalInstance = $modal.open({
                templateUrl: 'editUser.html',
                controller: 'ModalInstanceCtrl5',
                size: 'lg',
                resolve: {
                    url1: function () {
                        return url1;
                    },
                    url2 : function () {
                        return url2;
                    }
                }

            });

            modalInstance.result.then(function (flag) {
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
                        console.log("删除成功");
                        init();
                    }
                    console.log("结束！");
                },function (flag) {
                    if(flag === 1){
                        console.log("删除成功");
                        init();
                    }
                    $log.info('Modal dismissed at :' + new Date());
                });
                // $scope.dtInstance.reloadData();
            },function () {
                $log.info('Modal dismissed at :' + new Date());
            });


        };

        $scope.removeUser = function (id) {
            // $scope.tenants.splice(index, 1);
            //先提交数据到服务端进行数据删除，然后再重新加载数据到表格
            // $scope.reloadData();
            console.log(id);

            // $http('/**/**?id='+ id)
            //     .success(function (resp) {
            //         if(resp.status === 'success'){
            //                 $scope.message = "删除成功！";
            //         }else {
            //             $scope.message = "删除失败！";
            //                 $scope.flag = 2;
            //         }
            //     })
            //     .error(function () {
            //         $window.alert("系统异常，删除失败！");
            //     })

            var modalInstance = $modal.open({
                templateUrl: 'remove.html',
                controller: 'ModalInstanceCtrl6',
                size: 'sm'

            });

            modalInstance.result.then(function (flag) {
                console.log("removeEnd");
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
                        console.log("删除成功");
                        // $scope.dtInstance.reloadData();
                    }else {
                        console.log("删除失败！");
                    }
                    console.log("结束！");
                },function (flag) {
                    console.log("取消");

                    if(flag === 1){
                        console.log("删除成功");
                        // $scope.dtInstance.reloadData();
                    }else {
                        console.log("删除失败！");
                    }
                    $log.info('Modal dismissed at :' + new Date());
                });
            },function () {
                $log.info('Modal dismissed at :' + new Date());
            });
        };



    });



