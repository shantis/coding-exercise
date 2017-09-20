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
            <h1>Welcome to User Application</h1>
            <div ng-controller="userCtrl">
              <div class="row">
                <div class="col-md-12">
                  <div class="well well-sm">
                    <form name="myForm" class="form-horizontal">
                      <fieldset>
                        <legend class="text-center header">User Information</legend>
                        <div class="form-group">
                          <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-user bigicon"></i></span>
                          <div class="col-md-8">
                            <input ng-model="user.username" id="username" name="username" type="text" placeholder="Enter username" class="form-control"  ng-minlength="5" required>
                            </div>
                            <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.uname.$error.required">This is a required field</span>
                                      <span ng-show="myForm.uname.$error.minlength">Minimum length required is 5</span>
                                      <span ng-show="myForm.uname.$invalid">This field is invalid </span>
                                  </div>
                          </div>
                          <div class="form-group">
                            <span class="col-md-1 col-md-offset-2 text-center"><i class="fa fa-street-view" style="font-size:36px"></i></span>
                            <div class="col-md-8">
                              <input ng-model="user.address" id="address" name="address" type="text" placeholder="Enter full address" class="form-control" ng-minlength="15" required>
                              </div>
                              <div class="has-error" ng-show="myForm.$dirty">
                                      <span ng-show="myForm.uname.$error.required">This is a required field</span>
                                      <span ng-show="myForm.uname.$error.minlength">Minimum length required is 15</span>
                                      <span ng-show="myForm.uname.$invalid">This field is invalid </span>
                                  </div>
                            </div>
                                    <div class="form-group">
                                      <div class="col-md-12 text-center">
                                        <button name="save" value="save" ng-click="updateUser()" class="btn btn-primary btn-lg">Add/Update</button>
                                        <button name="search" value="search" ng-click="Reset()"class="btn btn-primary btn-lg">Reset</button>
                                      </div>
                                    </div>
                                  </form>
                                </div>
                              </div>
                            </div>
<div class="panel panel-default">
              <div class="panel-heading"><span class="lead">List of Users </span></div>
              <div class="tablecontainer">
                  <table class="table table-hover">
                      <thead>
                          <tr>
                              <th>S.No</th>
                              <th>Name</th>
                              <th>Address</th>
                              <th width="20%"></th>
                          </tr>
                      </thead>
                      <tbody>
                          <tr ng-repeat="u in users">
                              <td><span>{{$index + 1}}</span></td>
                              <td><span ng-bind="u.username"></span></td>
                              <td><span ng-bind="u.address"></span></td>
                              <td>
                              <button type="button" ng-click="Edit(u, $index+1)" class="btn btn-success custom-width">Edit</button>
                              <button type="button" ng-click="Remove($index+1)" class="btn btn-danger custom-width">Remove</button>
                              </td>
                          </tr>
                      </tbody>
                  </table>
              </div>
                          </div>
                        </div>
                      </body>
                    </html>