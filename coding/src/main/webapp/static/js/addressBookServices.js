var addressBookServices = angular.module("addressBookService", []);
addressBookServices.service("addressBookService", ["$http", "$q", function ($http, $q) {

			this.saveInfo = function () {
				var deferred = $q.defer();
				$http({
					method: "post",
					url: velaDomain + "/savePersonInfo",
					data: $scope.AddressBook
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
