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
import json # for load

##############
# parameters #
##############
# debug?
do_debug=False
do_msg=True

#############
# functions #
#############
def debug(s):
    if do_debug:
        print(s)

def msg(s):
    if do_msg:
        print(s)

########
# code #
########
if os.path.isfile('ubuntu.json'):
    msg('installing packages...')
    with open('ubuntu.json') as f:
        d=json.load(f)
    packs=[p['name'] for p in d['packages']]
    debug(packs)
    args=['sudo','apt-get','install','--assume-yes']
    args.extend(packs)
    subprocess.check_call(
        args,
        stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL,
    )

if os.path.isfile('package.json'):
    msg('installing npm packages...')
    '''
    subprocess.check_call([
        'npm',
        'install',
    ], stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    '''
