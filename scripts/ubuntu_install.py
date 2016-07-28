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

########
# code #
########
args=['sudo','apt-get','install','--assume-yes']
args.extend(packs)
subprocess.check_call(args)

print('installing npm packages...')
subprocess.check_call([
	'npm',
	'install',
], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
