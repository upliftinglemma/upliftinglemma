(function () {
    var Google = angular.module('UpliftingLemma.Google', []);

    Google.controller('cbGPlusController', ['$http', '$scope', '$window',
        function ($http, $scope, $window) {
            $scope.clientID = "379488486717-8cr8prgpa6p73kakfl52fisjlbscq92c";
            $scope.redirectURI = "postmessage";
            $scope.profile = {};

            $scope.$on('event:google-plus-signin-success',
                function (event, authResult) {
                    console.log('Signin success!');

                    $http({
                        method: 'POST',
                        url: '/signin/store',
                        data: $.param({
                            'CSRFToken': $window.CSRFToken,
                            'code': authResult.code
                        }),
                        headers: {
                            'Content-Type': 'application/x-www-form-urlencoded'
                        }
                    }).success(function (data, status, headers, config) {
                        console.log('Store success!');

                        var request = gapi.client.plus.people.get( {'userId' : 'me'} );
                        request.execute(function (profile) {
                            $scope.profile = profile;
                        });
                    }).error(function (data, status, headers, config) {
                        console.log('Store fail!');
                    });
                }
            );

            $scope.$on('event:google-plus-signin-failure',
                function (event, authResult) {
                    console.log('Signin fail!');
                }
            );
        }
    ]);
})();

