#!/usr/bin/python3

'''
this script will install all the required packages that you need on
ubuntu to compile and work with this package.
'''

###########
# imports #
###########
import subprocess # for check_call, DEVNULL

##############
# parameters #
##############
packs=[
	'tidy', # for checking html
	'templar', # for template processing
]
node_packs=[
	'htmlhint', # for htmlhint(1)
	'gh-pages', # for gh-pages(1)
]

########
# code #
########
args=['sudo','apt-get','install','--assume-yes']
args.extend(packs)
subprocess.check_call(args)

for node_pack in node_packs:
	print('getting npm for [{0}]'.format(node_pack))
	subprocess.check_call([
		'npm',
		'--silent',
		'install',
		node_pack,
	], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
