(function() {
	'use strict';
	var app=angular.module('MyApp',['ngMaterial']);
	app.controller('AppCtrl', function($scope) {
		$scope.projects=[
			{
				name: 'demos-linux'
			},
			{
				name: 'fastlog'
			},
			{
				name: 'jschess'
			},
			{
				name: 'openbook'
			},
			{
				name: 'riddling'
			},
			{
				name: 'keynote'
			},
			{
				name: 'slides'
			},
			{
				name: 'templar'
			},
			{
				name: 'pdmt'
			},
			{
				name: 'scheduler'
			}
		];
	});
})();
