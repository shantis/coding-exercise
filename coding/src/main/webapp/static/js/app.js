var app = angular.module('userApp', []);
app.controller('userCtrl', function ($scope, userService) {
	$scope.user = {
		'id': null,
		'username': '',
		'address': ''
	};
	$scope.users = [];

	$scope.updateUser = function () {
		userService.updateUser($scope.user)
		.then(
			$scope.getAllUsers,
			function (errResponse) {
			console.error('Error while updating User');
		});
	}
	$scope.getAllUsers = function () {
		userService.getAllUsers()
		.then(
			function (response) {
			$scope.users = response.data;
		},
			function (errResponse) {
			console.error('Error while getting all Users');
		});
	}

	$scope.Reset = function () {
		$scope.user = {
			username: '',
			address: '',
			email: ''
		};
		$scope.myForm.$setPristine(); //reset Form
	}
	$scope.Edit = function (user, id) {
		user.id = id;
		for (var i = 0; i < $scope.users.length; i++) {
			if ($scope.users[i].id === id) {
				$scope.user = angular.copy($scope.users[i]);
				break;
			}
		}
	}
  $scope.Remove = function (id) {
		userService.deleteUser(id)
		.then(
			$scope.getAllUsers,
			function (errResponse) {
			console.error('Error while Deleting User');
		});
	}
	$scope.getAllUsers();
});
app.service("userService", ["$http", "$q", function ($http, $q) {
			var RESTAPIURL = 'http://localhost/coding';

			this.getAllUsers = function () {
				var deferred = $q.defer();
				$http({
					method: "get",
					url: RESTAPIURL + "/users"
				}).then(function (response) {
					deferred.resolve(response);
				},
					function (errResponse) {
					console.error('Error while deleting User');
					deferred.reject(errResponse);
				});
				return deferred.promise;
			};

			this.updateUser = function (user) {
				var deferred = $q.defer();
				$http({
					method: "post",
					url: RESTAPIURL + "/user",
					data: user
				}).then(function (response) {
					deferred.resolve(response.data);
				},
					function (errResponse) {
					console.error('Error while creating/updating User');
					deferred.reject(errResponse);
				});
				return deferred.promise;
			};
      this.deleteUser = function (id) {
				var deferred = $q.defer();
				$http({
					method: "delete",
					url: RESTAPIURL + "/user/" + id
				}).then(function (response) {
					deferred.resolve(response.data);
				},
					function (errResponse) {
					console.error('Error while deleting User in angular service');
					deferred.reject(errResponse);
				});
				return deferred.promise;
			};
		}
	]);
