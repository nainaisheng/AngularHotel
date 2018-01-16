'use strict';


/**
 * config for the router
 */
angular.module('app')
.run([
    '$rootScope', '$state', '$stateParams', '$localStorage',
    function ($rootScope, $state, $stateParams, $localStorage) {
        $rootScope.$state = $state;
        $rootScope.$stateParams = $stateParams;

        // delete $localStorage.admin;
        $rootScope.admin = $localStorage.admin;
        console.log($rootScope.admin);
        $rootScope.$on('$stateChangeStart', function (event, toState, toParams, fromState, fromParams) {

            // if(toState.name == 'access.signin') return;//如果进入登录界面则允许
            // //如果用户不存在
            //
            // if(!$rootScope.admin || $rootScope.admin == 'undefined' || angular.equals({}, $rootScope.admin)){
            //     event.preventDefault();//取消默认跳转行为
            //     $state.go('access.signin',{from: fromState.name, w: 'notLogin'});
            // }else{
            //     event.preventDefault();
            //     $state.go('app.dashboard', {from: fromState.name, w: 'login'});
            // }
            //
            //
            // if(toState.name == 'app.dashboard') return;//如果进入主页面
            //
            // if(toState.name == 'access.404') return;//如果是发生错误就进入404界面

        });
        $rootScope.$on('$stateChangeError', function (event, toState, toParams, fromState, fromParams) {
            event.preventDefault();
            $state.go('access.404');
        });


    }
])
.config([
    '$stateProvider', '$urlRouterProvider',
    function ($stateProvider, $urlRouterProvider) {

        $urlRouterProvider
            .otherwise('/access/signin');
        $stateProvider
            .state('app',{
                abstract: true,
                url: '/app',
                templateUrl: 'tpl/app.html',
                resolve: {
                    deps: ['uiLoad',
                        function (uiLoad) {
                            return uiLoad.load(['js/controller/admin.js']);
                        }
                    ]
                }
            })
            .state('app.dashboard', {//主页
                url: '/dashboard',
                templateUrl: 'tpl/dashboard.html',
                resolve: {
                    deps: ['$ocLazyLoad',
                        function( $ocLazyLoad ){//oclazyload懒加载：可以在路由切换时方便的加载子模块和依赖资源
                            return $ocLazyLoad.load(['js/controller/chart.js']);
                        }
                    ]
                }
            })
            .state('app.rooms',{
                url: '/rooms',
                templateUrl: 'tpl/rooms.html'
                // resolve: {
                //     deps: ['uiLoad',
                //         function (uiLoad) {
                //             return uiLoad.load(['js/controller/check.js']);
                //         }
                //     ]
                // }
            })
            .state('app.room', {
                url: '/rooms/:roomId',
                templateUrl: 'tpl/room-detail.html',
                resolve: {
                    deps: ['uiLoad',
                        function (uiLoad) {
                            return uiLoad.load(['js/controller/room-detail.js']);
                        }
                    ]
                }
            })
            .state('app.edit',{
                url: 'room/edit/:roomId',
                templateUrl: 'tpl/room-detail.html',
                resolve: {
                    deps: ['uiLoad',
                        function (uiLoad) {
                            return uiLoad.load(['js/controller/room-edit.js']);
                        }]
                }

            })
            .state('access',{
                url: '/access',
                template: '<div ui-view class="fade-in-right-big smooth"></div>'
            })
            .state('access.signin',{
                url: '/signin',
                templateUrl: 'tpl/signin.html',
                resolve: {
                    deps: ['uiLoad',
                        function (uiLoad) {
                            return uiLoad.load(['js/controller/signin.js']);
                        }
                    ]
                }
            })
            .state('access.forgotpwd',{
                url: '/forgotpwd',
                templateUrl: 'tpl/forgotpwd.html'
            })
            .state('access.404', {
                url: '/404',
                templateUrl: 'tpl/404.jsp'
            })
            //users
            .state('app.users', {
                url: '/users',
                template: '<div ui-view></div>'
            })
            .state('app.users.owners', {
                url: '/owners',
                templateUrl: 'tpl/users-owners.html',
                resolve: {
                    deps: ['uiLoad',
                        function (uiLoad) {
                            return uiLoad.load(['js/controller/users-owner.js']);
                        }
                    ]
                }
            })
            .state('app.users.rooms', {
                url: '/rooms/:userId',
                templateUrl: 'tpl/owner-rooms.html',
                resolve: {
                    deps: ['uiLoad',
                        function (uiLoad) {
                            return uiLoad.load(['js/controller/owner-rooms.js']);
                        }]
                }
            })
            .state('app.users.roomDetail',{
                url: '/roomDetail/:roomId',
                templateUrl: 'tpl/owner-room-detail.html',
                resolve: {
                    deps: ['uiLoad',
                        function (uiLoad) {
                            return uiLoad.load(['js/controller/room-detail.js']);
                        }]
                }
            })
            .state('app.users.tenants', {
                url: '/tenants',
                templateUrl: 'tpl/users-tenants.html',
                resolve: {
                    deps: ['uiLoad',
                        function (uiLoad) {
                            return uiLoad.load(['js/controller/users-tenants.js']);
                        }
                    ]
                }
            })
            .state('app.complaints', {
                url: '/complaint',
                template: '<div ui-view></div>'
            })
            .state('app.complaints.solved', {
                url: '/solved',
                templateUrl: 'tpl/complaint_solved.html',
                resolve: {
                    deps: ['uiLoad',
                        function (uiLoad) {
                            return uiLoad.load(['js/controller/complaint_solved.js']);
                        }]
                }
            })
            .state('app.complaints.handing', {
                url: '/handing',
                templateUrl: 'tpl/complaint_handing.html',
                resolve: {
                    deps: ['uiLoad',
                        function (uiLoad) {
                            return uiLoad.load(['js/controller/complaint_handing.js']);
                        }]
                }
            })
            .state('app.complaints.suspending', {
                url: '/suspending',
                templateUrl: 'tpl/complaint_suspending.html',
                resolve: {
                    deps: ['uiLoad',
                        function (uiLoad) {
                            return uiLoad.load(['js/controller/complaint_suspending.js']);
                        }]
                }
            })
            .state('app.complaint', {
                url: '/complaints/:complaintId',
                templateUrl: 'tpl/complaint_detail.html',
                resolve: {
                    deps: ['uiLoad',
                        function (uiLoad) {
                            return uiLoad.load(['js/controller/complaint_detail.js']);
                        }]
                }
            })
            .state('app.acceptComplaint', {
                url: '/acceptComplaint/:complaintId',
                templateUrl: 'tpl/complaint_accept.html',
                resolve: {
                    deps: ['uiLoad',
                        function (uiLoad) {
                            return uiLoad.load(['js/controller/complaint_accept.js']);
                        }]
                }
            })
            .state('app.orders', {
                url: '/orders',
                template: '<div ui-view></div>'
            })
            .state('app.orders.outstanding', {
                url: '/outstanding',
                templateUrl: 'tpl/orders-outstanding.html',
                resolve: {
                    deps: ['uiLoad',
                        function (uiLoad) {
                            return uiLoad.load(['js/controller/order-outstanding.js']);
                        }]
                }
            })
            .state('app.orders.completed', {
                url: '/completed',
                templateUrl: 'tpl/orders-completed.html',
                resolve: {
                    deps: ['uiLoad',
                        function (uiLoad) {
                            return uiLoad.load(['js/controller/order-completed.js']);
                        }]
                }
            })
            .state('app.orders.cancelled', {
                url: '/cancelled',
                templateUrl: 'tpl/orders-cancelled.html',
                resolve: {
                    deps: ['uiLoad',
                        function (uiLoad) {
                            return uiLoad.load(['js/controller/order-cancelled.js']);
                        }]
                }
            })
            .state('app.photos',{
                url: '/photos',
                template: '<div ui-view></div>'
            })
            .state('app.photos.uploadPhotos',{
                url: '/uploadPhotos',
                templateUrl: 'tpl/upload-photos.html',
                resolve: {
                    deps: ['uiLoad',
                        function (uiLoad) {
                            return uiLoad.load(['js/controller/upload-photos.js']);
                        }]
                }
            })
            .state('app.photos.areaPhotos', {
                url: '/areaPhotos',
                templateUrl: 'tpl/area-photos.html',
                resolve: {
                    deps: ['uiLoad',
                        function (uiLoad) {
                            return uiLoad.load(['js/controller/area-photos.js']);
                        }]
                }
            })
            .state('app.articles', {
                url: '/articles',
                template: '<div ui-view></div>'
            })
            .state('app.articles.uploadArticles',{
                url: '/uploadArticles',
                templateUrl: 'tpl/upload-articles.html',
                resolve: {
                    deps: ['uiLoad',
                        function (uiLoad) {
                            return uiLoad.load(['js/controller/upload-articles.js']);
                        }]
                }
            })
            .state('app.articles.areaArticles',{
                url: '/areaArticles',
                templateUrl: 'tpl/area-articles.html',
                resolve: {
                    deps: ['uiLoad',
                        function (uiLoad) {
                            return uiLoad.load(['js/controller/area-articles.js']);
                        }]
                }
            })
            .state('app.articles.article', {
                url: '/:articleId',
                templateUrl: 'tpl/article-detail.html',
                resolve: {
                    deps: ['uiLoad',
                        function (uiLoad) {
                            return uiLoad.load(['js/controller/article-detail.js']);
                        }]
                }
            })
            .state('app.articles.edit', {
                url: '/edit/:articleId',
                templateUrl: 'tpl/article-edit.html',
                resolve: {
                    deps: ['uiLoad',
                        function (uiLoad) {
                            return uiLoad.load(['js/controller/article-edit.js']);
                        }]
                }
            })
            .state('app.system',{
                url: '/system',
                template: '<div ui-view></div>'
            })
            .state('app.system.admin',{
                url: '/admin',
                templateUrl: 'tpl/admin.html',
                resolve: {
                    deps: ['uiLoad',
                        function (uiLoad) {
                            return uiLoad.load(['js/controller/admins.js']);
                        }]
                }
            })
            .state('app.system.addAdmin', {
                url: '/addAdmin',
                templateUrl: 'tpl/add-admin.html',
                resolve: {
                    deps: ['uiLoad',
                        function (uiLoad) {
                            return uiLoad.load(['js/controller/add-admin.js']);
                        }]
                }
            })
            .state('app.system.role', {
                url: '/role',
                templateUrl: 'tpl/role.html',
                resolve: {
                    deps: ['uiLoad',
                        function (uiLoad) {
                            return uiLoad.load(['js/controller/role.js']);
                        }]
                }
            })
    }
]);