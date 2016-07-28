<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>${tdefs.project_long_description}</title>
		<link rel="shortcut icon" href="favicon.ico"/>
		<meta name="Description" content="${tdefs.project_long_description}"/>
		<meta name="Keywords" content="${tdefs.personal_fullname}, ${tdefs.personal_slug}, ${tdefs.project_name}, ${', '.join(tdefs.project_keywords)}"/>
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<!-- angular -->
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.min.js"></script>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular-animate.min.js"></script>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular-aria.min.js"></script>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular-messages.min.js"></script>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular-route.min.js"></script>
		<!-- angular material -->
		<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/angular_material/1.1.0-rc.5/angular-material.min.css">
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angular_material/1.1.0-rc.5/angular-material.min.js"></script>
		<!-- material icons from google -->
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

		<!-- our code -->
		<script type="text/javascript" src="index.js"></script>
		<link rel="stylesheet" href="index.css">

		${tdefs.project_google_analytics_snipplet}
	</head>
	<body>
		<div data-ng-app="MyApp" data-ng-cloak layout="column">
			<header>
				<md-toolbar class="md-toolbar" layout="row" layout-padding>
					<md-button class="md-button">
						<i class="material-icons" style="vertical-align: middle;font-size: 34px">home</i>
					</md-button>
					<md-button class="md-button" md-no-ink style="outline:none">
						<span style="text-transform: none; font-size: 34px; vertical-align: middle;">${tdefs.personal_fullname}'s github web site</span>
					</md-button>
				</md-toolbar>
			</header>
			<main flex ng-controller="AppCtrl">
				<!--
				<md-toolbar layout="row" class="md-hue-2">
					<div class="md-toolbar-tools">
						<span>Here are some of my projects at github:</span>
					</div>
				</md-toolbar>
				-->
				<md-content>
					<md-list flex>
						<md-subheader class="md-sticky">Here are some of my projects at github</md-subheader>
						<md-list-item class="md-1-line" ng-repeat="project in projects" ng-click="null">
							<h3>{{ project.name }}</h3>
						</md-list-item>
					</md-list>
				</md-content>
				<!--
				<md-subheader class="md-primary">Here are some of my projects at github:</md-subheader>
				<ul>
					<li><a href="https://veltzer.github.io/demos-linux">demos-linux</a></li>
					<li><a href="https://veltzer.github.io/fastlog">fastlog</a></li>
					<li><a href="https://veltzer.github.io/jschess">jschess</a></li>
					<li><a href="https://veltzer.github.io/openbook">openbook</a></li>
					<li><a href="https://veltzer.github.io/riddling">riddling</a></li>
					<li><a href="https://veltzer.github.io/keynote">keynote</a></li>
					<li><a href="https://veltzer.github.io/slides">slides</a></li>
					<li><a href="https://veltzer.github.io/templar">templar</a></li>
					<li><a href="https://veltzer.github.io/pdmt">pdmt</a></li>
					<li><a href="https://veltzer.github.io/scheduler">scheduler</a></li>
				</ul>
				-->
			</main>
			<footer>
				<md-toolbar class="md-toolbar, md-subhead" md-scroll-shrink layout="row" layout-align="center center">
					<div>
					Copyright ${tdefs.personal_fullname}, ${tdefs.project_copyright_years}, <a href="mailto:${tdefs.personal_email}">${tdefs.personal_email}</a>
					</div>
				</md-toolbar>
			</footer>
		</div>
		<!--
		<p>
			I would appreciate donations so that I could use my time to work on the project of your choice.
			If you do donate and would like me to work on some specific project then be sure to mention them
			in your donation remark on paypal.
		</p>
		${tdefs.project_paypal_donate_button_snipplet}
		-->
	</body>
</html>
