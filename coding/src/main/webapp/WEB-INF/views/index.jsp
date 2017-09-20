<!DOCTYOE html>
<html>
  <head>
    <title>
      AngularJS Single Page Address Book Application
    </title>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular-route.min.js"></script>
    <script src="../js/app.js"></script>
    <script src="../js/addressBookServices.js"></script>

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
      <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
          <style>
            .header {
            color: #36A0FF;
            font-size: 27px;
            padding: 10px;
            }

            .bigicon {
            font-size: 35px;
            color: #36A0FF;
            }

          </style>
        </head>
        <body ng-app="AddressBookApp">
          <div class="container">
            <h1>Welcome to Address Book Application</h1>
            <div ng-controller="AddressBookCtrl">
              <div class="row">
                <div class="col-md-12">
                  <div class="well well-sm">
                    <form class="form-horizontal">
                      <fieldset>
                        <legend class="text-center header">Address Book</legend>
                        <div class="form-group">
                          <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                          <div class="col-md-8">
                            <input ng-model="AddressBook.fullname" id="fullname" name="fullname" type="text" placeholder="Enter Full Name" class="form-control">
                            </div>
                          </div>
                          <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-street-view" style="font-size:36px"></i></span>
                            <div class="col-md-8">
                              <input ng-model="AddressBook.street1" id="street1" name="street1" type="text" placeholder="Enter Street 1" class="form-control">
                              </div>
                            </div>
                            <div class="form-group">
                              <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-street-view" style="font-size:36px"></i></span>
                              <div class="col-md-8">
                                <input ng-model="AddressBook.street2" id="street2" name="street2" type="text" placeholder="Enter Street 2" class="form-control">
                                </div>
                              </div>
                              <div class="form-group">
                                <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-address-book" style="font-size:36px"></i></span>
                                <div class="col-md-8">
                                  <input ng-model="AddressBook.city" id="city" name="city" type="text" placeholder="Enter a city" class="form-control">
                                  </div>
                                </div>
                                <div class="form-group">
                                  <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-address-book" style="font-size:36px"></i></span>
                                  <div class="col-md-8">
                                    <input ng-model="AddressBook.state" id="state" name="state" type="text" placeholder="Enter a State" class="form-control">
                                    </div>
                                  </div>
                                  <div class="form-group">
                                    <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-address-book" style="font-size:36px"></i></span>
                                    <div class="col-md-8">
                                      <input ng-model="AddressBook.zipcode" id="zipcode" name="zipcode" type="text" placeholder="Enter zipcode" class="form-control">
                                      </div>
                                    </div>                     
                                    <div class="form-group">
                                      <div class="col-md-12 text-center">
                                        <button name="save" value="save" ng-click="Save()" class="btn btn-primary btn-lg">Save</button>
                                        <button name="search" value="search" ng-click="Search()"class="btn btn-primary btn-lg">Search</button>
                                      </div>
                                    </div>
                                  </form>
                                </div>
                              </div>
                            </div>

                          </div>
                        </div>
                      </body>
                    </html>