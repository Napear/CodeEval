import re
import sys

test_cases = open(sys.argv[1], 'r')
for test in test_cases:
    cleaned = re.compile('[A-Za-z]+').findall(test)
    print ' '.join(map(str, [x.lower() for x in cleaned]))
test_cases.close()
