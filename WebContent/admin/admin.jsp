<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core'%>
<%@ taglib prefix='sec'
	uri='http://www.springframework.org/security/tags'%>
<html>
<head>
<title>Admin Home</title>
<link rel="stylesheet" href="../resources/css/iti.css" />
<link rel="stylesheet"
	href="../resources/bootstrap-3.3.5/css/bootstrap.min.css" />
<!-- Optional theme -->
<link rel="stylesheet"
	href="../resources/bootstrap-3.3.5/css/bootstrap-theme.min.css" />

<script src="../resources/angularjs/angular.js"></script>

<script src="../resources/angularjs/ui-bootstrap-tpls-0.14.3.min.js"></script>

<script src="../resources/javascript/admin.js"></script>

</head>
<body>
	<div ng-app="adminApp" ng-controller="AdminCtrl" ng-init="">
		<div>
			<!--#include file="include/main_nav.asp"-->
			<div>
				<uib-tabset> 
					<uib-tab heading="User Management">User</uib-tab>
					<uib-tab heading="Product Management"></uib-tab>
				</uib-tabset>
			</div>

		</div>
	</div>
</body>
</html>
