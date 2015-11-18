/**
 * 
 */
var app = angular.module('portalApp', ['ui.bootstrap']);
app.controller('PortalCtrl', ['$scope', '$http', '$filter', function ($scope, $http, $filter) {
	$scope.tabs = [
			{
				"title" : "Company Profile",
				"class" : "first",
				"id" : 1,
				"active": true,
				"items": [ {
					"id": 1,
					"name": "Company Overview",
					"url": "resources/partials/overview.html"
				}, {
					"id": 2,
					"name": "Group Structure",
					"url": "resources/partials/structure.html"
				}
				]
			},
			{
				"title" : "Our Service Chain",
				"id" : 2,
				"active": true,
				"items": [ {
					"name": "Product Development"
				}, {
					"name": "Sourcing"
				}, {
					"name": "Logistic"
				}
				]
			},
			{
				"title" : "Product Line",
				"id" : 3,
				"active": true,
				"items": [ 
				]
			},
			{
				"title" : "Future Outlook",
				"id" : 4,
				"active": true,
				"items": [ {
					"name": "Vision"
				}, {
					"name": "New Changes"
				}
				]
			},
			{
				"title" : "Contact US",
				"id" : 5,
				"active": true,
				"items": [ {
					"name": "Contact"
				}
				]
			}
			
	];
	$scope.selectedTab = {
			"title" : "Company Profile",
			"class" : "first",
			"id" : 1,
			"active": true,
			"items": [ {
				"id": 1,
				"name": "Company Overview",
				"url": "resources/partials/overview.html"
			}, {
				"id": 2,
				"name": "Group Structure",
				"url": "resources/partials/structure.html"
			}
			]
		};
	$scope.selectedItem = $scope.selectedTab.items[0];
	$scope.navigate = function( tabId) {
		$scope.selectedTab = $filter('filter')($scope.tabs, {id: tabId})[0];
		$scope.selectedItem = $scope.selectedTab.items[0];
	};
	
	$scope.clickHeaderMenu = function(tabId, itemId) {
		$scope.selectedTab = $filter('filter')($scope.tabs, {id: tabId})[0];
		$scope.selectedItem = $filter('filter')($scope.selectedTab.items, {id: itemId})[0];	
		//alert( tabId +': ' +itemId);
	};
	$http.get("rest/allTopCategory")
    .success(function(response) {
    	$scope.tabs[2].items=response;
    });
}]);