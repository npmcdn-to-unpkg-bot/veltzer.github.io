<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>${tdefs.project_long_description}</title>
		<link rel="shortcut icon" href="../static/favicon.ico"/>
		<meta name="Description" content="${tdefs.project_long_description}"/>
		<meta name="Keywords" content="${tdefs.personal_fullname}, ${tdefs.personal_slug}, ${tdefs.project_name}, ${', '.join(tdefs.project_keywords)}"/>
		${tdefs.project_google_analytics_snipplet}
	</head>
	<body>
		<h1>Welcome to ${tdefs.personal_fullname}'s github web site</h1>

		<h2>Here are some of my projects at github:</h2>
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
		<p>
			I would appreciate donations so that I could use my time to work on the project of your choice.
			If you do donate and would like me to work on some specific project then be sure to mention them
			in your donation remark on paypal.
		</p>
		${tdefs.project_paypal_donate_button_snipplet}
		<p>
			Copyright ${tdefs.personal_fullname}, ${tdefs.project_copyright_years}
			<a href="mailto:${tdefs.personal_email}">${tdefs.personal_email}</a>
		</p>
	</body>
</html>
