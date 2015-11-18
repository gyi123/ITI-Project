<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/css/iti.css"/>
<link rel="stylesheet" href="resources/bootstrap-3.3.5/css/bootstrap.min.css"/>
<!-- Optional theme -->
<link rel="stylesheet" href="resources/bootstrap-3.3.5/css/bootstrap-theme.min.css"/>

<script src= "resources/angularjs/angular.js"></script>

<script src="resources/angularjs/ui-bootstrap-tpls-0.14.3.min.js"></script>

<script src="resources/javascript/main.js"></script>

</head>

<body>

<div ng-app="portalApp" ng-controller="PortalCtrl" ng-init=""> 
<div class="header" >
	<div class="logo"></div>
<!--#include file="include/main_nav.asp"-->
	<div id="navHeader" class="nav-tabs">
	 <div class="btn-group tab {{tab.class}}" ng-click="navigate(tab.id)" dropdown is-open="status.isopen" ng-repeat="tab in tabs">
      <button id="single-button" type="button" class="btn btn-primary" dropdown-toggle ng-disabled="disabled">
        {{tab.title}}
      </button>
      <ul class="dropdown-menu" role="menu" aria-labelledby="single-button">
        <li ng-repeat="item in tab.items" role="menuitem"><a href ng-click="clickHeaderMenu(tab.id, item.id)">{{item.name}}</a></li>
      </ul>
    </div>
	
	</div>
</div>
<div id="container">
	<div class="sidebar" ng-include="'resources/partials/sidebar.html'">

    </div>
    <div id="mainbox">
		<ng-include src="selectedItem.url">
		</ng-include>
  	</div>
  	<div class="clear"></div>
</div>
<div id="footer"></div>

</div>

</body>
</html>
