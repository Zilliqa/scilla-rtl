# This script migrates runner tests from Scilla_base to SRTL testsuite.
# 1. Given a test_name and a test_range, the output JSONs will be split
#    into test_name.output_i.json and test_name.ostate_i.json.
# 2. Message and input state JSONs will be copied over with `test_name.` prefix.
#
# So set these two varibles below and run this script in the 
# `tests/runner/test_name` directory of Scilla_base.

import json
import os

# All output files will have prefix `test_name.`
test_name = "accounting_tests"
# [lb, ub)
test_range = range(1, 22)

for i in test_range:
    f = open("output_" + str(i) + ".json")
    j = json.load(f)
    states = j["states"]
    out_text = json.dumps(states, indent=4)

    # Writing states to test_name.ostate_i.json
    with open(test_name + ".ostate_" + str(i) + ".json", "w") as outfile:
        outfile.write(out_text)

    del j["states"]
    j_text = json.dumps(j, indent=4)
    
    # Writing everything else to test_name.output_i.json
    with open(test_name + ".output_" + str(i) + ".json", "w") as outfile:
        outfile.write(j_text)

    # Copy message_i.json to test_name.message_i.json
    os.system("cp message_"  + str(i) + ".json " + test_name + ".message_" + str(i) + ".json")
    # Copy message_i.json to test_name.message_i.json
    os.system("cp state_"  + str(i) + ".json " + test_name + ".state_" + str(i) + ".json")
