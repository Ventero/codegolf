#!/usr/bin/env python
import sys
try:
    history = sys.argv[1]
except IndexError:
    print 'c'
    sys.exit(0)

if history[:2] == 'SS':
    print 'c'
else:
    print 't'

