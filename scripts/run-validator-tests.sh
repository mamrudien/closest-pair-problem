#!/usr/bin/env bash
echo "Running 1 validator test(s)"
echo "Running 1 validator test(s)" 1> validator-tests.log
echo "Running test #1" 1>> validator-tests.log
echo "Validator comment:" 1>> validator-tests.log
wine files/validator.exe --testset "tests" --group "0" < files/tests/validator-tests/01 2>> validator-tests.log
if [ "$?" -ne "0" ]; then
    echo "Validator returned non-zero exit code for a valid test" 1>> validator-tests.log
    echo "Validator returned non-zero exit code for a valid test. See validator-tests.log for validator comment"
    read
fi
rm -f validator-tests.log
echo "Validator test(s) finished"
