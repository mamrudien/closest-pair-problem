#!/usr/bin/env bash
#   *** validation ***
scripts/run-validator-tests.sh
scripts/run-checker-tests.sh

#    *** tests ***
mkdir -p tests
echo "Generating test #3"
scripts/gen-input-via-stdout.sh "wine files/testgen.exe -min 2 -max 2 -min-value 0 -max-value 5" "tests/03" 3
echo "Generating test #4"
scripts/gen-input-via-stdout.sh "wine files/testgen.exe -min 2 -max 2 -min-value -5 -max-value 0" "tests/04" 4
echo "Generating test #5"
scripts/gen-input-via-stdout.sh "wine files/testgen.exe -min 2 -max 2 -min-value -5 -max-value 5" "tests/05" 5
echo "Generating test #6"
scripts/gen-input-via-stdout.sh "wine files/testgen.exe -min 2 -max 2 -min-value 0 -max-value 1000000" "tests/06" 6
echo "Generating test #7"
scripts/gen-input-via-stdout.sh "wine files/testgen.exe -min 2 -max 2 -min-value -1000000 -max-value 0" "tests/07" 7
echo "Generating test #8"
scripts/gen-input-via-stdout.sh "wine files/testgen.exe -min 2 -max 2 -min-value -1000000 -max-value 1000000" "tests/08" 8
echo "Generating test #10"
scripts/gen-input-via-stdout.sh "wine files/testgen.exe -min 2 -max 5 -min-value -1000000 -max-value 1000000" "tests/10" 10
echo "Generating test #11"
scripts/gen-input-via-stdout.sh "wine files/testgen.exe -min 5 -max 5 -min-value -1000000 -max-value 1000000" "tests/11" 11
echo "Generating test #12"
scripts/gen-input-via-stdout.sh "wine files/testgen.exe -min 5 -max 100 -min-value -1000000 -max-value 1000000" "tests/12" 12
echo "Generating test #13"
scripts/gen-input-via-stdout.sh "wine files/testgen.exe -min 100 -max 100 -min-value -1000000 -max-value 1000000" "tests/13" 13
echo "Generating test #14"
scripts/gen-input-via-stdout.sh "wine files/testgen.exe -min 100 -max 200 -min-value -1000000 -max-value 1000000" "tests/14" 14
echo "Generating test #15"
scripts/gen-input-via-stdout.sh "wine files/testgen.exe -min 200 -max 200 -min-value -1000000 -max-value 1000000" "tests/15" 15
echo "Generating test #16"
scripts/gen-input-via-stdout.sh "wine files/testgen.exe -min 200 -max 400 -min-value -1000000 -max-value 1000000" "tests/16" 16
echo "Generating test #17"
scripts/gen-input-via-stdout.sh "wine files/testgen.exe -min 400 -max 400 -min-value -1000000 -max-value 1000000" "tests/17" 17
echo "Generating test #18"
scripts/gen-input-via-stdout.sh "wine files/testgen.exe -min 400 -max 800 -min-value -1000000 -max-value 1000000" "tests/18" 18
echo "Generating test #19"
scripts/gen-input-via-stdout.sh "wine files/testgen.exe -min 800 -max 800 -min-value -1000000 -max-value 1000000" "tests/19" 19
echo ""
echo "Generating answer for test #1"
scripts/gen-answer.sh tests/01 tests/01.a "tests" "0"
echo ""
echo "Generating answer for test #2"
scripts/gen-answer.sh tests/02 tests/02.a "tests" "1"
echo ""
echo "Generating answer for test #3"
scripts/gen-answer.sh tests/03 tests/03.a "tests" "1"
echo ""
echo "Generating answer for test #4"
scripts/gen-answer.sh tests/04 tests/04.a "tests" "1"
echo ""
echo "Generating answer for test #5"
scripts/gen-answer.sh tests/05 tests/05.a "tests" "1"
echo ""
echo "Generating answer for test #6"
scripts/gen-answer.sh tests/06 tests/06.a "tests" "1"
echo ""
echo "Generating answer for test #7"
scripts/gen-answer.sh tests/07 tests/07.a "tests" "1"
echo ""
echo "Generating answer for test #8"
scripts/gen-answer.sh tests/08 tests/08.a "tests" "1"
echo ""
echo "Generating answer for test #9"
scripts/gen-answer.sh tests/09 tests/09.a "tests" "1"
echo ""
echo "Generating answer for test #10"
scripts/gen-answer.sh tests/10 tests/10.a "tests" "1"
echo ""
echo "Generating answer for test #11"
scripts/gen-answer.sh tests/11 tests/11.a "tests" "1"
echo ""
echo "Generating answer for test #12"
scripts/gen-answer.sh tests/12 tests/12.a "tests" "2"
echo ""
echo "Generating answer for test #13"
scripts/gen-answer.sh tests/13 tests/13.a "tests" "2"
echo ""
echo "Generating answer for test #14"
scripts/gen-answer.sh tests/14 tests/14.a "tests" "3"
echo ""
echo "Generating answer for test #15"
scripts/gen-answer.sh tests/15 tests/15.a "tests" "3"
echo ""
echo "Generating answer for test #16"
scripts/gen-answer.sh tests/16 tests/16.a "tests" "4"
echo ""
echo "Generating answer for test #17"
scripts/gen-answer.sh tests/17 tests/17.a "tests" "4"
echo ""
echo "Generating answer for test #18"
scripts/gen-answer.sh tests/18 tests/18.a "tests" "5"
echo ""
echo "Generating answer for test #19"
scripts/gen-answer.sh tests/19 tests/19.a "tests" "5"
echo ""

