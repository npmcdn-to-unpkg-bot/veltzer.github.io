(function() {
	'use strict';
	var app=angular.module('MyApp',['ngMaterial']);
	app.controller('AppCtrl', function($scope) {
		const gh = new GitHub();
		const me = gh.getUser('${tdefs.github_username}');
		me.listRepos(function(err, repos) {
			$scope.projects=repos;
			/*
			for (var i=0;i<repos.length;i++) {
				console.log(repos[i].name);
				console.log(repos[i].homepage);
			};
			//console.log(repos);
			*/
		});
	});
})();
