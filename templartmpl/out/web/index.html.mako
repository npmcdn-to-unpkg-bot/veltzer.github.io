<!DOCTYPE html>
<html>
	<head>
		<title>${tdefs.project_long_description}</title>
		<link rel="icon" href="favicon.ico?v=2"/>

		<!-- meta data -->
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="Description" content="${tdefs.project_long_description}"/>
		<meta name="Keywords" content="${tdefs.personal_fullname}, ${tdefs.personal_slug}, ${tdefs.project_name}, ${', '.join(tdefs.project_keywords)}"/>
		<meta name="viewport" content="width=device-width, initial-scale=1">

		${tdefs.project_google_analytics_snipplet}

		<!-- angular -->
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.min.js"></script>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular-animate.min.js"></script>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular-aria.min.js"></script>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular-messages.min.js"></script>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular-route.min.js"></script>
		<!-- angular material -->
		<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/angular_material/1.1.0-rc.5/angular-material.min.css"/>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/angular_material/1.1.0-rc.5/angular-material.min.js"></script>
		<!-- material icons from google -->
		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>

		<!-- github module -->
		<script type="text/javascript" src="https://npmcdn.com/github-api/dist/GitHub.bundle.min.js"></script>

		<!-- our code -->
		<script type="text/javascript" src="index.js"></script>
		<link rel="stylesheet" href="index.css"/>

	</head>
	<body>
		<div data-ng-app="MyApp" data-ng-cloak layout="column" style="min-height: 100vh">
			<header>
				<md-toolbar class="md-toolbar" layout="row" layout-padding>
					<md-button class="md-button">
						<i class="material-icons" style="vertical-align: middle;font-size: 34px">home</i>
					</md-button>
					<div>
						<span style="text-transform: none; font-size: 34px; vertical-align: middle;">${tdefs.personal_fullname}'s github web site</span>
					</div>
					<md-tabs class="md-primary" data-md-center-tabs>
						<md-tab class="md-tab" id="tab1" data-md-active>
							<md-tab-label>about me</md-tab-label>
						</md-tab>
						<md-tab class="md-tab" id="tab2">
							<md-tab-label>github projects</md-tab-label>
						</md-tab>
						<md-tab class="md-tab" id="tab3">
							<md-tab-label>donate</md-tab-label>
						</md-tab>
					</md-tabs>
				</md-toolbar>
			</header>
			<main ng-controller="AppCtrl" layout="row" layout-align="center" style="flex: 1">
				<md-content>
					<md-list>
						<md-list-item class="md-2-line" ng-repeat="project in projects" layout="row" style="align-items: stretch">
							<div class="md-list-item" style="justify-content: center" layout="column">
								<md-icon class="md-avatar" md-svg-src="social-github.svg"/>
							</div>
							<div class="md-list-item-text">
								<h3>{{project.name}}</h3>
								<h4>{{project.description}}</h4>
							</div>
							<div class="md-list-item" layout="column">
								<md-button style="text-transform: none" ng-href="https://github.com/veltzer/{{project.name}}" target="_blank">github</md-button>
								<md-button style="text-transform: none" ng-href="https://veltzer.github.io/{{project.name}}" target="_blank">webpage</md-button>
							</div>
						</md-list-item>
					</md-list>
				</md-content>
			</main>
			<footer>
				<md-toolbar class="md-toolbar md-subhead" md-scroll-shrink layout="row" layout-align="center center">
					<div>
					Copyright ${tdefs.personal_fullname}, ${tdefs.project_copyright_years},
					</div>
					<md-button ng-href="mailto:${tdefs.personal_email}" target="_blank" style="text-transform: none">${tdefs.personal_email}</md-button>
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
