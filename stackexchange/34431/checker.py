import subprocess
import sys

"""
out = subprocess.check_output(["ruby", "intro.rb"])

output = out.splitlines()
CODE=output.pop()
OUTPUT='\n'.join(output)
"""

CODE = open("packed.rb").read()
OUTPUT = subprocess.check_output(["ruby", "packed.rb"])

#print CODE
print len(CODE)

#######################################################

import re

amountPattern = r'(\d+) (is|are) "(.)"\n'
failed = False

def fail(msg):
    global failed
    failed = True
    print(msg)


class IntrospectionException(Exception):
    pass

def getClaimedAmounts(string, errorOnIs):
    groups = re.findall(amountPattern, string, re.DOTALL)

    for amount, verb, char in groups:
        if verb == 'is':
            if errorOnIs:
                fail('\'1 is "%s"\' is unnecessary' % char)
            elif amount != '1':
                fail('At "%s", %s must use "are"' % (char, amount))
        elif verb == 'are' and amount == '1':
            fail('At "%s", 1 must use "is"' % char)

    amounts = {}
    for amount, verb, char in groups:
        if char in amounts:
            fail('Duplicate "%s" found' % char)
        amounts[char] = int(amount)
    return amounts

def getActualAmounts(string):
    amounts = {}
    for char in string:
        if char in amounts:
            amounts[char] += 1
        else:
            amounts[char] = 1
    return amounts

def compareAmounts(claimed, actual):
    for char in claimed:
        if char not in actual:
            fail('The actual amounts list is missing "%s"' % char)
        elif claimed[char] != actual[char]:
            fail('The amount of "%s" characters is %d, not %d' % (char, actual[char], claimed[char]))
    for char in actual: #loop separately so missing character errors are all found first
        if char not in claimed:
            fail('The claied amounts list is missing "%s"' % char)
        if claimed[char] != actual[char]:
            fail('The amount of "%s" characters is %d, not %d' % (char, actual[char], claimed[char]))

def isCorrect(code, output):
    p1 = r'^My source has (\d+) characters\.\n'
    p2 = r'Besides unquoted numbers, my output has (\d+) characters\.\n'
    p3 = r"It's good to be a program\.$"
    p4 = '%s(%s)*%s(%s)*%s' % (p1, amountPattern, p2, amountPattern, p3)

    for p in [p1, p2, p3, p4]:
        if re.search(p, output, re.DOTALL) == None:
            fail('Did not match the regex "%s"' % p)

    claimedCodeSize = int(re.search(p1, output).groups()[0])
    actualCodeSize = len(code)
    if claimedCodeSize != actualCodeSize:
        fail('The code length is %d, not %d' % (actualCodeSize, claimedCodeSize))

    filteredOutput = re.sub(r'([^"])\d+([^"])', r'\1\2', output)

    splitIndex = re.search(p2, output).start()

    claimedCodeAmounts = getClaimedAmounts(output[:splitIndex], False)
    actualCodeAmounts = getActualAmounts(code)
    compareAmounts(claimedCodeAmounts, actualCodeAmounts)

    claimedOutputAmounts = getClaimedAmounts(output[splitIndex:], True)
    actualOutputAmounts = getActualAmounts(filteredOutput)
    compareAmounts(claimedOutputAmounts, actualOutputAmounts)

    claimedOutputSize = int(re.search(p2, output).groups()[0])
    actualOutputSize = len(filteredOutput)
    if claimedOutputSize != actualOutputSize:
        fail('The output length (excluding unquoted numbers) is %d, not %d' % (actualOutputSize, claimedOutputSize))



def checkCorrectness():
    isCorrect(CODE, OUTPUT)
    if failed:
        print 'Failed!'
    else:
        print 'Everything is correct!'

checkCorrectness()
