var app = angular.module('AddressBookApp', ['addressBookService']);
app.controller('AddressBookCtrl', function ($scope, addressBookService) {

	$scope.AddressBook = {
		'fullname': 'Shanti Srinivasan',
		'street1': '123 Abc Blvd',
		'street2': '',
		'city': 'Philadelphia',
		'state': 'PA',
		'zipcode': '19107'
	};

	$scope.Save = function () {
		console.log("Calling save function...");
		addressBookService.saveInfo($scope.AddressBook)
		.then(function (userInfo) {}, function (errorMessage) {
			console.log('error occurred while saving address book info', errorMessage);
		});
	}
});
app.service("addressBookService", ["$http", "$q", function ($http, $q) {

			this.saveInfo = function (abook) {
				var deferred = $q.defer();
				$http({
					method: "post",
					url: 'http://localhost' + "/savePersonInfo",
					data: abook
				}).then(function (response) {
					if (response.status == 200) {
						deferred.resolve(response.data);
					} else {
						deferred.reject("Error occurred while saving person info");
					}
				});
				return deferred.promise;
			};
		}
]);
