<!DOCTYOE html>
<html>
  <head>
    <title>
      AngularJS Single Page User Application
    </title>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.4/angular-route.min.js"></script>
    <script src="static/js/app.js"></script>

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
        <body ng-app="userApp">
          <div class="container">
            <div ng-controller="userCtrl">
              <legend class="text-center header">User Information</legend>
              <form name="myForm" class="form-horizontal">
                <div class="row">
                  <div class="form-group col-md-12">
                    <label class="col-md-2 control-lable" for="uname">Username</label>
                    <div class="col-md-7">
                      <input ng-model="user.username" id="username" name="username" type="text" placeholder="Enter username" class="form-control"  ng-minlength="5" required>
                        <span style="color:red" ng-show="myForm.username.$dirty && myForm.username.$invalid">This field is invalid.</span>
                        <span style="color:red" ng-show="myForm.username.$error.required">Username is required.</span>
                        <span style="color:red" ng-show="myForm.username.$error.minlength">Minimum length required is 5.</span>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="form-group col-md-12">
                      <label class="col-md-2 control-lable" for="uname">Address</label>
                      <div class="col-md-7">
                        <input ng-model="user.address" id="address" name="address" type="text" placeholder="Enter full address" class="form-control" ng-minlength="15" required>
                          <span style="color:red" ng-show="myForm.address.$dirty && myForm.username.$invalid">This field is invalid.</span>
                          <span style="color:red" ng-show="myForm.address.$error.required">Address is required.</span>
                          <span style="color:red" ng-show="myForm.address.$error.minlength">Minimum length required is 15.</span>
                        </div>
                      </div>
                    </div>
                    <div class="form-group">
                      <div class="col-md-12 text-center">
                        <button name="save" value="save" ng-click="updateUser()" class="btn btn-primary btn-lg">Add/Update</button>
                        <button name="search" value="search" ng-click="Reset()"class="btn btn-primary btn-lg">Reset</button>
                      </div>
                    </div>
                  </form>
                  <div class="panel panel-default">
                    <div class="panel-heading"><span class="lead">List of Users </span></div>
                    <div class="tablecontainer">
                      <table class="table table-hover">
                        <thead>
                          <tr>
                            <th>ID.</th>
                            <th>Name.</th>
                            <th>Address.</th>
                            <th width="20%"></th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr ng-repeat="u in users">
                            <td><span ng-bind="u.id"></span></td>
                            <td><span ng-bind="u.username"></span></td>
                            <td><span ng-bind="u.address"></span></td>
                            <td>
                              <button type="button" ng-click="Edit(u, u.id)" class="btn btn-info custom-width">Edit</button>
                              <button type="button" ng-click="Remove(u.id)" class="btn btn-info custom-width">Remove</button>
                            </td>
                          </tr>
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </body>
          </html>