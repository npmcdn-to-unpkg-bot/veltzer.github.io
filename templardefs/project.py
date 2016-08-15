'''
project definitions for templar
'''

def populate(d):
	d.project_name='veltzer.github.io'
	d.project_long_description='Mark Veltzer\'s web site at github'
	d.project_year_started='2014'
	d.project_description='This is my website at github showing some of the results for the various projects'
	d.project_website='https://veltzer.github.io/openbook'
	# keywords to put on html pages or for search, dont put the name of the project or my details
# as they will be added automatically...
	d.project_keywords=[
		'software',
		'git',
		'open source',
		'free source',
		'Mark Veltzer',
		'GNU',
	]
	d.project_paypal_donate_button_id='E3RJEDGT3T32N'
	d.project_google_analytics_tracking_id='UA-80925041-1'

def getdeps():
	return [
		__file__, # myself
	]
