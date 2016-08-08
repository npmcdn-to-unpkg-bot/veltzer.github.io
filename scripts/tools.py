#!/usr/bin/python3

'''
this script will install all the required packages that you need on
ubuntu to compile and work with this package.
'''

###########
# imports #
###########
import subprocess # for check_call, DEVNULL
import os.path # for isfile

##############
# parameters #
##############
# debug?
debug=False

########
# code #
########
if os.path.isfile('packages'):
	if debug:
		print('installing npm packages...')
	packs=open('packages').read().splitlines()
	args=['sudo','apt-get','install','--assume-yes']
	args.extend(packs)
	subprocess.check_call(
		args,
		stdout=subprocess.DEVNULL,
		stderr=subprocess.DEVNULL
	)

if os.path.isfile('package.json'):
	if debug:
		print('installing npm packages...')
	subprocess.check_call([
		'npm',
		'install',
	], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
