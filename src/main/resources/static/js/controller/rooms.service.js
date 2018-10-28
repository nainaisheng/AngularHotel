'use strict';


app.factory('Room', ['$resource', function ($resource) {
        return $resource('rooms/:roomId.json', {}, {
            query: {
                method: 'GET',
                params: {roomId: 'rooms'},
                isArray: true
            }
        })
    }]);
