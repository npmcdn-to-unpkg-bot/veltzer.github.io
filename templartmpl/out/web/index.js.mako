(function() {
	'use strict';
	var app=angular.module('MyApp',['ngMaterial']);
	app.controller('AppCtrl', function($scope) {
		const gh = new GitHub();
		const me = gh.getUser('${tdefs.github_username}');
		me.listRepos(function(err, repos) {
			$scope.projects=repos;
		});
	});
})();
