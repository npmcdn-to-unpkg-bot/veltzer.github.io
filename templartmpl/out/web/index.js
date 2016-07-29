(function() {
	'use strict';
	var app=angular.module('MyApp',['ngMaterial']);
	app.controller('AppCtrl', function($scope) {
		$scope.projects=[
			{
				name: 'demos-linux',
				description: 'this is description'
			},
			{
				name: 'fastlog',
				description: 'this is description'
			},
			{
				name: 'jschess',
				description: 'this is description'
			},
			{
				name: 'openbook',
				description: 'this is description'
			},
			{
				name: 'riddling',
				description: 'this is description'
			},
			{
				name: 'keynote',
				description: 'this is description'
			},
			{
				name: 'slides',
				description: 'this is description'
			},
			{
				name: 'templar',
				description: 'this is description'
			},
			{
				name: 'pdmt',
				description: 'this is description'
			},
			{
				name: 'scheduler',
				description: 'this is description'
			}
		];
	});
})();
