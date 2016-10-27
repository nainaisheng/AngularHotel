'use strict';


/**
 * config for the router
 */
angular.module('app')
.run([
    '$rootScope', '$state', '$stateParams',
    function ($rootScope, $state, $stateParams) {
        $rootScope.$state = $state;
        $rootScope.$stateParams = $stateParams;
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